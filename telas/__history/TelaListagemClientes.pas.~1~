unit TelaListagemClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, TelaCadastroClientes, cadastroEnum, cClientes, uDTMConexao;

type
  TfrmTelaListagemClientes = class(TfrmTelaHerancaListagem)
    qryListagemid: TIntegerField;
    qryListagemnome: TWideStringField;
    qryListagemsobrenome: TWideStringField;
    qryListagemcpf: TWideStringField;
    qryListagemendereco: TWideStringField;
    qryListagemcep: TWideStringField;
    qryListagemtelefone: TWideStringField;
    qryListagemcelular: TWideStringField;
    qryListagemdata_inclusao: TDateTimeField;
    qryListagemdata_edicao: TDateTimeField;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaListagemClientes: TfrmTelaListagemClientes;

implementation

{$R *.dfm}


procedure TfrmTelaListagemClientes.btnCadastrarClick(Sender: TObject);
begin
  inherited;

  var clienteInicial := TClientes.Create(dtmPrincipal.ConexaoDB, qryListagem);
  frmTelaCadastroClientes := TfrmTelaCadastroClientes.Create(Self, ecCadastrar, clienteInicial);
  frmTelaCadastroClientes.ShowModal;
  frmTelaCadastroClientes.Release;
end;

procedure TfrmTelaListagemClientes.btnDeletarClick(Sender: TObject);
begin
  inherited;
  const clienteASerDeletado = TClientes.Create(dtmPrincipal.ConexaoDB, qryListagem);
  clienteASerDeletado.Selecionar(QryListagem.FieldByName('id').AsInteger);
  const apagarSucesso = clienteASerDeletado.Apagar();
  if apagarSucesso then
    ShowMessage('APAGADO com sucesso')
  else
    ShowMessage('Ocorreu um ERRO');

  qryListagem.Refresh;
end;

procedure TfrmTelaListagemClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  var clienteInicial := TClientes.Create(dtmPrincipal.ConexaoDB, qryListagem);
  clienteInicial.Selecionar(QryListagem.FieldByName('id').AsInteger);
  frmTelaCadastroClientes := TfrmTelaCadastroClientes.Create(Self, ecEditar, clienteInicial);
  frmTelaCadastroClientes.ShowModal;
  frmTelaCadastroClientes.Release;
end;

procedure TfrmTelaListagemClientes.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaListagemClientes.grdListagemDblClick(Sender: TObject);
begin
  inherited;

  var clienteInicial := TClientes.Create(dtmPrincipal.ConexaoDB, qryListagem);
  clienteInicial.Selecionar(QryListagem.FieldByName('id').AsInteger);
  frmTelaCadastroClientes := TfrmTelaCadastroClientes.Create(Self, ecVisualizar, clienteInicial);
  frmTelaCadastroClientes.ShowModal;
  frmTelaCadastroClientes.Release;
end;

end.
