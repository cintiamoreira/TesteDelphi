unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   Vcl.Menus, uDTMConexao,
   TelaListagemProdutos, TelaListagemPedidos, TelaListagemClientes,
   TelaListagemFuncionarios, uRelProdutos, uRelPedidos,
   TelaFiltroRelPedidos, TelaFiltroRelProdutos;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    menuMenu: TMenuItem;
    menuConfiguracao: TMenuItem;
    menuCadastros: TMenuItem;
    menuCadastrosProdutos: TMenuItem;
    menuCadastrosClientes: TMenuItem;
    menuCadastrosPedidos: TMenuItem;
    menuFuncionarios: TMenuItem;
    menuRelatorios: TMenuItem;
    menuRelatoriosProdutos: TMenuItem;
    menuRelatoriosPedidos: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure menuCadastrosProdutosClick(Sender: TObject);
    procedure menuCadastrosClientesClick(Sender: TObject);
    procedure menuCadastrosPedidosClick(Sender: TObject);
    procedure menuRelatoriosProdutosClick(Sender: TObject);
    procedure menuRelatoriosPedidosClick(Sender: TObject);
    procedure menuFuncionariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  frmRelProdutos: TfrmRelProdutos;
  frmRelPedidos: TfrmRelPedidos;

implementation


{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dtmPrincipal := TdtmPrincipal.Create(Self);
  dtmPrincipal.ConexaoDB.SQLHourGlass := True;
  dtmPrincipal.ConexaoDB.Connected:=true;

end;

procedure TfrmPrincipal.menuCadastrosClientesClick(Sender: TObject);
begin
  frmTelaListagemClientes := TfrmTelaListagemClientes.Create(Self);
  frmTelaListagemClientes.ShowModal;
  frmTelaListagemClientes.Release;
end;

procedure TfrmPrincipal.menuCadastrosPedidosClick(Sender: TObject);
begin
  frmTelaListagemPedidos := TfrmTelaListagemPedidos.Create(Self);
  frmTelaListagemPedidos.ShowModal;
  frmTelaListagemPedidos.Release;
end;

procedure TfrmPrincipal.menuCadastrosProdutosClick(Sender: TObject);
begin
  frmTelaListagemProdutos := TfrmTelaListagemProdutos.Create(Self);
  frmTelaListagemProdutos.ShowModal;
  frmTelaListagemProdutos.Release;
end;

procedure TfrmPrincipal.menuFuncionariosClick(Sender: TObject);
begin
    frmTelaListagemFuncionarios := TfrmTelaListagemFuncionarios.Create(Self);
    frmTelaListagemFuncionarios.ShowModal;
    frmTelaListagemFuncionarios.Release;
end;

procedure TfrmPrincipal.menuRelatoriosPedidosClick(Sender: TObject);
begin
  try
       frmTelaFiltroRelPedidos := TfrmTelaFiltroRelPedidos.Create(Self);
       frmTelaFiltroRelPedidos.ShowModal;

       frmRelPedidos:=TfrmRelPedidos.Create(Self);
       frmRelPedidos.QryPedidos.Close;
       frmRelPedidos.QryPedidos.ParamByName('DataInicio').AsDate := frmTelaFiltroRelPedidos.edtDataInicio.Date;
       frmRelPedidos.QryPedidos.ParamByName('DataFim').AsDate := frmTelaFiltroRelPedidos.edtDataFim.Date;
       frmRelPedidos.QryPedidos.Open;
       frmRelPedidos.Relatorio.PreviewModal;
   finally
    frmTelaFiltroRelPedidos.Release;
   end;
end;

procedure TfrmPrincipal.menuRelatoriosProdutosClick(Sender: TObject);
begin
  try

      frmTelaFiltroRelProdutos := TfrmTelaFiltroRelProdutos.Create(Self);
      frmTelaFiltroRelProdutos.ShowModal;

      frmRelProdutos:=TfrmRelProdutos.Create(Self);
      frmRelProdutos.QryProdutos.Close;
      frmRelProdutos.QryProdutos.ParamByName('DataInicio').AsDate := frmTelaFiltroRelProdutos.edtDataInicio.Date;
      frmRelProdutos.QryProdutos.ParamByName('DataFim').AsDate := frmTelaFiltroRelProdutos.edtDataFim.Date;
      frmRelProdutos.QryProdutos.Open;
      frmRelProdutos.Relatorio.PreviewModal;
  finally
    frmTelaFiltroRelProdutos.Release;
  end;
end;


end.
