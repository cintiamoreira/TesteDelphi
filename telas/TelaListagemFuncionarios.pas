unit TelaListagemFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, uDTMConexao;

type
  TfrmTelaListagemFuncionarios = class(TfrmTelaHerancaListagem)
    qryListagemid: TIntegerField;
    qryListagemnome_completo: TWideStringField;
    qryListagemcpf: TWideStringField;
    qryListagemsenha: TWideStringField;
    qryListagemdata_inclusao: TWideStringField;
    qryListagemdata_edicao: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaListagemFuncionarios: TfrmTelaListagemFuncionarios;

implementation

{$R *.dfm}

end.
