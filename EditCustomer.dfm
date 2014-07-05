inherited frmEditCustomer: TfrmEditCustomer
  Caption = 'Klant wijzigen'
  ClientHeight = 265
  ExplicitWidth = 407
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    Top = 186
  end
  inherited pnlLabels: TPanel
    Height = 186
    object Label1: TLabel
      Left = 36
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Naam:'
    end
    object Label2: TLabel
      Left = 36
      Top = 61
      Width = 32
      Height = 13
      Caption = 'Adres:'
    end
    object Label3: TLabel
      Left = 36
      Top = 88
      Width = 121
      Height = 13
      Caption = 'Postcode en woonplaats:'
    end
    object Label4: TLabel
      Left = 39
      Top = 120
      Width = 84
      Height = 13
      Caption = 'Telefoonnummer:'
    end
    object Label5: TLabel
      Left = 39
      Top = 152
      Width = 55
      Height = 13
      Caption = 'Emailadres:'
    end
  end
  inherited pnlFields: TPanel
    Height = 186
    object Edit1: TEdit
      Left = 40
      Top = 29
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Naam'
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 40
      Top = 53
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Adres'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 40
      Top = 80
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'PostcodePlaats'
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 40
      Top = 112
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Telefoonnummer'
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 40
      Top = 144
      Width = 184
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Emailadres'
      TabOrder = 4
    end
  end
end
