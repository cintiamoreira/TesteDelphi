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
    procedure AbrirTelaCadastro(estadoInicial: TEstadoCadastro; clienteInicial: TClientes);
  public
    { Public declarations }
  end;

var
  frmTelaListagemClientes: TfrmTelaListagemClientes;

implementation

{$R *.dfm}


procedure TfrmTelaListagemClientes.AbrirTelaCadastro(
  estadoInicial: TEstadoCadastro; clienteInicial: TClientes);
begin
  frmTelaCadastroClientes := TfrmTelaCadastroClientes.Create(Self, estadoInicial, clienteInicial);
  frmTelaCadastroClientes.ShowModal;
  qryListagem.Refresh;
  frmTelaCadastroClientes.Release;
end;

procedure TfrmTelaListagemClientes.btnCadastrarClick(Sender: TObject);
begin
  inherited;

  var clienteInicial := TClientes.Create(dtmPrincipal.ConexaoDB, qryListagem);
  AbrirTelaCadastro(ecCadastrar, clienteInicial)
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
  AbrirTelaCadastro(ecEditar,clienteInicial);
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
  AbrirTelaCadastro(ecVisualizar, clienteInicial);
end;

end.
