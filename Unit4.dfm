object FrmConsultaProduto: TFrmConsultaProduto
  Left = 0
  Top = 0
  Caption = 'Lista Produto'
  ClientHeight = 444
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 43
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 542
    Height = 348
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 376
    Top = 38
    Width = 153
    Height = 25
    Caption = 'Procurar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 83
    Top = 40
    Width = 287
    Height = 21
    TabOrder = 2
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=trabalho;Initial Catalog=trabalho'
    LoginPrompt = False
    Left = 352
    Top = 65528
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produtos')
    Left = 456
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 520
    Top = 65528
  end
end
