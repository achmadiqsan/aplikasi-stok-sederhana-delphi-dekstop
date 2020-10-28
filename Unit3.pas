unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button3: TButton;
    Label4: TLabel;
    Label6: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses datamodule, Unit4;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  DateTimePicker1.Date := Now;
  Label4.Caption := '0000';
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  A : Integer;
begin
  A := StrToInt(Edit3.Text) * StrToInt(Label4.Caption);
  DM.FDQuery2.Append;
  DM.FDQuery2['nopenjualan'] := Edit1.Text;
  DM.FDQuery2['tglpenjualan'] := DateTimePicker1.Date;
  DM.FDQuery2['id_produk'] := Label6.Caption;
  DM.FDQuery2['itemterjual'] := StrToInt(Edit3.Text);
  DM.FDQuery2['total_penjualan'] := A;
  DM.FDQuery2.Post;
  if DM.FDQuery1.Locate('id_produk',Label6.Caption,[]) then
    begin
      DM.FDQuery1.Edit;
      DM.FDQuery1['stokproduk'] := DM.FDQuery1['stokproduk'] - StrToInt(Edit3.Text);
      DM.FDQuery1.Post;
    end;
  Edit1.Text := '';
      Edit2.Text := '';
      Edit3.Text := '';
      DateTimePicker1.Date := Now;
  DM.FDQuery2.Close;
  DM.FDQuery2.Open;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  if DM.FDQuery2.IsEmpty then
    begin
      ShowMessage('DATA KOSONG');
    end
  else
  if Application.MessageBox('YAKIN HAPUS DATA ?? ','PESAN',MB_YESNO or MB_ICONQUESTION)=MRYES then
    begin
      DM.FDQuery2.Delete;
      if DM.FDQuery1.Locate('id_produk',Label6.Caption,[]) then
        begin
          DM.FDQuery1.Edit;
          DM.FDQuery1['stokproduk'] := DM.FDQuery1['stokproduk'] + StrToInt(Edit3.Text);
          DM.FDQuery1.Post;
        end;
      DM.FDQuery2.Close;
  DM.FDQuery2.Open;
      Edit1.Text := '';
      Edit2.Text := '';
      Edit3.Text := '';
      DateTimePicker1.Date := Now;
    end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
    Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  DateTimePicker1.Date := Now;
    Label4.Caption := '0000';
  close;
end;

procedure TForm3.Button6Click(Sender: TObject);
var
  a : string;
begin
  DateTimePicker1.Date := Now;
a := IntToStr(Dm.FDQuery2.RecordCount +1);
Edit1.Text := Copy(DateToStr(DateTimePicker1.Date),1,10)+'-'+a;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
    if DM.FDQuery1.IsEmpty then
    begin
      ShowMessage('DATA KOSONG');
    end
  else
    begin
      Edit1.Text := DM.FDQuery2['nopenjualan'];
      Edit2.Text := DM.FDQuery2['nama_produk'];
      Edit3.Text := DM.FDQuery2['itemterjual'];
      Label6.Caption := DM.FDQuery2['id_produk'];
    end;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  DM.FDQuery2.Close;
  DM.FDQuery2.Open;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
    Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  DateTimePicker1.Date := Now;
    Label4.Caption := '0000';
end;

end.
