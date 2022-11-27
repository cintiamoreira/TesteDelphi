inherited frmTelaListagemProdutos: TfrmTelaListagemProdutos
  Caption = 'Listagem de Produtos'
  ClientWidth = 859
  OnActivate = FormActivate
  OnShow = nil
  ExplicitWidth = 875
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 859
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
        FieldName = 'nome'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto_promocional'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inclusao'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_edicao'
        Width = 168
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Width = 859
    Anchors = [akRight, akBottom]
    ExplicitWidth = 859
    inherited btnCadastrar: TBitBtn
      Left = 516
      Anchors = [akRight, akBottom]
      OnClick = btnCadastrarClick
      ExplicitLeft = 516
    end
    inherited btnEditar: TBitBtn
      Left = 597
      Anchors = [akRight, akBottom]
      OnClick = btnEditarClick
      ExplicitLeft = 597
    end
    inherited btnDeletar: TBitBtn
      Left = 678
      Anchors = [akRight, akBottom]
      OnClick = btnDeletarClick
      ExplicitLeft = 678
    end
    inherited btnFechar: TBitBtn
      Left = 759
      Anchors = [akRight, akBottom]
      OnClick = btnFecharClick
      ExplicitLeft = 759
    end
  end
  inherited dtsListagem: TDataSource
    Left = 728
    Top = 102
  end
  inherited qryListagem: TZQuery
    Active = True
    SQL.Strings = (
      'SELECT * from produtos')
    Left = 664
    Top = 110
    object qryListagemid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
    end
    object qryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object qryListagemquantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object qryListagemdesconto_promocional: TIntegerField
      DisplayLabel = 'Desconto Promocional'
      FieldName = 'desconto_promocional'
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
