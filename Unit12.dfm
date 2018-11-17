object Form12: TForm12
  Left = 420
  Top = 250
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'UNIConversor - F'#243'rmulas'
  ClientHeight = 326
  ClientWidth = 497
  Color = clCaptionText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 160
    Height = 50
    Caption = 'F'#243'rmulas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 69
    Height = 21
    Caption = 'Grandeza:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 176
    Top = 72
    Width = 98
    Height = 21
    Caption = 'Convers'#227'o de:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 328
    Top = 72
    Width = 34
    Height = 21
    Caption = 'Para:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 200
    Top = 136
    Width = 91
    Height = 25
    Caption = 'F'#211'RMULA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 358
    Top = 288
    Width = 83
    Height = 25
    Transparent = False
    Visible = False
  end
  object Image1: TImage
    Left = 24
    Top = 168
    Width = 449
    Height = 105
    Center = True
  end
  object Button1: TButton
    Left = 184
    Top = 280
    Width = 121
    Height = 33
    Cursor = crHandPoint
    Caption = 'Voltar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 96
    Width = 145
    Height = 21
    DataField = 'nome'
    KeyField = 'nome'
    ListField = 'nome'
    ListSource = DataSource1
    TabOrder = 1
    OnClick = DBLookupComboBox1Click
    OnCloseUp = DBLookupComboBox1Click
  end
  object ComboBox1: TComboBox
    Left = 176
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object ComboBox2: TComboBox
    Left = 328
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnChange = ComboBox2Change
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 64
    Top = 128
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=tcc'
    LoginPrompt = False
    Left = 104
    Top = 128
  end
  object Query1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select nome from categoria order by nome')
    Left = 24
    Top = 128
  end
  object Query2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 328
    Top = 120
  end
  object Query3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 360
    Top = 120
  end
  object Query4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 392
    Top = 120
  end
end
