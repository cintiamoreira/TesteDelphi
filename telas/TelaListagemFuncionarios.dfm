inherited frmTelaListagemFuncionarios: TfrmTelaListagemFuncionarios
  Caption = 'frmTelaListagemFuncionarios'
  ClientWidth = 841
  ExplicitWidth = 857
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 841
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
    Width = 841
    inherited btnCadastrar: TBitBtn
      OnClick = btnCadastrarClick
    end
    inherited btnEditar: TBitBtn
      OnClick = btnEditarClick
    end
    inherited btnDeletar: TBitBtn
      OnClick = btnDeletarClick
    end
    inherited btnFechar: TBitBtn
      OnClick = btnFecharClick
    end
  end
  inherited qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select * from funcionarios')
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
