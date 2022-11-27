inherited frmTelaListagemFuncionarios: TfrmTelaListagemFuncionarios
  Caption = 'frmTelaListagemFuncionarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
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
  inherited qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'select * from funcionarios')
    object qryListagemid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemnome_completo: TWideStringField
      FieldName = 'nome_completo'
      Size = 50
    end
    object qryListagemcpf: TWideStringField
      FieldName = 'cpf'
      Size = 11
    end
    object qryListagemsenha: TWideStringField
      FieldName = 'senha'
      Size = 200
    end
    object qryListagemdata_inclusao: TWideStringField
      FieldName = 'data_inclusao'
    end
    object qryListagemdata_edicao: TWideStringField
      FieldName = 'data_edicao'
    end
  end
end
