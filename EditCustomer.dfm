inherited frmEditCustomer: TfrmEditCustomer
  ActiveControl = pnlFields
  Caption = 'Klant wijzigen'
  ClientHeight = 252
  KeyPreview = True
  Position = poOwnerFormCenter
  ExplicitWidth = 407
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 179
    Height = 73
    ExplicitTop = 148
    ExplicitHeight = 73
    inherited btnCancel: TBitBtn
      TabOrder = 2
    end
    inherited btnSave: TBitBtn
      TabOrder = 0
    end
    inherited btnReset: TBitBtn
      TabOrder = 1
    end
  end
  inherited pnlLabels: TPanel
    Height = 179
    Color = 60138
    ExplicitHeight = 148
    object Label1: TLabel
      Left = 36
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Naam:'
    end
    object Label2: TLabel
      Left = 36
      Top = 48
      Width = 32
      Height = 13
      Caption = 'Adres:'
    end
    object Label3: TLabel
      Left = 36
      Top = 72
      Width = 121
      Height = 13
      Caption = 'Postcode en woonplaats:'
    end
    object Label4: TLabel
      Left = 36
      Top = 96
      Width = 84
      Height = 13
      Caption = 'Telefoonnummer:'
    end
    object Label5: TLabel
      Left = 36
      Top = 120
      Width = 93
      Height = 13
      Caption = 'Telefoonnummer 2:'
    end
    object Label6: TLabel
      Left = 36
      Top = 147
      Width = 55
      Height = 13
      Caption = 'Emailadres:'
    end
  end
  inherited pnlFields: TPanel
    Height = 179
    Color = 16291591
    ExplicitHeight = 148
    object Edit1: TEdit
      Left = 40
      Top = 16
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Naam'
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 40
      Top = 40
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Adres'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 40
      Top = 64
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'PostcodePlaats'
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 40
      Top = 88
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Telefoonnummer'
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 40
      Top = 112
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Telefoonnummer2'
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 40
      Top = 139
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Emailadres'
      TabOrder = 5
    end
  end
  inherited CurrQuery: TADOQuery
    Left = 88
    Top = 8
  end
end
