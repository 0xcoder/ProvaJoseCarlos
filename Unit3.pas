unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Produtos1: TMenuItem;
    Funcionarios1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    ListadeProdutos1: TMenuItem;
    ListadeFuncionarios1: TMenuItem;
    ListadeNotas1: TMenuItem;
    SAIR2: TMenuItem;
    CadastrarProduto1: TMenuItem;
    CadastrarFuncionario1: TMenuItem;
    CadastrarNota1: TMenuItem;
    procedure SAIR2Click(Sender: TObject);
    procedure CadastrarProduto1Click(Sender: TObject);
    procedure CadastrarFuncionario1Click(Sender: TObject);
    procedure CadastrarNota1Click(Sender: TObject);
    procedure ListadeProdutos1Click(Sender: TObject);
    procedure ListadeFuncionarios1Click(Sender: TObject);
    procedure ListadeNotas1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses Unit2, Unit1, Unit5, Unit4, Unit6, Unit7;


procedure TFrmPrincipal.CadastrarFuncionario1Click(Sender: TObject);
begin
FrmFuncionarios.show;
end;

procedure TFrmPrincipal.CadastrarNota1Click(Sender: TObject);
begin
FrmNota.show;
end;

procedure TFrmPrincipal.CadastrarProduto1Click(Sender: TObject);
begin
FrmProdutos.show;
end;


procedure TFrmPrincipal.ListadeFuncionarios1Click(Sender: TObject);
begin
FrmListaFuncionario.show;
end;

procedure TFrmPrincipal.ListadeNotas1Click(Sender: TObject);
begin
FrmNotaFiscal.show;
end;

procedure TFrmPrincipal.ListadeProdutos1Click(Sender: TObject);
begin
FrmConsultaProduto.show;
end;

procedure TFrmPrincipal.SAIR2Click(Sender: TObject);
begin
application.Terminate;
end;

end.
