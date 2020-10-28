unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit5, datamodule;

procedure TForm6.Button1Click(Sender: TObject);
begin
  DM.FDQuery2.Filtered := False;
  DM.FDQuery2.Filter :='tglpenjualan>= '+Quotedstr(DateToStr(DateTimePicker1.Date))+'And tglpenjualan<= '+Quotedstr(DateToStr(DateTimePicker2.Date));
  Dm.FDQuery2.Filtered := True;
  Form5.QuickRep1.Preview;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Date := Now;
  DateTimePicker2.Date := Now;
end;

end.
