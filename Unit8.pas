unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TFrmLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  Edit1, Edit2 : string;

implementation

{$R *.dfm}

uses Unit3;

procedure TFrmLogin.Button1Click(Sender: TObject);
begin
ADOQUERY1.close;
ADOQUERY1.SQL.clear;
ADOQUERY1.SQL.Add('select * from usuario where usuario=:Pusuario and senha=:Psenha');
ADOQUERY1.Parameters.ParamByName('Pusuario').Value:=Edit1.Text;
ADOQUERY1.Parameters.ParamByName('Psenha').Value:=Edit2.Text;
ADOQUERY1.Open;
if ADOQUERY1.RecordCount=1 then
 begin
   showmessage('Bem-Vindo(a): '+ADOQUERY1.FieldByName('nome').AsString);
   FrmPrincipal.caption:='Projeto Alpha X - Usu?rio:'+ADOQUERY1.FieldByName('nome').AsString;

   FrmLogin.hide;
   FrmPrincipal.show;
   end
   else
   begin
    showmessage('Usu?rio ou senha inv?lidos');
    close;
    application.Terminate;

   end;
end;

end.
