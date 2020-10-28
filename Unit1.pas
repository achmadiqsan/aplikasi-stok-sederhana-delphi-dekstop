unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    DATAPRODUK1: TMenuItem;
    DATAPENJUALAN1: TMenuItem;
    REKAPLAPORAN1: TMenuItem;
    SETTINGUSER1: TMenuItem;
    EXIT1: TMenuItem;
    YA1: TMenuItem;
    IDAK1: TMenuItem;
    procedure DATAPRODUK1Click(Sender: TObject);
    procedure YA1Click(Sender: TObject);
    procedure DATAPENJUALAN1Click(Sender: TObject);
    procedure REKAPLAPORAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit6;

procedure TForm1.DATAPENJUALAN1Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.DATAPRODUK1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.REKAPLAPORAN1Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm1.YA1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
