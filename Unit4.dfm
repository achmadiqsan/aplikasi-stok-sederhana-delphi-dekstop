object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'CARI PRODUK'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 447
    Height = 153
    Align = alBottom
    DataSource = DM.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'nama_produk'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 176
    Top = 8
    Width = 75
    Height = 25
    Caption = 'close'
    TabOrder = 1
    OnClick = Button1Click
  end
end
