object FrmNotaFiscal: TFrmNotaFiscal
  Left = 0
  Top = 0
  Caption = 'Lista de NotasFiscais'
  ClientHeight = 450
  ClientWidth = 571
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
    Left = 64
    Top = 219
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object DBGrid1: TDBGrid
    Left = 17
    Top = 70
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
    Left = 344
    Top = 22
    Width = 153
    Height = 25
    Caption = 'Procurar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 17
    Top = 24
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
    Left = 547
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 507
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from notafiscal')
    Left = 543
    Top = 8
  end
end
