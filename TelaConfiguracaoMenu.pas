unit TelaConfiguracaoMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Registry, WinProcs,
  Vcl.ExtCtrls;

type
  TfrmTelaConfiguracaoMenu = class(TForm)
    lblMudarPlanoFundo: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    Button3: TButton;
    Label4: TLabel;
    Button4: TButton;
    btnSair: TButton;
    OpenDialog1: TOpenDialog;
    imgBackground: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
     procedure AlterarRegistryImagem(pImagemBMP: string; pTile: Boolean);

  public
    { Public declarations }
  end;

var
  frmTelaConfiguracaoMenu: TfrmTelaConfiguracaoMenu;

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

procedure TfrmTelaConfiguracaoMenu.Button1Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
   begin
    AlterarRegistryImagem(OpenDialog1.FileName, False);
   end;
end;


procedure TfrmTelaConfiguracaoMenu.FormCreate(Sender: TObject);
begin

    const Reg = TRegIniFile.Create('Control Panel\Desktop');
    const imageFromRegistry = Reg.ReadString('','Wallpaper','');
    imgBackground.Picture.LoadFromFile(imageFromRegistry);
end;

end.
