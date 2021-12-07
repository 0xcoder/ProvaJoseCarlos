unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmNotaFiscal = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotaFiscal: TFrmNotaFiscal;

implementation

{$R *.dfm}

procedure TFrmNotaFiscal.Button1Click(Sender: TObject);
begin
ADOQUERY1.close;
ADOQUERY1.SQL.Clear;
ADOQUERY1.SQL.Add('select * from notafiscal where "Nome" LIKE :Pnome');
ADOQUERY1.Parameters.ParamByName('Pnome').Value:='%'+Edit1.Text+'%';
ADOQUERY1.Open;
if ADOQUERY1.RecordCount=0 then
showmessage('Nenhum registro foi encontrado!');
end;

end.
