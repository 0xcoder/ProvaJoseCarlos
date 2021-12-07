unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmProdutos = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.dfm}

procedure TFrmProdutos.Button1Click(Sender: TObject);
begin
ADOQUERY1.Append;
end;

procedure TFrmProdutos.Button2Click(Sender: TObject);
begin
ADOQUERY1.Edit;
end;

procedure TFrmProdutos.Button3Click(Sender: TObject);
begin
ADOQUERY1.Delete;
end;

procedure TFrmProdutos.Button4Click(Sender: TObject);
begin
ADOQUERY1.First;
end;

procedure TFrmProdutos.Button5Click(Sender: TObject);
begin
ADOQUERY1.Post;
end;

procedure TFrmProdutos.Button6Click(Sender: TObject);
begin
ADOQUERY1.Last;
end;

procedure TFrmProdutos.Button7Click(Sender: TObject);
begin
ADOQUERY1.Next;
end;

procedure TFrmProdutos.Button8Click(Sender: TObject);
begin
ADOQUERY1.prior;
end;

end.
