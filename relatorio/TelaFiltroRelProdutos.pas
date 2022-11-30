unit TelaFiltroRelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, RxToolEdit;

type
  TfrmTelaFiltroRelProdutos = class(TForm)
    lblData: TLabel;
    lblDataFinal: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    btnOk: TBitBtn;
    procedure btnOkClick(Sender: TObject);

  private
    { Private declarations }


  public
    { Public declarations }


  end;

var
  frmTelaFiltroRelProdutos: TfrmTelaFiltroRelProdutos;

implementation

{$R *.dfm}


procedure TfrmTelaFiltroRelProdutos.btnOkClick(Sender: TObject);
begin
    if (edtDataFim.Date) < (edtDataInicio.Date) then begin
      MessageDlg('Data Final não pode ser maior que a Data Início',mtInformation,[mbok],0);
      edtDataFim.SetFocus;
      abort;
    end;

    if (edtDataFim.Date=0) OR (edtDataInicio.Date=0) then begin
      MessageDlg('Data Inicial ou Final são campos obrigatórios',MtInformation,[mbok],0);
      EdtDataInicio.SetFocus;
      abort;
    end;

    Close;

end;

end.
