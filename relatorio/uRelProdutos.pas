unit uRelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLXLSFilter, RLXLSXFilter, RLFilters,
  RLPDFFilter, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RLReport;

type
  TfrmRelProdutos = class(TForm)
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLDraw1: TRLDraw;
    Rodape: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    BandaDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    RLDBResult2: TRLDBResult;
    QryProdutos: TZQuery;
    dtsProdutos: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    QryProdutosid: TIntegerField;
    QryProdutosnome: TWideStringField;
    QryProdutosvalor: TFloatField;
    QryProdutosquantidade: TIntegerField;
    QryProdutosdesconto_promocional: TIntegerField;
    QryProdutosdata_inclusao: TDateTimeField;
    QryProdutosdata_edicao: TDateTimeField;
    RLLabel10: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

{$R *.dfm}

end.
