unit datamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    FDQuery2nopenjualan: TStringField;
    FDQuery2tglpenjualan: TDateField;
    FDQuery2id_produk: TIntegerField;
    FDQuery2itemterjual: TIntegerField;
    FDQuery2total_penjualan: TIntegerField;
    FDQuery2nama_produk: TStringField;
    FDQuery2stokproduk: TIntegerField;
    FDQuery2harga_produk: TIntegerField;
    FDQuery1id_produk: TFDAutoIncField;
    FDQuery1nama_produk: TStringField;
    FDQuery1harga: TIntegerField;
    FDQuery1stokproduk: TIntegerField;
    FDQuery1satuan: TStringField;
    FDQuery1tglmasuk: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
