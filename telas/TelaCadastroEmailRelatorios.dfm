inherited frmTelaCadastroEmailRelatorios: TfrmTelaCadastroEmailRelatorios
  Caption = 'CADASTRO DE EMAIL PARA RECEBER RELAT'#211'RIOS'
  ClientHeight = 222
  ClientWidth = 471
  ExplicitWidth = 487
  ExplicitHeight = 261
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 471
    Height = 158
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitHeight = 472
    object lblNomeCompleto: TLabel
      Left = 50
      Top = 40
      Width = 75
      Height = 13
      Caption = 'Nome Completo'
    end
    object lblEmail: TLabel
      Left = 98
      Top = 82
      Width = 30
      Height = 13
      Caption = 'EMAIL'
    end
    object edtNomeCompleto: TEdit
      Left = 146
      Top = 37
      Width = 303
      Height = 21
      TabOrder = 0
    end
    object edtEmail: TEdit
      Left = 146
      Top = 79
      Width = 303
      Height = 21
      TabOrder = 1
    end
  end
  inherited Panel2: TPanel
    Top = 158
    Width = 471
    inherited btnOK: TBitBtn
      Left = 131
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
      ExplicitLeft = 131
    end
    inherited btnCancelar: TBitBtn
      Left = 212
      Anchors = [akRight, akBottom]
      Visible = False
      ExplicitLeft = 212
    end
    inherited btnEditar: TBitBtn
      Left = 293
      Anchors = [akRight, akBottom]
      Visible = False
      ExplicitLeft = 293
    end
    inherited btnSair: TBitBtn
      Left = 374
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 374
    end
  end
end
