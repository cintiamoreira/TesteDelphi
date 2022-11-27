inherited frmTelaListagemFuncionarios: TfrmTelaListagemFuncionarios
  Caption = 'Listagem de Funcionarios'
  ClientWidth = 853
  ExplicitWidth = 869
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 853
    OnDblClick = grdListagemDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_completo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'senha'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inclusao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_edicao'
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Width = 853
    ExplicitWidth = 841
    inherited btnCadastrar: TBitBtn
      Left = 516
      Anchors = [akRight, akBottom]
      OnClick = btnCadastrarClick
    end
    inherited btnEditar: TBitBtn
      Left = 597
      Anchors = [akRight, akBottom]
      OnClick = btnEditarClick
    end
    inherited btnDeletar: TBitBtn
      Left = 678
      Anchors = [akRight, akBottom]
      OnClick = btnDeletarClick
    end
    inherited btnFechar: TBitBtn
      Left = 759
      Anchors = [akRight, akBottom]
      OnClick = btnFecharClick
    end
  end
  inherited dtsListagem: TDataSource
    Left = 392
    Top = 134
  end
  inherited qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'select * from funcionarios')
    Left = 280
    Top = 144
    object qryListagemid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemnome_completo: TWideStringField
      DisplayLabel = 'Nome Completo'
      FieldName = 'nome_completo'
      Size = 50
    end
    object qryListagemcpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Size = 11
    end
    object qryListagemsenha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Size = 200
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
