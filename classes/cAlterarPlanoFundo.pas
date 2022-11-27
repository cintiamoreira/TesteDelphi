unit cAlterarPlanoFundo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, WinProcs, StdCtrls;

type
  TAlterarPlanoFundo = class
    Button1: TButton;
    OpenDialog1: TOpenDialog;
  private
    { Private declarations }


    public
    { Public declarations }


    procedure Alterar(pImagemBMP: string; pTile: Boolean);
  end;

var
  alterarPlanoFundo: TAlterarPlanoFundo;

implementation

{$R *.dfm}

{ TForm1 }
  procedure TAlterarPlanoFundo.Alterar(pImagemBMP: string; pTile: Boolean);
var
  Reg : TRegIniFile;
begin
  reg := TRegIniFile.Create('Control Panel\Desktop');

  with Reg do
  begin
    WriteString('', 'Wallpaper', pImagemBMP);
    if (pTile) then
       WriteString('', 'TileWallpaper', '1')
    else
       WriteString('', 'TileWallpaper', '0')
  end;
  Reg.Free;
  SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, nil, SPIF_SENDWININICHANGE);
end;


end.
