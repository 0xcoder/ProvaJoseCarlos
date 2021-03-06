program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FrmProdutos},
  Unit2 in 'Unit2.pas' {FrmFuncionarios},
  Unit3 in 'Unit3.pas' {FrmPrincipal},
  Unit5 in 'Unit5.pas' {FrmNota},
  Unit4 in 'Unit4.pas' {FrmConsultaProduto},
  Unit6 in 'Unit6.pas' {FrmListaFuncionario},
  Unit7 in 'Unit7.pas' {FrmNotaFiscal},
  Unit8 in 'Unit8.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmFuncionarios, FrmFuncionarios);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmNota, FrmNota);
  Application.CreateForm(TFrmConsultaProduto, FrmConsultaProduto);
  Application.CreateForm(TFrmListaFuncionario, FrmListaFuncionario);
  Application.CreateForm(TFrmNotaFiscal, FrmNotaFiscal);
  Application.Run;
end.
