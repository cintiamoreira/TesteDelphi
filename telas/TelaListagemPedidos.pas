unit TelaListagemPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  TelaHerancaListagem, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  TelaCadastroPedidos, cadastroEnum, cPedidos, uDTMConexao;

type
  TfrmTelaListagemPedidos = class(TfrmTelaHerancaListagem)
    qryListagemid: TIntegerField;
    qryListagemid_produto: TIntegerField;
    qryListagemid_cliente: TIntegerField;
    qryListagemqtd_total: TIntegerField;
    qryListagemvalor_total: TFloatField;
    qryListagemvalor_total_desconto: TFloatField;
    qryListagemdata_inclusao: TDateTimeField;
    qryListagemdata_edicao: TDateTimeField;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);

  private
    { Private declarations }

    procedure AbrirTelaCadastro(estadoInicial: TEstadoCadastro; pedidoInicial: TPedidos);

  public
    { Public declarations }
  end;

var
  frmTelaListagemPedidos: TfrmTelaListagemPedidos;

implementation

{$R *.dfm}

procedure TfrmTelaListagemPedidos.AbrirTelaCadastro(
  estadoInicial: TEstadoCadastro; pedidoInicial: TPedidos);
begin
  frmTelaCadastroPedidos := TfrmTelaCadastroPedidos.Create(Self,estadoInicial,pedidoInicial, qryListagem);
  frmTelaCadastroPedidos.ShowModal;
  frmTelaCadastroPedidos.Release;
end;

procedure TfrmTelaListagemPedidos.btnCadastrarClick(Sender: TObject);
begin
  inherited;
  const pedidoInicial = TPedidos.Create(dtmPrincipal.ConexaoDB);
  AbrirTelaCadastro(ecCadastrar, pedidoInicial);
end;

procedure TfrmTelaListagemPedidos.btnDeletarClick(Sender: TObject);
begin
  inherited;
  const pedidoASerDeletado = TPedidos.Create(dtmPrincipal.ConexaoDB);
  pedidoASerDeletado.Selecionar(QryListagem.FieldByName('id').AsInteger);
  const apagarSucesso = pedidoASerDeletado.Apagar();
  if apagarSucesso then
    ShowMessage('Apagado com sucesso')
  else
    ShowMessage('Ocorreu um erro');

    qryListagem.Refresh;
end;

procedure TfrmTelaListagemPedidos.btnEditarClick(Sender: TObject);
begin
  inherited;
  const pedidoInicial = TPedidos.Create(dtmPrincipal.ConexaoDB);
  pedidoInicial.Selecionar(QryListagem.FieldByName('id').AsInteger);
  AbrirTelaCadastro(ecEditar,pedidoInicial);
end;

procedure TfrmTelaListagemPedidos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaListagemPedidos.grdListagemDblClick(Sender: TObject);
begin
  inherited;

  const pedidoInicial = TPedidos.Create(dtmPrincipal.ConexaoDB);
  pedidoInicial.Selecionar(QryListagem.FieldByName('id').AsInteger);
  AbrirTelaCadastro(ecVisualizar,pedidoInicial);

end;


end.
