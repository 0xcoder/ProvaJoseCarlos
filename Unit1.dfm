object FrmProdutos: TFrmProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 463
  ClientWidth = 549
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
    Left = 24
    Top = 64
    Width = 68
    Height = 13
    Caption = 'Nome Produto'
  end
  object Label2: TLabel
    Left = 24
    Top = 110
    Width = 46
    Height = 13
    Caption = 'Descricao'
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 76
    Height = 13
    Caption = 'Tipo do Produto'
  end
  object Label4: TLabel
    Left = 24
    Top = 24
    Width = 52
    Height = 13
    Caption = 'ID Produto'
  end
  object Label5: TLabel
    Left = 24
    Top = 192
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label6: TLabel
    Left = 256
    Top = 24
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label7: TLabel
    Left = 256
    Top = 67
    Width = 26
    Height = 13
    Caption = 'Serial'
  end
  object Label8: TLabel
    Left = 256
    Top = 113
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 83
    Width = 193
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 125
    Width = 193
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 168
    Width = 193
    Height = 21
    DataField = 'TipoProduto'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 37
    Width = 121
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 208
    Width = 193
    Height = 21
    DataField = 'Fornecedor'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 256
    Top = 40
    Width = 193
    Height = 21
    DataField = 'Quantidade'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 256
    Top = 83
    Width = 193
    Height = 21
    DataField = 'Serial'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 256
    Top = 132
    Width = 193
    Height = 21
    DataField = 'Valor'
    DataSource = DataSource1
    TabOrder = 7
  end
  object Button1: TButton
    Left = 24
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Novo Registro'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 186
    Top = 273
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 186
    Top = 242
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 11
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 304
    Width = 553
    Height = 151
    DataSource = DataSource1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 344
    Top = 273
    Width = 105
    Height = 25
    Caption = 'Primeiro da Lista'
    TabOrder = 13
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 267
    Top = 273
    Width = 75
    Height = 25
    Caption = 'Ultimo'
    TabOrder = 14
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 267
    Top = 242
    Width = 75
    Height = 25
    Caption = 'Proximo'
    TabOrder = 15
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 348
    Top = 242
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 16
    OnClick = Button8Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=trabalho'
    LoginPrompt = False
    Left = 472
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produtos')
    Left = 472
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 472
    Top = 144
  end
end
