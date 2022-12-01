unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
   Vcl.Menus, uDTMConexao, TelaListagemProdutos, TelaListagemPedidos,
   TelaListagemClientes, TelaListagemFuncionarios, uRelProdutos, uRelPedidos,
   TelaFiltroRelPedidos, TelaFiltroRelProdutos, TelaConfiguracaoMenu,
   Vcl.ExtCtrls, Registry, WinProcs, cArquivoIni, ZDbcIntfs, Vcl.AppEvnts,
  Vcl.StdCtrls;

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
    ttiProgramaBandeja: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    lblIniPath: TLabel;



    procedure FormCreate(Sender: TObject);
    procedure menuCadastrosProdutosClick(Sender: TObject);
    procedure menuCadastrosClientesClick(Sender: TObject);
    procedure menuCadastrosPedidosClick(Sender: TObject);
    procedure menuRelatoriosProdutosClick(Sender: TObject);
    procedure menuRelatoriosPedidosClick(Sender: TObject);
    procedure menuFuncionariosClick(Sender: TObject);
    procedure menuConfiguracaoClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure ttiProgramaBandejaDblClick(Sender: TObject);

  private
   { Private declarations }
    procedure atualizarPlanoDeFundo();

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  frmRelProdutos: TfrmRelProdutos;
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}


procedure TfrmPrincipal.ApplicationEvents1Minimize(Sender: TObject);
begin
const programaBandeja = TArquivoIni.LerIni('SERVER','programaBandeja');
if programaBandeja = 'true' then begin
  Self.Hide();
  Self.WindowState := wsMinimized;
  ttiProgramaBandeja.Visible := True;
end else if programaBandeja = 'false' then begin


end;
end;

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

  lblIniPath.Caption := 'ArquivoIni: ' + TArquivoIni.ArquivoIni + #13+'caminhoZeosDLL: ' +
      TArquivoIni.LerIni('SERVER','caminhoZeosDLL') + #13+ 'HostName: ' +  //Arquivo DLL do ZEOS
      TArquivoIni.LerIni('SERVER','HostName') + #13 + 'Port: ' + //Instancia do SQLServer
      TArquivoIni.LerIni('SERVER','Port') + #13 +'User: ' +  //Porta do SQL Server
      TArquivoIni.LerIni('SERVER','User') + #13 +'Password: ' +  //Usuario do Banco de Dados
      TArquivoIni.LerIni('SERVER','Password') + #13 +'Database: ' +  //Senha do Usu�rio do banco
      TArquivoIni.LerIni('SERVER','DataBase');  //Nome do Banco de Dados
  ;

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

    TArquivoIni.AtualizarIni('SERVER', 'programaBandeja', 'true');
    TArquivoIni.AtualizarIni('SERVER', 'caminhoZeosDLL', ExtractFilePath(ParamStr(0)) + 'ntwdblib.dll');


    MessageDlg('Arquivo '+ TArquivoIni.ArquivoIni +' CRIADO com sucesso' +#13+
               'CONFIGURE o arquivo antes de inicializar a aplica��o',MtInformation,[mbok],0);
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
      //LibraryLocation:='C:\Users\cinti\Desktop\Projetos Delphi\TesteDelphi\Win32\Debug\ntwdblib.dll';
      LibraryLocation:= TArquivoIni.LerIni('SERVER','caminhoZeosDLL'); //Arquivo DLL do ZEOS
      HostName:= TArquivoIni.LerIni('SERVER','HostName'); //Instancia do SQLServer
      Port    := StrToInt(TArquivoIni.LerIni('SERVER','Port'));  //Porta do SQL Server
      User    := TArquivoIni.LerIni('SERVER','User');  //Usuario do Banco de Dados
      Password:= TArquivoIni.LerIni('SERVER','Password');  //Senha do Usu�rio do banco
      Database:= TArquivoIni.LerIni('SERVER','DataBase');  //Nome do Banco de Dados

      AutoCommit:= True;
      TransactIsolationLevel:=tiReadCommitted;
      Connected:=True;  //Faz a Conex�o do Banco
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

procedure TfrmPrincipal.ttiProgramaBandejaDblClick(Sender: TObject);
begin
  ttiProgramaBandeja.Visible := False;
  Show();
  WindowState := wsMaximized;
  Application.BringToFront();
end;

end.
