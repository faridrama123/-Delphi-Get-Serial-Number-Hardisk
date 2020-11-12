object Form1: TForm1
  Left = 116
  Top = 182
  BorderStyle = bsDialog
  Caption = ' Check HWID'
  ClientHeight = 123
  ClientWidth = 340
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 321
    Height = 105
    Color = clMenu
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Label 1'
      Color = clHighlight
      ParentColor = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Label2'
      Transparent = True
    end
    object Label3: TLabel
      Left = 144
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 144
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label4'
      Color = clInactiveBorder
      ParentColor = False
    end
    object Button1: TButton
      Left = 256
      Top = 72
      Width = 57
      Height = 25
      Caption = 'Copy'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
