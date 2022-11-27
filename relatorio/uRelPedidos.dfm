object frmRelPedidos: TfrmRelPedidos
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Pedidos'
  ClientHeight = 803
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 2
    Width = 794
    Height = 1123
    DataSource = dtsPedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btColumnHeader
      object TRLLabel
        Left = 3
        Top = 16
        Width = 329
        Height = 25
        Caption = 'LISTAGEM DE PEDIDOS POR DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 46
        Width = 718
        Height = 29
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 308
      Width = 718
      Height = 49
      BandType = btFooter
      Transparent = False
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 29
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 24
        Width = 65
        Height = 16
        Info = itFullDate
        Text = ''
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 629
        Top = 24
        Width = 95
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 688
        Top = 24
        Width = 121
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 661
        Top = 24
        Width = 8
        Height = 16
        Caption = '/'
      end
      object RLLabel2: TRLLabel
        Left = 567
        Top = 24
        Width = 53
        Height = 16
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BandaDoGrupo: TRLGroup
      Left = 38
      Top = 113
      Width = 718
      Height = 120
      DataFields = 'data_inclusao'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        BandType = btHeader
        Color = 16051965
        ParentColor = False
        Transparent = False
        object RLLabel7: TRLLabel
          Left = 3
          Top = 3
          Width = 113
          Height = 15
          Caption = 'DATA de INCLUS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 151
          Top = 2
          Width = 84
          Height = 16
          DataField = 'data_inclusao'
          DataSource = dtsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 123
          Top = -1
          Width = 8
          Height = 16
          Caption = '-'
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 22
        Width = 718
        Height = 24
        BandType = btColumnHeader
        object RLPanel1: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 24
          Align = faClient
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel3: TRLLabel
            Left = 0
            Top = 2
            Width = 87
            Height = 16
            Caption = 'N'#186' do Pedido'
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 95
            Top = 2
            Width = 110
            Height = 16
            Caption = 'Nome do Cliente'
            Transparent = False
          end
          object RLLabel5: TRLLabel
            Left = 477
            Top = 2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            Caption = 'Valor Total'
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 226
            Top = 2
            Width = 115
            Height = 16
            Caption = 'Nome do Produto'
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 343
            Top = 2
            Width = 114
            Height = 16
            Caption = 'Quantidade Total'
            Transparent = False
          end
          object RLLabel9: TRLLabel
            Left = 579
            Top = 2
            Width = 136
            Height = 16
            Caption = 'Valor Total Desconto'
            Transparent = False
          end
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 24
        object RLDBText1: TRLDBText
          Left = 3
          Top = 2
          Width = 54
          Height = 16
          DataField = 'id'
          DataSource = dtsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 129
          Top = 2
          Width = 76
          Height = 16
          Alignment = taRightJustify
          DataField = 'nomeCliente'
          DataSource = dtsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 489
          Top = 2
          Width = 62
          Height = 16
          Alignment = taRightJustify
          DataField = 'valor_total'
          DataSource = dtsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 260
          Top = 2
          Width = 81
          Height = 16
          Alignment = taRightJustify
          DataField = 'nomeProduto'
          DataSource = dtsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 403
          Top = 2
          Width = 54
          Height = 16
          Alignment = taRightJustify
          DataField = 'qtd_total'
          DataSource = dtsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 593
          Top = 2
          Width = 122
          Height = 16
          Alignment = taRightJustify
          DataField = 'valor_total_desconto'
          DataSource = dtsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 70
        Width = 718
        Height = 43
        BandType = btSummary
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 233
      Width = 718
      Height = 75
      BandType = btSummary
      object RLDraw4: TRLDraw
        Left = 488
        Top = 10
        Width = 230
        Height = 17
        DrawKind = dkLine
      end
      object RLLabel6: TRLLabel
        Left = 565
        Top = 30
        Width = 66
        Height = 15
        Alignment = taRightJustify
        Caption = 'Valor Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 616
        Top = 29
        Width = 99
        Height = 16
        Alignment = taRightJustify
        DataField = 'valor_total_desconto'
        DataSource = dtsPedidos
        Info = riSum
        Text = ''
      end
    end
  end
  object QryPedidos: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'use TesteDelphi'
      'Select '
      #9'pedidos.*,'
      #9'clientes.nome as nomeCliente,'
      #9'produtos.nome as nomeProduto'
      'FROM pedidos'
      'LEFT JOIN clientes ON pedidos.id_cliente = clientes.id'
      'LEFT JOIN produtos ON pedidos.id_produto = produtos.id'
      
        '         WHERE pedidos.data_inclusao BETWEEN :DataInicio AND DAT' +
        'EADD(day,1,:DataFim)'
      '        ORDER BY pedidos.data_inclusao')
    Params = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        Value = '25/11/2022'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        Value = '28/11/2022'
      end>
    Left = 584
    Top = 383
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        Value = '25/11/2022'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        Value = '28/11/2022'
      end>
    object QryPedidosid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object QryPedidosid_produto: TIntegerField
      FieldName = 'id_produto'
    end
    object QryPedidosid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object QryPedidosqtd_total: TIntegerField
      FieldName = 'qtd_total'
    end
    object QryPedidosvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object QryPedidosvalor_total_desconto: TFloatField
      FieldName = 'valor_total_desconto'
    end
    object QryPedidosdata_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object QryPedidosdata_edicao: TDateTimeField
      FieldName = 'data_edicao'
    end
    object QryPedidosnomeCliente: TWideStringField
      FieldName = 'nomeCliente'
    end
    object QryPedidosnomeProduto: TWideStringField
      FieldName = 'nomeProduto'
    end
  end
  object dtsPedidos: TDataSource
    DataSet = QryPedidos
    Left = 664
    Top = 383
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 632
    Top = 455
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 584
    Top = 519
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 680
    Top = 519
  end
end
