unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses datamodule;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  DateTimePicker1.Date := Now;
  Label6.Caption := '0000';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  DM.FDQuery1.Append;
  DM.FDQuery1['nama_produk'] := Edit1.Text;
  DM.FDQuery1['harga'] := Edit2.Text;
  DM.FDQuery1['stokproduk'] := Edit3.Text;
  DM.FDQuery1['satuan'] := Edit4.Text;
  DM.FDQuery1['tglmasuk'] := DateTimePicker1.Date;
  DM.FDQuery1.Post;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  DateTimePicker1.Date := Now;
  Label6.Caption := '0000';
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  DM.FDQuery1.Edit;
  DM.FDQuery1['nama_produk'] := Edit1.Text;
  DM.FDQuery1['harga'] := Edit2.Text;
  DM.FDQuery1['stokproduk'] := Edit3.Text;
  DM.FDQuery1['satuan'] := Edit4.Text;
  DM.FDQuery1['tglmasuk'] := DateTimePicker1.Date;
  DM.FDQuery1.Post;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  DateTimePicker1.Date := Now;
  Label6.Caption := '0000';
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  if DM.FDQuery1.IsEmpty then
    begin
      ShowMessage('DATA KOSONG');
    end
  else
  if Application.MessageBox('YAKIN HAPUS DATA ?? ','PESAN',MB_YESNO or MB_ICONQUESTION)=MRYES then
    begin
      DM.FDQuery1.Delete;
      if DM.FDQuery2.Locate('nopenjualan',Label6.Caption,[]) then
        begin
          DM.FDQuery2.Delete;
        end;
      Edit1.Text := '';
      Edit2.Text := '';
      Edit3.Text := '';
      Edit4.Text := '';
      DateTimePicker1.Date := Now;
      Label6.Caption := '0000';
      DM.FDQuery1.Close;
      DM.FDQuery1.Open;
      DM.FDQuery2.Close;
      DM.FDQuery2.Open;
    end;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  DateTimePicker1.Date := Now;
  Label6.Caption := '0000';
  close;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  if DM.FDQuery1.IsEmpty then
    begin
      ShowMessage('DATA KOSONG');
    end
  else
    begin
      Label7.Caption := DM.FDQuery1['id_produk'] ;
      if DM.FDQuery2.Locate('id_produk',Label7.Caption,[]) then
        begin
          Label6.Caption := DM.FDQuery2['nopenjualan'];
        end;
      Edit1.Text := DM.FDQuery1['nama_produk']  ;
      Edit2.Text := DM.FDQuery1['harga']  ;
      Edit3.Text := DM.FDQuery1['stokproduk']  ;
      Edit4.Text := DM.FDQuery1['satuan']  ;
      DateTimePicker1.Date := DM.FDQuery1['tglmasuk']  ;
    end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  DM.FDQuery1.Close;
  DM.FDQuery1.Open;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  DateTimePicker1.Date := Now;
  Label6.Caption := '0000';
end;

end.
