unit TelaConfiguracaoMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Registry, WinProcs, Vcl.ExtCtrls, TelaCadastroEmailRelatorios,
  cArquivoIni, TelaCadastroProdutos;

type
  TfrmTelaConfiguracaoMenu = class(TForm)
    lblAplicarDesconto: TLabel;
    btnAplicarDescontos: TButton;
    lblCadastrarEmail: TLabel;
    btnCadastrarEmail: TButton;
    btnSair: TButton;
    OpenDialog1: TOpenDialog;
    imgBackground: TImage;
    btnRetirarDescontos: TButton;
    lblStatusDesconto: TLabel;
    Label1: TLabel;
    btnMostrarProgramaBandeja: TButton;
    btnEsconderProgramaBandeja: TButton;
    Label2: TLabel;
    Button3: TButton;
    procedure btnBuscarImagemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarEmailClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnAplicarDescontosClick(Sender: TObject);
    procedure btnRetirarDescontosClick(Sender: TObject);
    procedure btnMostrarProgramaBandejaClick(Sender: TObject);
    procedure btnEsconderProgramaBandejaClick(Sender: TObject);

  private
    { Private declarations }

    StatusDesconto : string;
    StatusBandeja : string;
    procedure AlterarImagemINI(caminhoImagem: string; pTile: Boolean);
    procedure AlterarStatusDescontoTrue;
    procedure AlterarStatusDescontoFalse;


  public
    { Public declarations }
  end;

var
  frmTelaConfiguracaoMenu: TfrmTelaConfiguracaoMenu;
  frmTelaCadastroEmailRelatorios : TfrmTelaCadastroEmailRelatorios;


implementation

{$R *.dfm}
procedure TfrmTelaConfiguracaoMenu.AlterarStatusDescontoFalse;
begin
   lblStatusDesconto.Caption := 'DESCONTOS DESATIVADOS';
   btnAplicarDescontos.Enabled:=true;
   btnRetirarDescontos.Enabled:=false;
end;

procedure TfrmTelaConfiguracaoMenu.AlterarStatusDescontoTrue;
begin
  lblStatusDesconto.Caption := 'DESCONTOS ATIVADOS';
  btnAplicarDescontos.Enabled:=false;
  btnRetirarDescontos.Enabled:=true;
end;

procedure TfrmTelaConfiguracaoMenu.AlterarImagemINI(caminhoImagem: string; pTile: Boolean);
var Reg : TRegIniFile;
begin

  TArquivoIni.AtualizarIni('SERVER', 'caminhoImagemBackground', caminhoImagem);
  const caminhoNaIni = TArquivoIni.LerIni('SERVER','caminhoImagemBackground');
  imgBackground.Picture.LoadFromFile(caminhoNaIni);
  {Reg := TRegIniFile.Create('Control Panel\Desktop');

    with Reg do
      begin
          WriteString('', 'Wallpaper', caminhoImagem);
              if (pTile) then
                     WriteString('', 'TileWallpaper', '1')
                         else
                                WriteString('', 'TileWallpaper', '0');
                                    const imageFromRegistry = ReadString('','Wallpaper','');
                                         imgBackground.Picture.LoadFromFile(imageFromRegistry);
                                           end;
                                             Reg.Free;
                                               SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, nil, SPIF_SENDWININICHANGE);}
end;

procedure TfrmTelaConfiguracaoMenu.btnAplicarDescontosClick(Sender: TObject);
begin
  TArquivoIni.AtualizarIni('SERVER', 'liberarDesconto', 'true');

  StatusDesconto := TArquivoIni.LerIni('SERVER','liberarDesconto');
  AlterarStatusDescontoTrue;

end;

procedure TfrmTelaConfiguracaoMenu.btnRetirarDescontosClick(Sender: TObject);
begin
   TArquivoIni.AtualizarIni('SERVER', 'liberarDesconto', 'false');

   StatusDesconto := TArquivoIni.LerIni('SERVER','liberarDesconto');
   AlterarStatusDescontoFalse;

end;


procedure TfrmTelaConfiguracaoMenu.btnBuscarImagemClick(Sender: TObject);
begin
   if OpenDialog1.Execute then
   begin
    AlterarImagemINI(OpenDialog1.FileName, False);
   end;
end;


procedure TfrmTelaConfiguracaoMenu.btnCadastrarEmailClick(Sender: TObject);
begin
  frmTelaCadastroEmailRelatorios := TfrmTelaCadastroEmailRelatorios.Create(Self);
  frmTelaCadastroEmailRelatorios.ShowModal;
  frmTelaCadastroEmailRelatorios.Release;
end;


procedure TfrmTelaConfiguracaoMenu.btnMostrarProgramaBandejaClick(
  Sender: TObject);
begin
  TArquivoIni.AtualizarIni('SERVER', 'programaBandeja', 'true');

  StatusBandeja := TArquivoIni.LerIni('SERVER','programaBandeja');

  btnMostrarProgramaBandeja.Enabled:=false;
  btnEsconderProgramaBandeja.Enabled:=true;

  ShowMessage('Programa ficar� na bandeja');

end;

procedure TfrmTelaConfiguracaoMenu.btnEsconderProgramaBandejaClick(
  Sender: TObject);
begin
  TArquivoIni.AtualizarIni('SERVER', 'programaBandeja', 'false');
  StatusBandeja := TArquivoIni.LerIni('SERVER','programaBandeja');

  btnMostrarProgramaBandeja.Enabled:=true;
  btnEsconderProgramaBandeja.Enabled:=false;

  ShowMessage('Programa n�o ficar� na bandeja');

end;

procedure TfrmTelaConfiguracaoMenu.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaConfiguracaoMenu.FormCreate(Sender: TObject);
begin
  const caminhoNaIni = TArquivoIni.LerIni('SERVER','caminhoImagemBackground');
  if caminhoNaIni <> '' then
    imgBackground.Picture.LoadFromFile(caminhoNaIni);
    {const Reg = TRegIniFile.Create('Control Panel\Desktop');
        const imageFromRegistry = Reg.ReadString('','Wallpaper','');
            imgBackground.Picture.LoadFromFile(imageFromRegistry);}

  StatusDesconto := TArquivoIni.LerIni('SERVER','liberarDesconto');
  if StatusDesconto = 'true' then
     AlterarStatusDescontoTrue;
  if StatusDesconto = 'false' then
     AlterarStatusDescontoFalse;

  StatusBandeja := TArquivoIni.LerIni('SERVER','programaBandeja');
  if StatusBandeja = 'true' then begin
     btnMostrarProgramaBandeja.Enabled:=false;
     btnEsconderProgramaBandeja.Enabled:=true;
  end;
  if StatusBandeja = 'false' then begin
     btnMostrarProgramaBandeja.Enabled:=true;
     btnEsconderProgramaBandeja.Enabled:=false;
  end;
end;

end.
