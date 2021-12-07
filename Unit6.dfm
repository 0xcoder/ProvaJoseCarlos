object FrmListaFuncionario: TFrmListaFuncionario
  Left = 0
  Top = 0
  Caption = 'Lista de Funcionarios'
  ClientHeight = 436
  ClientWidth = 567
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
    Left = 16
    Top = 35
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object DBGrid1: TDBGrid
    Left = 16
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
    Top = 30
    Width = 153
    Height = 25
    Caption = 'Procurar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 51
    Top = 32
    Width = 287
    Height = 21
    TabOrder = 2
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=trabalho'
    LoginPrompt = False
    Left = 520
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from funcionario')
    Left = 608
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 555
    Top = 8
  end
end
