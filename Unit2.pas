unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids;

type
  TFrmFuncionarios = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    ADOConnection2: TADOConnection;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Cadastrar: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    procedure CadastrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionarios: TFrmFuncionarios;

implementation

{$R *.dfm}

procedure TFrmFuncionarios.Button1Click(Sender: TObject);
begin
ADOQUERY2.Append;
end;

procedure TFrmFuncionarios.CadastrarClick(Sender: TObject);
begin
ADOQUERY2.Post;
end;

end.
