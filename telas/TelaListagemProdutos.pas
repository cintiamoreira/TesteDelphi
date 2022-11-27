unit TelaListagemProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaListagem, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmTelaListagemProdutos = class(TfrmTelaHerancaListagem)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaListagemProdutos: TfrmTelaListagemProdutos;

implementation

{$R *.dfm}

end.
