object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'DATA PRODUK'
  ClientHeight = 422
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 96
    Height = 19
    Caption = 'Nama Produk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 42
    Height = 19
    Caption = 'Harga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 86
    Height = 19
    Caption = 'Stok Produk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 344
    Top = 48
    Width = 48
    Height = 19
    Caption = 'Satuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 344
    Top = 88
    Width = 160
    Height = 19
    Caption = 'Tanggal Masuk Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 273
    Top = 128
    Width = 36
    Height = 19
    Caption = '0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 96
    Top = 8
    Width = 96
    Height = 19
    Caption = 'Nama Produk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 221
    Width = 686
    Height = 201
    Align = alBottom
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 684
      Height = 199
      Align = alClient
      DataSource = DM.DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
  end
  object Edit1: TEdit
    Left = 136
    Top = 50
    Width = 185
    Height = 21
    TabOrder = 1
    TextHint = 'Nama Produk'
  end
  object Edit2: TEdit
    Left = 136
    Top = 90
    Width = 185
    Height = 21
    TabOrder = 2
    TextHint = 'Harga'
  end
  object Edit3: TEdit
    Left = 136
    Top = 130
    Width = 113
    Height = 21
    TabOrder = 3
    TextHint = 'Stok Produk'
  end
  object Edit4: TEdit
    Left = 424
    Top = 50
    Width = 244
    Height = 21
    TabOrder = 4
    TextHint = 'Satuan'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 510
    Top = 90
    Width = 158
    Height = 21
    Date = 44132.000000000000000000
    Format = 'dd-MMM-yyyy'
    Time = 0.746446493052644700
    TabOrder = 5
  end
  object Button1: TButton
    Left = 104
    Top = 176
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 318
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 422
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 526
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 10
    OnClick = Button5Click
  end
end
