unit TelaHerancaListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, uDTMConexao;

type
  TfrmTelaHerancaListagem = class(TForm)
    grdListagem: TDBGrid;
    Panel1: TPanel;
    btnCadastrar: TBitBtn;
    btnEditar: TBitBtn;
    btnDeletar: TBitBtn;
    btnFechar: TBitBtn;
    dtsListagem: TDataSource;
    qryListagem: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaHerancaListagem: TfrmTelaHerancaListagem;

implementation

{$R *.dfm}

procedure TfrmTelaHerancaListagem.FormCreate(Sender: TObject);
begin
    qryListagem.Connection := dtmPrincipal.ConexaoDB;
    dtsListagem.DataSet := qryListagem;
    grdListagem.DataSource := dtsListagem;
end;

procedure TfrmTelaHerancaListagem.FormShow(Sender: TObject);
begin
  qryListagem.Refresh;
end;



end.
