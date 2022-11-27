unit TelaCadastroEmailRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmTelaCadastroEmailRelatorios = class(TfrmTelaHerancaCadastro)
    edtNomeCompleto: TEdit;
    lblNomeCompleto: TLabel;
    lblEmail: TLabel;
    edtEmail: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaCadastroEmailRelatorios: TfrmTelaCadastroEmailRelatorios;

implementation

{$R *.dfm}

procedure TfrmTelaCadastroEmailRelatorios.btnOKClick(Sender: TObject);
begin
  inherited;
    if (edtNomeCompleto.Text='') OR (edtEmail.Text='') then begin
         ShowMessage('Nome Completo ou Email s�o campos Obrigat�rios');
         Close;
    end  else
       ShowMessage('CADASTRADO com sucesso');
end;

procedure TfrmTelaCadastroEmailRelatorios.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
