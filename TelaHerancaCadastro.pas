unit TelaHerancaCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cadastroEnum;

type
  TfrmTelaHerancaCadastro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    btnCancelar: TBitBtn;
    btnEditar: TBitBtn;
    btnSair: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  published

  end;



var
  frmTelaHerancaCadastro: TfrmTelaHerancaCadastro;

implementation

{$R *.dfm}

{ TfrmTelaHerancaCadastro }


end.
