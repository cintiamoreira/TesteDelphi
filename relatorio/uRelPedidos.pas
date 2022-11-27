unit uRelPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLXLSFilter, RLXLSXFilter, RLFilters,
  RLPDFFilter, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RLReport;

type
  TfrmRelPedidos = class(TForm)
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
    RLBand5: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    RLDBResult2: TRLDBResult;
    QryPedidos: TZQuery;
    dtsPedidos: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLLabel10: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    QryPedidosid: TIntegerField;
    QryPedidosid_produto: TIntegerField;
    QryPedidosid_cliente: TIntegerField;
    QryPedidosqtd_total: TIntegerField;
    QryPedidosvalor_total: TFloatField;
    QryPedidosvalor_total_desconto: TFloatField;
    QryPedidosdata_inclusao: TDateTimeField;
    QryPedidosdata_edicao: TDateTimeField;
    QryPedidosnomeCliente: TWideStringField;
    QryPedidosnomeProduto: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}

end.
