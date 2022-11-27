unit TelaListagemProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, TelaCadastroProdutos, uDTMConexao, cadastroEnum, cProdutos;

type
  TfrmTelaListagemProdutos = class(TfrmTelaHerancaListagem)
    qryListagemid: TIntegerField;
    qryListagemnome: TWideStringField;
    qryListagemvalor: TFloatField;
    qryListagemquantidade: TIntegerField;
    qryListagemdesconto_promocional: TIntegerField;
    qryListagemdata_inclusao: TDateTimeField;
    qryListagemdata_edicao: TDateTimeField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  procedure AbrirTelaCadastro(estadoInicial: TEstadoCadastro; produtoInicial: TProdutos);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaListagemProdutos: TfrmTelaListagemProdutos;

implementation

{$R *.dfm}
procedure TfrmTelaListagemProdutos.btnCadastrarClick(Sender: TObject);
begin
  inherited;
  const produtoInicial = TProdutos.Create(dtmPrincipal.ConexaoDB, qryListagem);
  AbrirTelaCadastro(ecCadastrar, produtoInicial);
end;

procedure TfrmTelaListagemProdutos.btnDeletarClick(Sender: TObject);
begin
  inherited;
  const produtoASerDeletado = TProdutos.Create(dtmPrincipal.ConexaoDB, qryListagem);
  produtoASerDeletado.Selecionar(QryListagem.FieldByName('id').AsInteger);
  const apagarSucesso = produtoASerDeletado.Apagar();
  if apagarSucesso then
    ShowMessage('APAGADO com sucesso')
  else
    ShowMessage('Ocorreu um ERRO');
end;

procedure TfrmTelaListagemProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  const produtoInicial = TProdutos.Create(dtmPrincipal.ConexaoDB, qryListagem);
  produtoInicial.Selecionar(QryListagem.FieldByName('id').AsInteger);
  AbrirTelaCadastro(ecEditar, produtoInicial)
end;

procedure TfrmTelaListagemProdutos.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaListagemProdutos.FormActivate(Sender: TObject);
begin
  inherited;
  QryListagem.Refresh
end;

procedure TfrmTelaListagemProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  qryListagem.Connection := dtmPrincipal.ConexaoDB;
  dtsListagem.DataSet := qryListagem;
  grdListagem.DataSource:=dtsListagem;
end;
procedure TfrmTelaListagemProdutos.FormShow(Sender: TObject);
begin
  inherited;
  QryListagem.Refresh
end;

procedure TfrmTelaListagemProdutos.grdListagemDblClick(Sender: TObject);
begin
  inherited;

  const produtoInicial = TProdutos.Create(dtmPrincipal.ConexaoDB, qryListagem);
  produtoInicial.Selecionar(QryListagem.FieldByName('id').AsInteger);
  AbrirTelaCadastro(ecVisualizar,produtoInicial);
end;

procedure TfrmTelaListagemProdutos.AbrirTelaCadastro(estadoInicial: TEstadoCadastro; produtoInicial: TProdutos);
begin
  inherited;
  frmTelaCadastroProdutos := TfrmTelaCadastroProdutos.Create(Self, estadoInicial, produtoInicial);
  frmTelaCadastroProdutos.ShowModal;
  frmTelaCadastroProdutos.Release;
end;

end.
