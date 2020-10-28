unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses datamodule, Unit3;

procedure TForm4.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
  Form3.Edit2.Text := DM.FDQuery1['nama_produk'];
  Form3.Label4.Caption := DM.FDQuery1['harga'];
  Form3.Label6.Caption := DM.FDQuery1['id_produk'];
  close;
end;

end.
