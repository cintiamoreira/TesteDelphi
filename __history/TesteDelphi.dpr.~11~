program TesteDelphi;

uses
  Vcl.Forms,
  MenuPrincipal in 'MenuPrincipal.pas' {ftmPrincipal},
  cadastroEnum in 'cadastroEnum.pas',
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  TelaHerancaCadastro in 'TelaHerancaCadastro.pas' {frmTelaHerancaCadastro},
  TelaHerancaListagem in 'TelaHerancaListagem.pas' {frmTelaHerancaListagem},
  cClientes in 'classes\cClientes.pas',
  cPedidos in 'classes\cPedidos.pas',
  cProdutos in 'classes\cProdutos.pas',
  TelaListagemProdutos in 'telas\TelaListagemProdutos.pas' {frmTelaListagemProdutos},
  TelaCadastroProdutos in 'telas\TelaCadastroProdutos.pas' {frmTelaCadastroProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTelaListagemProdutos, frmTelaListagemProdutos);
  Application.CreateForm(TfrmTelaCadastroProdutos, frmTelaCadastroProdutos);
  Application.Run;
end.
