unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TFrmConsultaProduto = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProduto: TFrmConsultaProduto;

implementation

{$R *.dfm}

procedure TFrmConsultaProduto.Button1Click(Sender: TObject);
begin
ADOQUERY1.close;
ADOQUERY1.SQL.Clear;
ADOQUERY1.SQL.Add('select * from produtos where "Nome" LIKE :Pnome');
ADOQUERY1.Parameters.ParamByName('Pnome').Value:='%'+Edit1.Text+'%';
ADOQUERY1.Open;
if ADOQUERY1.RecordCount=0 then
showmessage('Nenhum registro foi encontrado!');
end;

end.
