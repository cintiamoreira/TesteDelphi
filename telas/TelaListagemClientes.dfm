inherited frmTelaListagemClientes: TfrmTelaListagemClientes
  Caption = 'Listagem de Clientes'
  ClientHeight = 600
  ClientWidth = 1103
  ExplicitWidth = 1119
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 1103
    Height = 559
    OnDblClick = grdListagemDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sobrenome'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inclusao'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_edicao'
        Width = 130
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Top = 559
    Width = 1103
    ExplicitTop = 559
    ExplicitWidth = 917
    inherited btnCadastrar: TBitBtn
      Left = 752
      Anchors = [akRight, akBottom]
      OnClick = btnCadastrarClick
      ExplicitLeft = 752
    end
    inherited btnEditar: TBitBtn
      Left = 833
      Anchors = [akRight, akBottom]
      OnClick = btnEditarClick
      ExplicitLeft = 833
    end
    inherited btnDeletar: TBitBtn
      Left = 914
      Anchors = [akRight, akBottom]
      OnClick = btnDeletarClick
      ExplicitLeft = 914
    end
    inherited btnFechar: TBitBtn
      Left = 995
      Anchors = [akRight, akBottom]
      OnClick = btnFecharClick
      ExplicitLeft = 995
    end
  end
  inherited qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'select * from clientes')
    object qryListagemid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
    end
    object qryListagemsobrenome: TWideStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'sobrenome'
    end
    object qryListagemcpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Size = 11
    end
    object qryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 50
    end
    object qryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 8
    end
    object qryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 11
    end
    object qryListagemcelular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      Size = 11
    end
    object qryListagemdata_inclusao: TDateTimeField
      DisplayLabel = 'Data de Inclus'#227'o'
      FieldName = 'data_inclusao'
    end
    object qryListagemdata_edicao: TDateTimeField
      DisplayLabel = 'Data de Edi'#231#227'o'
      FieldName = 'data_edicao'
    end
  end
end
