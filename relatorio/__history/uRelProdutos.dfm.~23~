object frmRelProdutos: TfrmRelProdutos
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Produtos'
  ClientHeight = 748
  ClientWidth = 816
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
    Left = 24
    Top = -16
    Width = 794
    Height = 1123
    DataSource = dtsProdutos
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
        Width = 350
        Height = 25
        Caption = 'LISTAGEM DE PRODUTOS POR DATA'
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
        Alignment = taRightJustify
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
          Left = 0
          Top = 4
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
          Left = 133
          Top = 3
          Width = 84
          Height = 16
          DataField = 'data_inclusao'
          DataSource = dtsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 236
          Top = 24
          Width = 117
          Height = 16
          DataField = 'DescricaoCategoria'
          DataSource = dtsProdutos
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
          Left = 115
          Top = 1
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
            Width = 33
            Height = 16
            Alignment = taRightJustify
            Caption = 'ID'
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 87
            Top = 2
            Width = 115
            Height = 16
            Caption = 'Nome do Produto'
            Transparent = False
          end
          object RLLabel5: TRLLabel
            Left = 676
            Top = 2
            Width = 38
            Height = 16
            Alignment = taRightJustify
            Caption = 'Valor'
            Transparent = False
          end
          object RLLabel10: TRLLabel
            Left = 236
            Top = 2
            Width = 147
            Height = 16
            Caption = 'Desconto Promocional'
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 519
            Top = 2
            Width = 78
            Height = 16
            Caption = 'Quantidade'
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
          Top = 6
          Width = 30
          Height = 16
          Alignment = taRightJustify
          DataField = 'id'
          DataSource = dtsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 164
          Top = 6
          Width = 38
          Height = 16
          Alignment = taRightJustify
          DataField = 'Nome'
          DataSource = dtsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 684
          Top = 6
          Width = 30
          Height = 16
          Alignment = taRightJustify
          DataField = 'valor'
          DataSource = dtsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 249
          Top = 6
          Width = 134
          Height = 16
          Alignment = taRightJustify
          DataField = 'desconto_promocional'
          DataSource = dtsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 530
          Top = 6
          Width = 67
          Height = 16
          Alignment = taRightJustify
          DataField = 'quantidade'
          DataSource = dtsProdutos
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
        object RLDraw3: TRLDraw
          Left = 488
          Top = 2
          Width = 230
          Height = 17
          DrawKind = dkLine
        end
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
        Left = 568
        Top = 24
        Width = 87
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 641
        Top = 23
        Width = 77
        Height = 16
        Alignment = taRightJustify
        DataField = 'valor'
        DataSource = dtsProdutos
        Info = riSum
        Text = ''
      end
    end
  end
  object QryProdutos: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'use TesteDelphi;'
      ''
      'Select * FROM produtos'
      
        '        WHERE produtos.data_inclusao BETWEEN :DataInicio AND DAT' +
        'EADD(day,1,:DataFim)'
      '        ORDER BY data_inclusao')
    Params = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        Value = 44890d
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        Value = 44892d
      end>
    Left = 592
    Top = 399
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        Value = 44890d
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        Value = 44892d
      end>
    object QryProdutosid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object QryProdutosnome: TWideStringField
      FieldName = 'nome'
    end
    object QryProdutosvalor: TFloatField
      FieldName = 'valor'
    end
    object QryProdutosquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object QryProdutosdesconto_promocional: TIntegerField
      FieldName = 'desconto_promocional'
    end
    object QryProdutosdata_inclusao: TDateTimeField
      FieldName = 'data_inclusao'
    end
    object QryProdutosdata_edicao: TDateTimeField
      FieldName = 'data_edicao'
    end
  end
  object dtsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 672
    Top = 399
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 640
    Top = 471
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 592
    Top = 535
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 688
    Top = 535
  end
end
