unit TelaCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  TelaHerancaCadastro, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls, RxToolEdit, cadastroEnum, cFuncionarios;

type
    TfrmTelaCadastroFuncionarios = class(TfrmTelaHerancaCadastro)
    edtNomeCompleto: TEdit;
    edtCPF: TEdit;
    edtSenha: TEdit;
    lblNomeCompleto: TLabel;
    lblCPF: TLabel;
    lblSenha: TLabel;
    lblDataInclusao: TLabel;
    lblDataEdicao: TLabel;
    edtInclusao: TEdit;
    edtEdicao: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrepararModoCadastro();
    procedure PrepararModoEdicao();
    procedure PrepararModoVisualizacao();
    procedure btnEditarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);

  private
    { Private declarations }

    oFuncionario: TFuncionarios;
    EstadoCadastro: TEstadoCadastro;
    procedure setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
    function getEstadoCadastro: TEstadoCadastro;
    procedure setFuncionario(const newFuncionario: TFuncionarios);
    function getFuncionario: TFuncionarios;

  public
    constructor Create (AOwner: TComponent; const estadoInicial: TEstadoCadastro; const funcionarioInicial: TFuncionarios);
    { Public declarations }
  published

    property estado : TEstadoCadastro  read getEstadoCadastro  write setEstadoCadastro;
    property produto : TFuncionarios  read getFuncionario  write setFuncionario;
  end;

var
  frmTelaCadastroFuncionarios: TfrmTelaCadastroFuncionarios;

implementation

{$R *.dfm}
constructor TfrmTelaCadastroFuncionarios.Create(AOwner: TComponent; const estadoInicial: TEstadoCadastro; const funcionarioInicial: TFuncionarios);
begin
  inherited Create(AOwner);
  EstadoCadastro := estadoInicial;
  oFuncionario := funcionarioInicial;
end;

procedure TfrmTelaCadastroFuncionarios.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaCadastroFuncionarios.btnEditarClick(Sender: TObject);
begin
  inherited;
  PrepararModoEdicao();
end;

procedure TfrmTelaCadastroFuncionarios.btnOKClick(Sender: TObject);
begin
  inherited;
    if EstadoCadastro = cadastroEnum.ecCadastrar then begin
      oFuncionario.nomeCompleto := edtNomeCompleto.Text;
      oFuncionario.cpf := edtCPF.Text;
      oFuncionario.senha := edtSenha.Text;

      const inserirSucesso = oFuncionario.Inserir();
      if inserirSucesso then
         ShowMessage('INSERIDO com sucesso')
      else
         ShowMessage('Ocorreu um ERRO');
      Close;
    end
    else if EstadoCadastro = cadastroEnum.ecEditar then begin
      oFuncionario.nomeCompleto := edtNomeCompleto.Text;
      oFuncionario.cpf := edtCPF.Text;
      oFuncionario.senha := edtSenha.Text;

      const atualizarSucesso = oFuncionario.Atualizar();
      if atualizarSucesso then
         ShowMessage('ATUALIZADO com sucesso')
      else
         ShowMessage('Ocorreu um ERRO');
      Close;

    end
    else if EstadoCadastro = cadastroEnum.ecVisualizar then Close
end;

procedure TfrmTelaCadastroFuncionarios.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaCadastroFuncionarios.FormCreate(Sender: TObject);
begin
  inherited;
  //verificar qual estado inicial para abrir a tela
  if EstadoCadastro = cadastroEnum.ecCadastrar then PrepararModoCadastro()
  else if EstadoCadastro = cadastroEnum.ecEditar then PrepararModoEdicao()
  else if EstadoCadastro = cadastroEnum.ecVisualizar then PrepararModoVisualizacao()
end;

procedure TfrmTelaCadastroFuncionarios.PrepararModoCadastro();
begin
    EstadoCadastro := ecCadastrar;
    frmTelaCadastroFuncionarios.Caption := 'Cadastrando novo Funcionario';

    edtInclusao.Visible := false;
    edtEdicao.Visible := false;
    lblDataEdicao.Visible := false;
    lblDataInclusao.Visible := false;
    btnEditar.Enabled := false;
end;

procedure TfrmTelaCadastroFuncionarios.PrepararModoEdicao();
begin

    EstadoCadastro := ecEditar;
    frmTelaCadastroFuncionarios.Caption := 'Editando Funcionario';
    edtNomeCompleto.Enabled:= true;
    edtCPF.Enabled:= true;
    edtSenha.Enabled:= true;
    lblNomeCompleto.Enabled:= true;
    lblCPF.Enabled:= true;
    lblSenha.Enabled:= true;
    edtInclusao.Enabled:= false;
    edtEdicao.Enabled:= false;

    btnEditar.Enabled := false;

    edtNomeCompleto.Text := oFuncionario.nomeCompleto;
    edtCPF.Text:= oFuncionario.cpf;
    edtSenha.Text:= oFuncionario.senha;
    edtInclusao.Text:= oFuncionario.dataInclusao;
    edtEdicao.Text:= oFuncionario.dataEdicao;
end;

procedure TfrmTelaCadastroFuncionarios.PrepararModoVisualizacao();
begin
    //desabilitar todos os inputs pro ser modo visualizacao
    EstadoCadastro := ecVisualizar;
    edtNomeCompleto.Enabled:= false;
    edtCPF.Enabled:= false;
    edtSenha.Enabled:= false;
    lblNomeCompleto.Enabled:= false;
    lblCPF.Enabled:= false;
    lblSenha.Enabled:= false;
    lblDataInclusao.Enabled:= false;
    lblDataEdicao.Enabled:= false;
    edtInclusao.Enabled:= false;
    edtEdicao.Enabled:= false;
    btnEditar.Enabled := True;
    //popular os inputs com as informacoes
    edtNomeCompleto.Text := oFuncionario.nomeCompleto;
    edtCPF.Text:= oFuncionario.cpf;
    edtSenha.Text:= oFuncionario.senha;
    edtInclusao.Text:= oFuncionario.dataInclusao;
    edtEdicao.Text:= oFuncionario.dataEdicao;
end;



{$REGION 'GETS'}
function TfrmTelaCadastroFuncionarios.getEstadoCadastro: TEstadoCadastro;
begin
  Result := Self.EstadoCadastro;
end;

function TfrmTelaCadastroFuncionarios.getFuncionario: TFuncionarios;
begin
   Result := Self.oFuncionario;
end;

{$ENDREGION}

{$REGION 'SETS'}
procedure TfrmTelaCadastroFuncionarios.setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
begin
  Self.EstadoCadastro := newEstadoCadastro;
end;

procedure TfrmTelaCadastroFuncionarios.setFuncionario(const newFuncionario: TFuncionarios);
begin
  Self.oFuncionario := newFuncionario;
end;

{$ENDREGION}

end.

