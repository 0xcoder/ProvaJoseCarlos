object FrmFuncionarios: TFrmFuncionarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcionarios'
  ClientHeight = 443
  ClientWidth = 689
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
    Top = 48
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Label2: TLabel
    Left = 16
    Top = 83
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 115
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label5: TLabel
    Left = 16
    Top = 150
    Width = 26
    Height = 13
    Caption = 'Setor'
  end
  object Label4: TLabel
    Left = 288
    Top = 48
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label6: TLabel
    Left = 288
    Top = 75
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object Label7: TLabel
    Left = 288
    Top = 102
    Width = 45
    Height = 13
    Caption = 'Endereco'
  end
  object Label8: TLabel
    Left = 288
    Top = 129
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label9: TLabel
    Left = 288
    Top = 156
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label10: TLabel
    Left = 288
    Top = 183
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 45
    Width = 121
    Height = 21
    DataField = 'Id'
    DataSource = DataSource2
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 80
    Width = 194
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource2
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 64
    Top = 112
    Width = 75
    Height = 21
    DataField = 'Idade'
    DataSource = DataSource2
    TabOrder = 2
  end
  object Cadastrar: TButton
    Left = 48
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = CadastrarClick
  end
  object Button1: TButton
    Left = 129
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 232
    Width = 665
    Height = 169
    DataSource = DataSource2
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit3: TDBEdit
    Left = 64
    Top = 147
    Width = 194
    Height = 21
    DataField = 'setor'
    DataSource = DataSource2
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 336
    Top = 45
    Width = 177
    Height = 21
    DataField = 'Telefone'
    DataSource = DataSource2
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 336
    Top = 72
    Width = 177
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource2
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 336
    Top = 99
    Width = 177
    Height = 21
    DataField = 'Endereco'
    DataSource = DataSource2
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 336
    Top = 126
    Width = 177
    Height = 21
    DataField = 'Bairro'
    DataSource = DataSource2
    TabOrder = 10
  end
  object DBEdit9: TDBEdit
    Left = 336
    Top = 153
    Width = 177
    Height = 21
    DataField = 'CEP'
    DataSource = DataSource2
    TabOrder = 11
  end
  object DBEdit10: TDBEdit
    Left = 336
    Top = 180
    Width = 177
    Height = 21
    DataField = 'numero'
    DataSource = DataSource2
    TabOrder = 12
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123;Persist Security Info=True;User ' +
      'ID=postgres;Data Source=trabalho;Initial Catalog=trabalho'
    LoginPrompt = False
    Left = 600
    Top = 128
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from funcionario')
    Left = 552
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 616
    Top = 32
  end
end
