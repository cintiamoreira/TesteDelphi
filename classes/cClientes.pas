unit cClientes;

interface

//Lista de Units
uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZConnection,
     ZAbstractConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.SysUtils;

type
//Declaração do tipo da Classe

  TClientes = class

  private
  //Variáveis Privadas somente dentro da Classe

    ConexaoDB : TZConnection;
    QryListagem : TZQuery;
    //Campos
    //varchar = string
    F_id : Integer;
    F_nome : string;
    F_sobrenome : string;
    F_cpf : string;
    F_endereco : string;
    F_cep : string;
    F_telefone : string;
    F_celular : string;
    F_data_inclusao : string;
    F_data_edicao : string;

    function getID: Integer;
    function getNome: string;
    function getSobrenome: string;
    function getCPF: string;
    function getEndereco: string;
    function getCEP: string;
    function getTelefone: string;
    function getCelular: string;
    function getDataInclusao: string;
    function getDataEdicao: string;

    procedure setId(const newId: Integer);
    procedure setNome(const newNome: string);
    procedure setSobrenome(const newSobrenome: string);
    procedure setCPF(const newCPF: string);
    procedure setEndereco(const newEndereco: string);
    procedure setCEP(const newCEP: string);
    procedure setTelefone(const newTelefone: string);
    procedure setCelular(const newCelular: string);
    procedure setDataInclusao(const newDataInclusao: string);
    procedure setDataEdicao(const newDataEdicao: string);

  public
  //Construtor de uma Classe

    constructor Create (aConexao : TZConnection; qryListagem : TZQuery);

    destructor Destroy; override;

    function Inserir : Boolean;
    function Atualizar : Boolean;
    function Apagar : Boolean;
    function Selecionar(id: Integer)  : Boolean;

  published

    property id : Integer     read getId     write setId;
    property nome : string   read getNome  write setNome;
    property sobrenome : string   read getSobrenome  write setSobrenome;
    property cpf : string   read getCPF  write setCPF;
    property endereco : string   read getEndereco  write setEndereco;
    property cep : string   read getCEP  write setCEP;
    property telefone : string   read getTelefone  write setTelefone;
    property celular : string   read getCelular  write setCelular;
    property dataInclusao : string   read getDataInclusao  write setDataInclusao;
    property dataEdicao : string   read getDataEdicao  write setDataEdicao;


  end;

implementation

{$REGION 'Constructor and Destructor'}
constructor TClientes.Create (aConexao : TZConnection; qryListagem: TZQuery);
begin
  ConexaoDB := aConexao;
  QryListagem := qryListagem;
end;

destructor TClientes.Destroy;
begin
  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}
function TClientes.Apagar : Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr (F_id) +#13+
                'Descrição: '+F_nome,mtConfirmation, [mbYes, mbNo],0)=mrNo
  then begin
      Result := false;
      Abort;
  end;

  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM clientes ' +
                '   WHERE id =:clienteId ');

    Qry.ParamByName('clienteId').AsInteger := F_id;

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      Result:=True;
    except
      ConexaoDB.Rollback;
      Result := False;
    end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;

function TClientes.Atualizar: Boolean;
var Qry : TZQuery;
begin
  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE clientes ' +
                '   SET nome =:nome, ' +
                '   sobrenome =:sobrenome, ' +
                '   cpf =:cpf, ' +
                '   endereco =:endereco, ' +
                '   cep =:cep, ' +
                '   telefone =:telefone, ' +
                '   celular =:celular, ' +
                '   data_edicao =GETDATE() ' +
                '   WHERE id =:clienteId ');

    Qry.ParamByName('clienteId').AsInteger := Self.F_id;
    Qry.ParamByName('nome').AsString    := Self.F_nome;
    Qry.ParamByName('sobrenome').AsString    := Self.F_sobrenome;
    Qry.ParamByName('cpf').AsString    := Self.F_cpf;
    Qry.ParamByName('endereco').AsString    := Self.F_endereco;
    Qry.ParamByName('cep').AsString    := Self.F_cep;
    Qry.ParamByName('telefone').AsString    := Self.F_telefone;
    Qry.ParamByName('celular').AsString    := Self.F_celular;

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      Result:=True;
    except
      ConexaoDB.Rollback;
      Result := False;
    end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;

function TClientes.Inserir: Boolean;
var Qry : TZQuery;
begin
  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO clientes (nome,sobrenome,cpf,endereco,cep,telefone,celular,data_inclusao,data_edicao) '+
                'values (:nome, :sobrenome, :cpf, :endereco, :cep, :telefone, :celular, GETDATE(), GETDATE())');

    Qry.ParamByName('nome').AsString := Self.F_nome;
    Qry.ParamByName('sobrenome').AsString := Self.F_sobrenome;
    Qry.ParamByName('cpf').AsString := Self.F_cpf;
    Qry.ParamByName('endereco').AsString := Self.F_endereco;
    Qry.ParamByName('cep').AsString := Self.F_cep;
    Qry.ParamByName('telefone').AsString := Self.F_telefone;
    Qry.ParamByName('celular').AsString := Self.F_celular;

     try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      Result := True;

    except
      ConexaoDB.Rollback;
      Result := False;
    end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;

function TClientes.Selecionar(id: Integer): Boolean;
var Qry : TZQuery;
begin
    try
      Result := True;
      Qry := TZQuery.Create(nil);
      Qry.Connection := ConexaoDB;
      Qry.SQL.Clear;

      Qry.SQL.Add ('SELECT * ' +
                  'FROM clientes ' +
                  'WHERE id = :clienteId');

      Qry.ParamByName('clienteId').AsInteger := id;

      try
        Qry.Open;

        Self.F_id := Qry.FieldByName('id').AsInteger;
        Self.F_nome   := Qry.FieldByName('nome').AsString;
        Self.F_sobrenome   := Qry.FieldByName('sobrenome').AsString;
        Self.F_cpf   := Qry.FieldByName('cpf').AsString;
        Self.F_endereco   := Qry.FieldByName('endereco').AsString;
        Self.F_cep   := Qry.FieldByName('cep').AsString;
        Self.F_telefone   := Qry.FieldByName('telefone').AsString;
        Self.F_celular   := Qry.FieldByName('celular').AsString;
        Self.F_data_inclusao   := Qry.FieldByName('data_inclusao').AsString;
        Self.F_data_edicao   := Qry.FieldByName('data_edicao').AsString;

        Result := true;

      except
         Result := False;
      end;

  finally
    if Assigned (Qry) then
       FreeAndNil (Qry);
  end;
end;
{$ENDREGION}


{$REGION 'GETS'}

function TClientes.getId: Integer;
begin
  Result := Self.F_id;
end;

function TClientes.getNome: string;
begin
  Result := Self.F_nome;
end;

function TClientes.getSobrenome: string;
begin
  Result := Self.F_Sobrenome;
end;

function TClientes.getCPF: string;
begin
  Result := Self.F_CPF;
end;

function TClientes.getEndereco: string;
begin
  Result := Self.F_Endereco;
end;

function TClientes.getCEP: string;
begin
  Result := Self.F_CEP;
end;

function TClientes.getTelefone: string;
begin
  Result := Self.F_Telefone;
end;

function TClientes.getCelular: string;
begin
  Result := Self.F_Celular;
end;

function TClientes.getDataInclusao: string;
begin
  Result := Self.F_data_inclusao;
end;

function TClientes.getDataEdicao: string;
begin
  Result := Self.F_data_edicao;
end;

{$ENDREGION}


{$REGION 'SETS'}
procedure TClientes.setId(const newId: Integer);
begin
  Self.F_id := newId;
end;

procedure TClientes.setNome(const newNome: string);
begin
   Self.F_nome := newNome;
end;

procedure TClientes.setSobrenome(const newSobrenome: string);
begin
   Self.F_Sobrenome := newSobrenome;
end;

procedure TClientes.setCPF(const newCPF: string);
begin
   Self.F_CPF := newCPF;
end;

procedure TClientes.setEndereco(const newEndereco: string);
begin
   Self.F_endereco := newEndereco;
end;

procedure TClientes.setCEP(const newCEP: string);
begin
   Self.F_CEP := newCEP;
end;

procedure TClientes.setTelefone(const newTelefone: string);
begin
   Self.F_telefone := newTelefone;
end;

procedure TClientes.setCelular(const newCelular: string);
begin
   Self.F_celular := newCelular;
end;

procedure TClientes.setDataInclusao(const newDataInclusao: string);
begin
   Self.F_data_inclusao := newDataInclusao;
end;

procedure TClientes.setDataEdicao(const newDataEdicao: string);
begin
   Self.F_data_edicao := newDataEdicao;
end;
{$ENDREGION}
end.
