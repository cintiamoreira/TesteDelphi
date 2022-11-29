unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   Vcl.Menus, uDTMConexao, TelaListagemProdutos, TelaListagemPedidos,
   TelaListagemClientes, TelaListagemFuncionarios, uRelProdutos, uRelPedidos,
   TelaFiltroRelPedidos, TelaFiltroRelProdutos, TelaConfiguracaoMenu,
   Vcl.ExtCtrls, Registry, WinProcs, cArquivoIni, ZDbcIntfs;

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
    imgBackground: TImage;
    procedure FormCreate(Sender: TObject);
    procedure menuCadastrosProdutosClick(Sender: TObject);
    procedure menuCadastrosClientesClick(Sender: TObject);
    procedure menuCadastrosPedidosClick(Sender: TObject);
    procedure menuRelatoriosProdutosClick(Sender: TObject);
    procedure menuRelatoriosPedidosClick(Sender: TObject);
    procedure menuFuncionariosClick(Sender: TObject);
    procedure menuConfiguracaoClick(Sender: TObject);

  private

  procedure atualizarPlanoDeFundo();
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

procedure TfrmPrincipal.atualizarPlanoDeFundo;
begin
  const caminhoNaIni = TArquivoIni.LerIni('SERVER','caminhoImagemBackground');
  if caminhoNaIni <> '' then
    imgBackground.Picture.LoadFromFile(caminhoNaIni);
  {const Reg = TRegIniFile.Create('Control Panel\Desktop');
    const imageFromRegistry = Reg.ReadString('','Wallpaper','');
      imgBackground.Picture.LoadFromFile(imageFromRegistry);}
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

  if not FileExists(TArquivoIni.ArquivoIni) then
  begin
    TArquivoIni.AtualizarIni('SERVER', 'TipoDataBase', 'MSSQL');
    TArquivoIni.AtualizarIni('SERVER', 'HostName', '.\SQLEXPRESS');
    TArquivoIni.AtualizarIni('SERVER', 'Port', '1433');
    TArquivoIni.AtualizarIni('SERVER', 'User', 'sa');
    TArquivoIni.AtualizarIni('SERVER', 'Password', 'ciih');
    TArquivoIni.AtualizarIni('SERVER', 'Database', 'TesteDelphi');


    TArquivoIni.AtualizarIni('SERVER', 'caminhoImagemBackground', '');

    TArquivoIni.AtualizarIni('SERVER', 'emailEnvioRelatorios', '');
    TArquivoIni.AtualizarIni('SERVER', 'nomeEnvioRelatorios', '');

    TArquivoIni.AtualizarIni('SERVER', 'liberarDesconto', 'true');

    MessageDlg('Arquivo '+ TArquivoIni.ArquivoIni +' CRIADO com sucesso' +#13+
               'CONFIGURE o arquivo antes de inicializar a aplicação',MtInformation,[mbok],0);
    Application.Terminate;

  end
  else
  begin
    dtmPrincipal := TdtmPrincipal.Create(Self);     //Instancia o DataModule
    dtmPrincipal.ConexaoDB.SQLHourGlass := True;
    dtmPrincipal.ConexaoDB.Connected:=true;

    with DtmPrincipal.ConexaoDB do
    begin
      Connected:=False;
      SQLHourGlass:=False;
      if TArquivoIni.LerIni('SERVER','TipoDataBase')='MSSQL' then
         Protocol:='mssql';  //Protocolo do banco de dados
      LibraryLocation:='C:\Users\cinti\Desktop\Projetos Delphi\TesteDelphi\ntwdblib.dll';
      HostName:= TArquivoIni.LerIni('SERVER','HostName'); //Instancia do SQLServer
      Port    := StrToInt(TArquivoIni.LerIni('SERVER','Port'));  //Porta do SQL Server
      User    := TArquivoIni.LerIni('SERVER','User');  //Usuario do Banco de Dados
      Password:= TArquivoIni.LerIni('SERVER','Password');  //Senha do Usuário do banco
      Database:= TArquivoIni.LerIni('SERVER','DataBase');;  //Nome do Banco de Dados
      AutoCommit:= True;
      TransactIsolationLevel:=tiReadCommitted;
      Connected:=True;  //Faz a Conexão do Banco
    end;

end;

  atualizarPlanoDeFundo;
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

procedure TfrmPrincipal.menuConfiguracaoClick(Sender: TObject);
begin
  frmTelaConfiguracaoMenu := TfrmTelaConfiguracaoMenu.Create(Self);
  frmTelaConfiguracaoMenu.ShowModal;

  atualizarPlanoDeFundo;

  frmTelaConfiguracaoMenu.Release;
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
