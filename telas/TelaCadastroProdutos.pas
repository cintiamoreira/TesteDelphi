unit TelaCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  TelaHerancaCadastro, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls, RxToolEdit, cadastroEnum, cProdutos;

type
    TfrmTelaCadastroProdutos = class(TfrmTelaHerancaCadastro)
    edtNome: TEdit;
    edtValor: TEdit;
    edtQuantidade: TEdit;
    lblNome: TLabel;
    lblValor: TLabel;
    lblQuantidade: TLabel;
    lblDataInclusao: TLabel;
    lblDescontoPromocional: TLabel;
    edtDescontoPromocional: TEdit;
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

    oProduto: TProdutos;
    EstadoCadastro: TEstadoCadastro;
    procedure setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
    function getEstadoCadastro: TEstadoCadastro;
    procedure setProduto(const newProduto: TProdutos);
    function getProduto: TProdutos;

  public
    constructor Create (AOwner: TComponent; const estadoInicial: TEstadoCadastro; const produtoInicial: TProdutos);
    { Public declarations }
  published

    property estado : TEstadoCadastro  read getEstadoCadastro  write setEstadoCadastro;
    property produto : TProdutos  read getProduto  write setProduto;
  end;

var
  frmTelaCadastroProdutos: TfrmTelaCadastroProdutos;

implementation

{$R *.dfm}
constructor TfrmTelaCadastroProdutos.Create(AOwner: TComponent; const estadoInicial: TEstadoCadastro; const produtoInicial: TProdutos);
begin
  inherited Create(AOwner);
  EstadoCadastro := estadoInicial;
  oProduto := produtoInicial;
end;

procedure TfrmTelaCadastroProdutos.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaCadastroProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  PrepararModoEdicao();
end;

procedure TfrmTelaCadastroProdutos.btnOKClick(Sender: TObject);
begin
  inherited;
    if EstadoCadastro = cadastroEnum.ecCadastrar then begin
      oProduto.nome := edtNome.Text;
      oProduto.valor := StrToFloat(edtValor.Text);
      oProduto.quantidade := StrToInt(edtQuantidade.Text);
      oProduto.descontoPromocional := StrToInt(edtDescontoPromocional.Text);

      const inserirSucesso = oProduto.Inserir();
      if inserirSucesso then
         ShowMessage('INSERIDO com sucesso')
      else
         ShowMessage('Ocorreu um ERRO');
      Close;
    end
    else if EstadoCadastro = cadastroEnum.ecEditar then begin
      oProduto.nome := edtNome.Text;
      oProduto.valor := StrToFloat(edtValor.Text);
      oProduto.quantidade := StrToInt(edtQuantidade.Text);
      oProduto.descontoPromocional := StrToInt(edtDescontoPromocional.Text);

      const atualizarSucesso = oProduto.Atualizar();
      if atualizarSucesso then
         ShowMessage('ATUALIZADO com sucesso')
      else
         ShowMessage('Ocorreu um ERRO');
      Close;

    end
    else if EstadoCadastro = cadastroEnum.ecVisualizar then Close
end;

procedure TfrmTelaCadastroProdutos.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaCadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  //verificar qual estado inicial para abrir a tela
  if EstadoCadastro = cadastroEnum.ecCadastrar then PrepararModoCadastro()
  else if EstadoCadastro = cadastroEnum.ecEditar then PrepararModoEdicao()
  else if EstadoCadastro = cadastroEnum.ecVisualizar then PrepararModoVisualizacao()
end;

procedure TfrmTelaCadastroProdutos.PrepararModoCadastro();
begin
    EstadoCadastro := ecCadastrar;
    frmTelaCadastroProdutos.Caption := 'Cadastrando novo Produto';

    edtInclusao.Visible := false;
    edtEdicao.Visible := false;
    lblDataEdicao.Visible := false;
    lblDataInclusao.Visible := false;
    btnEditar.Enabled := false;
end;

procedure TfrmTelaCadastroProdutos.PrepararModoEdicao();
begin

    EstadoCadastro := ecEditar;
    frmTelaCadastroProdutos.Caption := 'Editando Produto';
    edtNome.Enabled:= true;
    edtValor.Enabled:= true;
    edtQuantidade.Enabled:= true;
    lblNome.Enabled:= true;
    lblValor.Enabled:= true;
    lblDescontoPromocional.Enabled:= true;
    lblQuantidade.Enabled:= true;
    edtDescontoPromocional.Enabled:= true;
    edtInclusao.Enabled:= false;
    edtEdicao.Enabled:= false;

    btnEditar.Enabled := false;

    edtNome.Text := oProduto.nome;
    edtValor.Text:= FloatToStr(oProduto.valor);
    edtQuantidade.Text:= IntToStr(oProduto.quantidade);
    edtDescontoPromocional.Text:= IntToStr(oProduto.descontoPromocional);
    edtInclusao.Text:= oProduto.dataInclusao;
    edtEdicao.Text:= oProduto.dataEdicao;
end;

procedure TfrmTelaCadastroProdutos.PrepararModoVisualizacao();
begin
    //desabilitar todos os inputs pro ser modo visualizacao
    EstadoCadastro := ecVisualizar;
    frmTelaCadastroProdutos.Caption := 'Visualizando Produto';
    edtNome.Enabled:= false;
    edtValor.Enabled:= false;
    edtQuantidade.Enabled:= false;
    lblNome.Enabled:= false;
    lblValor.Enabled:= false;
    lblQuantidade.Enabled:= false;
    lblDataInclusao.Enabled:= false;
    lblDescontoPromocional.Enabled:= false;
    edtDescontoPromocional.Enabled:= false;
    lblDataEdicao.Enabled:= false;
    edtInclusao.Enabled:= false;
    edtEdicao.Enabled:= false;
    btnEditar.Enabled := True;
    //popular os inputs com as informacoes
    edtNome.Text := oProduto.nome;
    edtValor.Text:= FloatToStr(oProduto.valor);
    edtQuantidade.Text:= IntToStr(oProduto.quantidade);
    edtDescontoPromocional.Text:= IntToStr(oProduto.descontoPromocional);
    edtInclusao.Text:= oProduto.dataInclusao;
    edtEdicao.Text:= oProduto.dataEdicao;
end;



{$REGION 'GETS'}
function TfrmTelaCadastroProdutos.getEstadoCadastro: TEstadoCadastro;
begin
  Result := Self.EstadoCadastro;
end;

function TfrmTelaCadastroProdutos.getProduto: TProdutos;
begin
   Result := Self.oProduto;
end;

{$ENDREGION}

{$REGION 'SETS'}
procedure TfrmTelaCadastroProdutos.setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
begin
  Self.EstadoCadastro := newEstadoCadastro;
end;

procedure TfrmTelaCadastroProdutos.setProduto(const newProduto: TProdutos);
begin
  Self.oProduto := newProduto;
end;

{$ENDREGION}

end.
