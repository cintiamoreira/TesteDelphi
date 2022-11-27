unit cProdutos;

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

  TProdutos = class

  private
  //Variáveis Privadas somente dentro da Classe

    ConexaoDB : TZConnection;
    QryListagem:  TZQuery;
    //Campos
    F_id : Integer; //Int
    F_nome : string;    //Varchar
    F_valor : Double;    //Varchar
    F_quantidade : Integer;    //Varchar
    F_desconto_promocional : Integer;    //Varchar
    F_data_inclusao : string;    //Varchar
    F_data_edicao : string;    //Varchar

    function getID: Integer;
    function getNome: string;
    function getValor: Double;
    function getQuantidade: Integer;
    function getDescontoPromocional: Integer;
    function getDataInclusao: string;
    function getDataEdicao: string;

    procedure setId(const newId: Integer);
    procedure setNome(const newNome: string);
    procedure setValor(const newValor: Double);
    procedure setQuantidade(const newQuantidade: Integer);
    procedure setDescontoPromocional(const newDescontoPromocional: Integer);
    procedure setDataInclusao(const newDataInclusao: string);
    procedure setDataEdicao(const newDataEdicao: string);

  public
  //Construtor de uma Classe

    constructor Create (aConexao : TZConnection; aQuery: TZQuery);

    destructor Destroy; override;

    function Inserir : Boolean;
    function Atualizar : Boolean;
    function Apagar : Boolean;
    function Selecionar (id : Integer) : Boolean;

  published

    property id : Integer     read getId     write setId;
    property nome : string   read getNome  write setNome;
    property valor : Double   read getValor  write setValor;
    property quantidade : Integer   read getQuantidade  write setQuantidade;
    property descontoPromocional : Integer   read getDescontoPromocional  write setDescontoPromocional;
    property dataInclusao : string   read getDataInclusao  write setDataInclusao;
    property dataEdicao : string   read getDataEdicao  write setDataInclusao;

  end;

implementation

{$REGION 'Constructor and Destructor'}
constructor TProdutos.Create (aConexao : TZConnection; aQuery: TZQuery);
begin
  ConexaoDB := aConexao;
  QryListagem := aQuery;
end;

destructor TProdutos.Destroy;
begin
  inherited;
end;
{$ENDREGION}

{$REGION 'CRUD'}
function TProdutos.Apagar : Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr (F_id) +#13+
                'Nome: '+F_nome,mtConfirmation, [mbYes, mbNo],0)=mrNo
  then begin
      Result := false;
      Abort;
  end;

  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM produtos ' +
                '   WHERE id =:idProduto ');

    Qry.ParamByName('idProduto').AsInteger := F_id;

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

function TProdutos.Atualizar: Boolean;
var Qry : TZQuery;
begin
  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE produtos ' +
                '   SET nome =:nome, ' +
                '   valor =:valor, ' +
                '   quantidade =:quantidade, ' +
                '   desconto_promocional =:descontoPromocional, ' +
                '   data_edicao = GETDATE() ' +
                '   WHERE id = :idProduto ');

    Qry.ParamByName('idProduto').AsInteger := Self.F_id;
    Qry.ParamByName('nome').AsString    := Self.F_nome;
    Qry.ParamByName('valor').AsString    := FloatToStr(Self.F_valor);
    Qry.ParamByName('quantidade').AsString    := IntToStr(Self.F_quantidade);
    Qry.ParamByName('descontoPromocional').AsString    := IntToStr(Self.F_desconto_promocional);

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      QryListagem.Refresh;
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

function TProdutos.Inserir: Boolean;
var Qry : TZQuery;
begin
  try
    Result := True;
    Qry := TZQuery.Create(nil);
    Qry.Connection := ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(
    'INSERT INTO produtos (nome, valor, quantidade, desconto_promocional, data_inclusao, data_edicao) ' +
    'values (:nome, :valor, :quantidade, :desconto_promocional, GETDATE(), GETDATE());'
    );

    Qry.ParamByName('nome').AsString := Self.F_nome;
    Qry.ParamByName('valor').AsString := FloatToStr(Self.F_valor);
    Qry.ParamByName('quantidade').AsString := IntToStr(Self.F_quantidade);
    Qry.ParamByName('desconto_promocional').AsString := IntToStr(Self.F_desconto_promocional);

     try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
      QryListagem.Refresh;
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

function TProdutos.Selecionar(id: Integer): Boolean;
var Qry : TZQuery;
begin
    try
      Result := True;
      Qry := TZQuery.Create(nil);
      Qry.Connection := ConexaoDB;
      Qry.SQL.Clear;

      Qry.SQL.Add ('SELECT * ' +
                  'FROM produtos ' +
                  'WHERE id=:idProduto');

      Qry.ParamByName('idProduto').AsInteger := id;

      try
        Qry.Open;

        Self.F_id := Qry.FieldByName('id').AsInteger;
        Self.F_nome   := Qry.FieldByName('nome').AsString;
        Self.F_valor := Qry.FieldByName('valor').AsFloat;
        Self.F_quantidade := Qry.FieldByName('quantidade').AsInteger;
        Self.F_desconto_promocional := Qry.FieldByName('desconto_promocional').AsInteger;
        Self.F_data_inclusao := Qry.FieldByName('data_inclusao').AsString;
        Self.F_data_edicao := Qry.FieldByName('data_edicao').AsString;
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


function TProdutos.getId: Integer;
begin
  Result := Self.F_id;
end;


function TProdutos.getNome: string;
begin
  Result := Self.F_nome;
end;

function TProdutos.getValor: Double;
begin
  Result := Self.F_valor;
end;
function TProdutos.getQuantidade: Integer;
begin
  Result := Self.F_quantidade;
end;
function TProdutos.getDescontoPromocional: Integer;
begin
  Result := Self.F_desconto_promocional;
end;
function TProdutos.getDataInclusao: string;
begin
  Result := Self.F_data_inclusao;
end;
function TProdutos.getDataEdicao: string;
begin
  Result := Self.F_data_edicao;
end;
{$ENDREGION}


{$REGION 'SETS'}
procedure TProdutos.setId(const newId: Integer);
begin
  Self.F_id := newId;
end;

procedure TProdutos.setNome(const newNome: string);
begin
   Self.F_nome := newNome;
end;

procedure TProdutos.setValor(const newValor: Double);
begin
   Self.F_valor := newValor;
end;

procedure TProdutos.setQuantidade(const newQuantidade: Integer);
begin
   Self.F_quantidade := newQuantidade;
end;

procedure TProdutos.setDescontoPromocional(const newDescontoPromocional: Integer);
begin
   Self.F_desconto_promocional := newDescontoPromocional;
end;

procedure TProdutos.setDataInclusao(const newDataInclusao: string);
begin
   Self.F_data_inclusao := newDataInclusao;
end;

procedure TProdutos.setDataEdicao(const newDataEdicao: string);
begin
   Self.F_data_edicao := newDataEdicao;
end;
{$ENDREGION}


end.
