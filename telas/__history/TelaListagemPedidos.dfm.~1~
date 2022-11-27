inherited frmTelaListagemPedidos: TfrmTelaListagemPedidos
  Caption = 'Listagem de Pedidos'
  ClientHeight = 548
  ClientWidth = 697
  ExplicitWidth = 713
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 697
    Height = 507
    DataSource = dtsListagem
    OnDblClick = grdListagemDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total_desconto'
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
    Top = 507
    Width = 697
    ExplicitTop = 507
    ExplicitWidth = 697
    inherited btnCadastrar: TBitBtn
      Left = 358
      Anchors = [akRight, akBottom]
      OnClick = btnCadastrarClick
      ExplicitLeft = 358
    end
    inherited btnEditar: TBitBtn
      Left = 439
      Anchors = [akRight, akBottom]
      OnClick = btnEditarClick
      ExplicitLeft = 439
    end
    inherited btnDeletar: TBitBtn
      Left = 520
      Anchors = [akRight, akBottom]
      OnClick = btnDeletarClick
      ExplicitLeft = 520
    end
    inherited btnFechar: TBitBtn
      Left = 601
      Anchors = [akRight, akBottom]
      OnClick = btnFecharClick
      ExplicitLeft = 601
    end
  end
  inherited dtsListagem: TDataSource
    Left = 544
    Top = 86
  end
  inherited qryListagem: TZQuery
    Active = True
    SQL.Strings = (
      'select * from pedidos')
    Left = 432
    Top = 78
    object qryListagemid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemid_produto: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'id_produto'
    end
    object qryListagemid_cliente: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'id_cliente'
    end
    object qryListagemqtd_total: TIntegerField
      DisplayLabel = 'Quantidade Total'
      FieldName = 'qtd_total'
    end
    object qryListagemvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
    end
    object qryListagemvalor_total_desconto: TFloatField
      DisplayLabel = 'Valor Total Desconto'
      FieldName = 'valor_total_desconto'
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
