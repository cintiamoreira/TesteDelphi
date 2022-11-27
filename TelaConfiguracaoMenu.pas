unit TelaConfiguracaoMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Registry, WinProcs, Vcl.ExtCtrls, TelaCadastroEmailRelatorios;

type
  TfrmTelaConfiguracaoMenu = class(TForm)
    lblAplicarDesconto: TLabel;
    btnAplicarDesconto: TButton;
    lblProgramaBandeja: TLabel;
    btnProgramaBandeja: TButton;
    lblCadastrarEmail: TLabel;
    btnCadastrarEmail: TButton;
    btnSair: TButton;
    OpenDialog1: TOpenDialog;
    imgBackground: TImage;
    pnlPlanoDeFundo: TPanel;
    lblMudarPlanoFundo: TLabel;
    btnBuscarImagem: TButton;
    pnlProgramaBandeja: TPanel;
    procedure btnBuscarImagemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarEmailClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnProgramaBandejaClick(Sender: TObject);

  private
    { Private declarations }
     procedure AlterarRegistryImagem(pImagemBMP: string; pTile: Boolean);

  public
    { Public declarations }
  end;

var
  frmTelaConfiguracaoMenu: TfrmTelaConfiguracaoMenu;
  frmTelaCadastroEmailRelatorios : TfrmTelaCadastroEmailRelatorios;

implementation

{$R *.dfm}
procedure TfrmTelaConfiguracaoMenu.AlterarRegistryImagem(pImagemBMP: string; pTile: Boolean);
var Reg : TRegIniFile;
begin
  Reg := TRegIniFile.Create('Control Panel\Desktop');

  with Reg do
  begin
    WriteString('', 'Wallpaper', pImagemBMP);
    if (pTile) then
       WriteString('', 'TileWallpaper', '1')
    else
       WriteString('', 'TileWallpaper', '0');
    const imageFromRegistry = ReadString('','Wallpaper','');
     imgBackground.Picture.LoadFromFile(imageFromRegistry);
  end;
  Reg.Free;
  SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, nil, SPIF_SENDWININICHANGE);
end;

procedure TfrmTelaConfiguracaoMenu.btnBuscarImagemClick(Sender: TObject);
begin
   if OpenDialog1.Execute then
   begin
    AlterarRegistryImagem(OpenDialog1.FileName, False);
   end;
end;


procedure TfrmTelaConfiguracaoMenu.btnCadastrarEmailClick(Sender: TObject);
begin
  frmTelaCadastroEmailRelatorios := TfrmTelaCadastroEmailRelatorios.Create(Self);
  frmTelaCadastroEmailRelatorios.ShowModal;
  frmTelaCadastroEmailRelatorios.Release;
end;

procedure TfrmTelaConfiguracaoMenu.btnProgramaBandejaClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmTelaConfiguracaoMenu.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaConfiguracaoMenu.FormCreate(Sender: TObject);
begin

    const Reg = TRegIniFile.Create('Control Panel\Desktop');
    const imageFromRegistry = Reg.ReadString('','Wallpaper','');
    imgBackground.Picture.LoadFromFile(imageFromRegistry);
end;

end.
