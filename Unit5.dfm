object FrmNota: TFrmNota
  Left = 0
  Top = 0
  Caption = 'Nota Fiscal'
  ClientHeight = 251
  ClientWidth = 460
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
    Left = 32
    Top = 77
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Label2: TLabel
    Left = 32
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 32
    Top = 107
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label4: TLabel
    Left = 32
    Top = 131
    Width = 51
    Height = 13
    Caption = 'Enderee'#231'o'
  end
  object Label5: TLabel
    Left = 32
    Top = 161
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label6: TLabel
    Left = 32
    Top = 24
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object DBEdit1: TDBEdit
    Left = 89
    Top = 77
    Width = 121
    Height = 21
    DataField = 'CNPJ'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 89
    Top = 48
    Width = 121
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 89
    Top = 104
    Width = 121
    Height = 21
    DataField = 'Cidade'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 89
    Top = 131
    Width = 121
    Height = 21
    DataField = 'Endereco'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 89
    Top = 158
    Width = 121
    Height = 21
    DataField = 'Numero'
    DataSource = DataSource1
    TabOrder = 4
  end
  object Button1: TButton
    Left = 231
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Iimprimir'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 89
    Top = 24
    Width = 121
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 7
  end
  object Button3: TButton
    Left = 135
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=trabalho'
    LoginPrompt = False
    Left = 288
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from notafiscal')
    Left = 336
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 360
    Top = 80
  end
end
