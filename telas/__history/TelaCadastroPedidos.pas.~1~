unit TelaCadastroPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  TelaHerancaCadastro, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls, RxToolEdit, Data.DB, Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDTMConexao, cClientes, cProdutos, cPedidos, cadastroEnum;

type
  TfrmTelaCadastroPedidos = class(TfrmTelaHerancaCadastro)
    lblQuantidade: TLabel;
    lblValorTotalDesconto: TLabel;
    edtValorTotalDesconto: TEdit;
    lblDescontoPromocional: TLabel;
    edtValorTotal: TEdit;
    lblDataInclusao: TLabel;
    lblDataEdicao: TLabel;
    edtDataInclusao: TEdit;
    edtDataEdicao: TEdit;
    grdClientes: TDBGrid;
    grdProdutos: TDBGrid;
    lblClienteSelecionado: TLabel;
    lblProdutoSelecionado: TLabel;
    Panel3: TPanel;
    queryClientes: TZQuery;
    dtsCliente: TDataSource;
    dtsProdutos: TDataSource;
    queryProdutos: TZQuery;
    queryClientesid: TIntegerField;
    queryClientesnome: TWideStringField;
    queryClientessobrenome: TWideStringField;
    queryClientescpf: TWideStringField;
    queryClientesendereco: TWideStringField;
    queryClientescep: TWideStringField;
    queryClientestelefone: TWideStringField;
    queryClientescelular: TWideStringField;
    queryClientesdata_inclusao: TDateTimeField;
    queryClientesdata_edicao: TDateTimeField;
    queryProdutosid: TIntegerField;
    queryProdutosnome: TWideStringField;
    queryProdutosvalor: TFloatField;
    queryProdutosquantidade: TIntegerField;
    queryProdutosdesconto_promocional: TIntegerField;
    queryProdutosdata_inclusao: TDateTimeField;
    queryProdutosdata_edicao: TDateTimeField;
    edtQuantidadeTotal: TEdit;
    btnCalcular: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure grdClientesCellClick(Column: TColumn);
    procedure grdProdutosCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    qryListagem: TZQuery;
    { Private declarations }
    EstadoCadastro: TEstadoCadastro;
    selecionadoCliente: TClientes;
    selecionadoProduto: TProdutos;
    oPedido: TPedidos;
    function getEstadoCadastro(): TEstadoCadastro;
    function getClienteSelecionado: TClientes;
    function getProdutoSelecionado: TProdutos;
    procedure setEstadoCadastro(newEstado: TEstadoCadastro);
    procedure setClienteSelecionado(newCliente: TClientes);
    procedure setProdutoSelecionado(newProduto: TProdutos);

    procedure PrepararCadastrar();
    procedure PrepararEditar();
    procedure PrepararVisualizar();

    procedure setSelectedClienteAndProduto(idProduto: Integer; idCliente: Integer);
    procedure atualizarLabelClienteProdutoSelecionados();
    procedure atualizarValoresDoPedido();
  public
  constructor Create (AOwner: TComponent; const estadoInicial: TEstadoCadastro; const pedidoInicial: TPedidos; qryListagem: TZQuery);

    { Public declarations }
  published
    property clienteSelecionado : TClientes  read getClienteSelecionado  write setClienteSelecionado;
    property produtoSelecionado : TProdutos  read getProdutoSelecionado  write setProdutoSelecionado;
    property estado : TEstadoCadastro  read getEstadoCadastro  write setEstadoCadastro;
  end;

var
  frmTelaCadastroPedidos: TfrmTelaCadastroPedidos;

implementation

{$R *.dfm}

procedure TfrmTelaCadastroPedidos.btnCalcularClick(Sender: TObject);
begin
  inherited;
  atualizarValoresDoPedido();
end;

procedure TfrmTelaCadastroPedidos.btnEditarClick(Sender: TObject);
begin
  inherited;
  PrepararEditar();
end;

procedure TfrmTelaCadastroPedidos.btnOKClick(Sender: TObject);
begin
  inherited;
  if EstadoCadastro = ecCadastrar then
  begin
    oPedido.quantidadeTotal := StrToInt(edtQuantidadeTotal.Text);
    oPedido.valorTotal := StrToFloat(edtValorTotal.Text);
    oPedido.valorTotalDesconto := StrToFloat(edtValorTotalDesconto.Text);
    oPedido.idCliente := selecionadoCliente.id;
    oPedido.idProduto := selecionadoProduto.id;
    const inserirSucesso = oPedido.Inserir();
    if InserirSucesso = true then
      ShowMessage('Inserido com sucesso')
    else
      ShowMessage('Ocorreu um erro');
    Close;

  end else if EstadoCadastro = ecEditar then
  begin
    oPedido.quantidadeTotal := StrToInt(edtQuantidadeTotal.Text);
    oPedido.valorTotal := StrToFloat(edtValorTotal.Text);
    oPedido.valorTotalDesconto := StrToFloat(edtValorTotalDesconto.Text);
    oPedido.idCliente := selecionadoCliente.id;
    oPedido.idProduto := selecionadoProduto.id;
    const inserirSucesso = oPedido.Atualizar();
    if InserirSucesso = true then
      ShowMessage('Atualizado com sucesso')
    else
      ShowMessage('Ocorreu um erro');
    Close;
  end
  else if EstadoCadastro = ecVisualizar then Close;

end;

procedure TfrmTelaCadastroPedidos.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

constructor TfrmTelaCadastroPedidos.Create(AOwner: TComponent;
  const estadoInicial: TEstadoCadastro; const pedidoInicial: TPedidos; qryListagem: TZQuery);
begin
  inherited Create(AOwner);
  EstadoCadastro := estadoInicial;
  oPedido := pedidoInicial;
  qryListagem := qryListagem;
end;

procedure TfrmTelaCadastroPedidos.FormCreate(Sender: TObject);
begin
  inherited;
   if EstadoCadastro = ecCadastrar then
      PrepararCadastrar()
   else if EstadoCadastro = ecEditar then
      PrepararEditar()
   else if EstadoCadastro = ecVisualizar then
      PrepararVisualizar();

end;

function TfrmTelaCadastroPedidos.getClienteSelecionado: TClientes;
begin
   Result := Self.selecionadoCliente;
end;

function TfrmTelaCadastroPedidos.getEstadoCadastro: TEstadoCadastro;
begin
   Result := Self.EstadoCadastro;
end;

function TfrmTelaCadastroPedidos.getProdutoSelecionado: TProdutos;
begin
   Result := Self.selecionadoProduto;
end;

procedure TfrmTelaCadastroPedidos.grdClientesCellClick(Column: TColumn);
begin
  inherited;
   //selecionar cliente
   const novoClienteSelecionado = TClientes.Create(dtmPrincipal.ConexaoDB, queryClientes);
   novoClienteSelecionado.Selecionar(queryClientes.FieldByName('id').AsInteger);
   selecionadoCliente := novoClienteSelecionado;
   atualizarLabelClienteProdutoSelecionados();
end;

procedure TfrmTelaCadastroPedidos.grdProdutosCellClick(Column: TColumn);
begin
  inherited;
     //selecionar produto
   const novoProdutoSelecionado = TProdutos.Create(dtmPrincipal.ConexaoDB, queryClientes);
   novoProdutoSelecionado.Selecionar(queryProdutos.FieldByName('id').AsInteger);
   selecionadoProduto := novoProdutoSelecionado;
   atualizarLabelClienteProdutoSelecionados();
   lblQuantidade.Enabled := true;
   edtQuantidadeTotal.Enabled := true;
end;

procedure TfrmTelaCadastroPedidos.PrepararCadastrar;
begin
  EstadoCadastro := ecCadastrar;
  btnCalcular.Enabled := true;
  lblQuantidade.Enabled := true;
  lblDataEdicao.Visible := false;
  lblDataInclusao.Visible := false;
  edtDataInclusao.Visible := false;
  edtDataEdicao.Visible := false;
end;

procedure TfrmTelaCadastroPedidos.PrepararEditar;
begin
    EstadoCadastro := ecEditar;
    edtQuantidadeTotal.Enabled := true;
    lblQuantidade.Enabled := true;
    btnCalcular.Enabled := true;
    grdClientes.Enabled := true;
    grdProdutos.Enabled := true;
    lblClienteSelecionado.Enabled := true;
    lblProdutoSelecionado.Enabled := true;

    btnEditar.Enabled := false;

    edtQuantidadeTotal.Text := IntToStr(oPedido.quantidadeTotal);
    edtValorTotalDesconto.Text := FloatToStr(oPedido.valorTotalDesconto);
    edtValorTotal.Text := FloatToStr(oPedido.valorTotal);
    edtDataInclusao.Text := oPedido.dataInclusao;
    edtDataEdicao.Text := oPedido.dataEdicao;
    setSelectedClienteAndProduto(oPedido.idProduto, oPedido.idCliente);
end;

procedure TfrmTelaCadastroPedidos.PrepararVisualizar;
begin
  EstadoCadastro := ecVisualizar;
  edtQuantidadeTotal.Enabled := false;
    lblQuantidade.Enabled := false;
    lblValorTotalDesconto.Enabled := false;
    edtValorTotalDesconto.Enabled := false;
    lblDescontoPromocional.Enabled := false;
    edtValorTotal.Enabled := false;
    lblDataInclusao.Enabled := false;
    lblDataEdicao.Enabled := false;
    edtDataInclusao.Enabled := false;
    edtDataEdicao.Enabled := false;
    grdClientes.Enabled := false;
    grdProdutos.Enabled := false;
    lblClienteSelecionado.Enabled := false;
    lblProdutoSelecionado.Enabled := false;
    btnEditar.Enabled := true;

    edtQuantidadeTotal.Text := IntToStr(oPedido.quantidadeTotal);
    edtValorTotalDesconto.Text := FloatToStr(oPedido.valorTotalDesconto);
    edtValorTotal.Text := FloatToStr(oPedido.valorTotal);
    edtDataInclusao.Text := oPedido.dataInclusao;
    edtDataEdicao.Text := oPedido.dataEdicao;
    setSelectedClienteAndProduto(oPedido.idProduto, oPedido.idCliente);

end;

procedure TfrmTelaCadastroPedidos.setClienteSelecionado(newCliente: TClientes);
begin
   clienteSelecionado := newCliente;
end;

procedure TfrmTelaCadastroPedidos.setEstadoCadastro(newEstado: TEstadoCadastro);
begin
   EstadoCadastro := newEstado;
end;

procedure TfrmTelaCadastroPedidos.setProdutoSelecionado(newProduto: TProdutos);
begin
   produtoSelecionado := newProduto;
end;

procedure TfrmTelaCadastroPedidos.setSelectedClienteAndProduto(idProduto: Integer; idCliente: Integer);
begin
    const produto = TProdutos.Create(dtmPrincipal.ConexaoDB, queryProdutos);
    const cliente = TClientes.Create(dtmPrincipal.ConexaoDB, queryClientes);
    cliente.Selecionar(idCliente);
    produto.Selecionar(idProduto);
    Self.selecionadoCliente := cliente;
    Self.selecionadoProduto := produto;
    atualizarLabelClienteProdutoSelecionados();
end;

procedure TfrmTelaCadastroPedidos.atualizarLabelClienteProdutoSelecionados();
begin
  if clienteSelecionado <> nil then
    lblClienteSelecionado.Caption := 'Selecionado: ' + Self.clienteSelecionado.nome ;
  if produtoSelecionado <> nil then
    lblProdutoSelecionado.Caption := 'Selecionado: ' + Self.produtoSelecionado.nome;
end;

procedure TfrmTelaCadastroPedidos.atualizarValoresDoPedido();
begin
  const quantidadeTotal = StrToInt(edtQuantidadeTotal.Text);
  const valorTotal = selecionadoProduto.valor * quantidadeTotal;   //10 * 10 = 100
  const desconto = selecionadoProduto.descontoPromocional / 100;   //5 / 100 = 0.05
  const valorDescontado = valorTotal * desconto;                   //100 * 0.05 = 5
  const valorTotalDesconto = valorTotal - valorDescontado;         //100 - 5 = 95
  edtValorTotal.Text := FloatToStr(valorTotal);
  edtValorTotalDesconto.Text := FloatToStr(valorTotalDesconto);
end;
end.
