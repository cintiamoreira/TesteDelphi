  unit TelaCadastroClientes;

  interface

  uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHerancaCadastro, Vcl.StdCtrls,
    Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit, cClientes, cadastroEnum,
    Web.HTTPApp, IdHTTP, XMLDoc, XMLIntf, ActiveX, System.JSON, REST.Types,
    FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
    FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
    Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
    REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

  type
    TfrmTelaCadastroClientes = class(TfrmTelaHerancaCadastro)
      edtNome: TEdit;
      lblNome: TLabel;
      lblValor: TLabel;
      lblCEP: TLabel;
      lblDataInclusao: TLabel;
      lblDescontoPromocional: TLabel;
      lblDataEdicao: TLabel;
      lblSobrenome: TLabel;
      edtSobrenome: TEdit;
      lblTelefone: TLabel;
      lblCelular: TLabel;
      edtDataInclusao: TEdit;
      edtDataEdicao: TEdit;
      mskCpf: TMaskEdit;
      RESTClient1: TRESTClient;
      RESTRequest1: TRESTRequest;
      RESTResponse1: TRESTResponse;
      RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
      MemTable: TFDMemTable;
      edtEndereco: TEdit;
      edtTelefone: TEdit;
      edtCelular: TEdit;
      mskCEP: TMaskEdit;

      procedure btnSairClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure btnEditarClick(Sender: TObject);
      procedure mskCEPExit(Sender: TObject);
      procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);

    private
    { Private declarations }

      oCliente : TClientes;
      EstadoCadastro: TEstadoCadastro;
      procedure setEstadoCadastro(const newEstadoCadastro: TEstadoCadastro);
      function getEstadoCadastro: TEstadoCadastro;
      procedure setCliente(const newCliente: TClientes);
      function getCliente: TClientes;
      procedure PrepararCadastrar();
      procedure PrepararVisualizar();
      procedure PrepararEditar();

    public
      { Public declarations }

      constructor Create (AOwner: TComponent;
                          const estadoInicial: TEstadoCadastro;
                          const clienteInicial: TClientes);

    published

      property estado : TEstadoCadastro  read getEstadoCadastro  write setEstadoCadastro;
      property cliente : TClientes  read getCliente  write setCliente;

    end;

  var
    frmTelaCadastroClientes: TfrmTelaCadastroClientes;

  implementation

  constructor TfrmTelaCadastroClientes.Create(AOwner:TComponent;
                                              const estadoInicial: TEstadoCadastro;
                                              const clienteInicial: TClientes);
  begin
    inherited Create(AOwner);
    EstadoCadastro := estadoInicial;
    oCliente := clienteInicial;

  end;

  procedure TfrmTelaCadastroClientes.FormCreate(Sender: TObject);
  begin
    inherited;
    if EstadoCadastro=ecCadastrar then begin
      PrepararCadastrar();
    end else if EstadoCadastro=ecEditar then begin
      PrepararEditar();
    end else if EstadoCadastro=ecVisualizar then begin
      PrepararVisualizar();
    end;

  end;

  function TfrmTelaCadastroClientes.getCliente: TClientes;
  begin
      Result := oCliente;
  end;

  function TfrmTelaCadastroClientes.getEstadoCadastro: TEstadoCadastro;
  begin
      Result := EstadoCadastro;
  end;

  procedure TfrmTelaCadastroClientes.mskCEPExit(Sender: TObject);
  begin
    inherited;
    RESTRequest1.Resource :=   mskCEP.Text + '/json';
    RestRequest1.Execute;
    if RESTRequest1.Response.StatusCode = 200 then
    begin
      if RESTRequest1.Response.Content.IndexOF('erro') > 0 then
      begin
             ShowMessage('CEP Não encontrado');
      end else
      begin
          edtEndereco.Text := MemTable.FieldByName('logradouro').AsString + ', ' +
                              MemTable.FieldByName('bairro').AsString + ', ' +
                              MemTable.FieldByName('localidade').AsString;
      end;
    end;
  end;

  procedure TfrmTelaCadastroClientes.setCliente(const newCliente: TClientes);
  begin
      oCliente := newCliente;
  end;

  procedure TfrmTelaCadastroClientes.setEstadoCadastro(
    const newEstadoCadastro: TEstadoCadastro);
  begin
      EstadoCadastro := newEstadoCadastro;
  end;

  {$R *.dfm}

  procedure TfrmTelaCadastroClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTelaCadastroClientes.btnEditarClick(Sender: TObject);
  begin
    inherited;
     PrepararEditar();
  end;

  procedure TfrmTelaCadastroClientes.btnOKClick(Sender: TObject);
  begin
    inherited;
    if EstadoCadastro=ecCadastrar then begin

       oCliente.nome:=edtNome.Text;
       oCliente.sobrenome:=edtSobrenome.Text;
       oCliente.cpf:=mskCpf.Text;
       oCliente.endereco:=edtEndereco.Text;
       oCliente.cep:=mskCEP.Text;
       oCliente.telefone:=edtTelefone.Text;
       oCliente.celular:=edtCelular.Text;

       const inserirSucesso=oCliente.Inserir;
       if inserirSucesso=true then begin
         ShowMessage('INSERIDO com sucesso');
       end else begin
         ShowMessage('Ocorreu um ERRO');
       end;

       Close;


    end else if EstadoCadastro = ecEditar then begin
        oCliente.nome:=edtNome.Text;
       oCliente.sobrenome:=edtSobrenome.Text;
       oCliente.cpf:=mskCpf.Text;
       oCliente.endereco:=edtEndereco.Text;
       oCliente.cep:=mskCEP.Text;
       oCliente.telefone:=edtTelefone.Text;
       oCliente.celular:=edtCelular.Text;

       const atualizarSucesso=oCliente.Atualizar;
       if atualizarSucesso=true then begin
         ShowMessage('Atualizado com sucesso');
       end else begin
         ShowMessage('Ocorreu um ERRO');
       end;
       Close;
    end else if EstadoCadastro = ecVisualizar then Close;

  end;

  procedure TfrmTelaCadastroClientes.btnSairClick(Sender: TObject);
  begin
    inherited;
    Close;
  end;

  procedure TfrmTelaCadastroClientes.PrepararCadastrar();
  begin
    inherited;
    EstadoCadastro := ecCadastrar;
    edtDataInclusao.Visible:=False;
    edtDataEdicao.Visible:=False;
    lblDataInclusao.Visible:=False;
    lblDataEdicao.Visible:=False;
  end;

  procedure TfrmTelaCadastroClientes.PrepararEditar();
  begin
    EstadoCadastro := ecEditar;

    edtNome.Enabled:=true;
    mskCEP.Enabled:=true;
    edtSobrenome.Enabled:=true;
    edtTelefone.Enabled:=true;
    edtCelular.Enabled:=true;
    edtEndereco.Enabled:=true;
    edtDataInclusao.Enabled:=true;
    edtDataEdicao.Enabled:=true;
    mskCpf.Enabled:=true;

    btnEditar.Enabled:=false;


    edtNome.Text:=oCliente.nome;
    mskCEP.Text:=oCliente.cep;
    edtSobrenome.Text:=oCliente.sobrenome;
    edtTelefone.Text:=oCliente.telefone;
    edtCelular.Text:=oCliente.celular;
    edtEndereco.Text:=oCliente.endereco;
    edtDataInclusao.Text:=oCliente.dataInclusao;
    edtDataEdicao.Text:=oCliente.dataEdicao;
    edtDataInclusao.Enabled:=false;
    edtDataEdicao.Enabled:=false;
    mskCpf.Text:=oCliente.cpf;
  end;

  procedure TfrmTelaCadastroClientes.PrepararVisualizar();
  begin
    EstadoCadastro := ecVisualizar;
              edtNome.Text:=oCliente.nome;
              mskCEP.Text:=oCliente.cep;
              edtSobrenome.Text:=oCliente.sobrenome;
              edtTelefone.Text:=oCliente.telefone;
              edtCelular.Text:=oCliente.celular;
              edtEndereco.Text:=oCliente.endereco;
              edtDataInclusao.Text:=oCliente.dataInclusao;
              edtDataEdicao.Text:=oCliente.dataEdicao;
              mskCpf.Text:=oCliente.cpf;

              edtNome.Enabled:=false;
              mskCEP.Enabled:=false;
              edtSobrenome.Enabled:=false;
              edtTelefone.Enabled:=false;
              edtCelular.Enabled:=false;
              edtEndereco.Enabled:=false;
              edtDataInclusao.Enabled:=false;
              edtDataEdicao.Enabled:=false;
              mskCpf.Enabled:=false;

              btnEditar.Enabled:=True;
  end;


  end.
