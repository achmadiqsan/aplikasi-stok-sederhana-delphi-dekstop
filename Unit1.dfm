object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'MENU'
  ClientHeight = 278
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 160
    Top = 120
    object DATAPRODUK1: TMenuItem
      Caption = 'DATA PRODUK'
      OnClick = DATAPRODUK1Click
    end
    object DATAPENJUALAN1: TMenuItem
      Caption = 'DATA PENJUALAN'
      OnClick = DATAPENJUALAN1Click
    end
    object REKAPLAPORAN1: TMenuItem
      Caption = 'REKAP LAPORAN'
      OnClick = REKAPLAPORAN1Click
    end
    object SETTINGUSER1: TMenuItem
      Caption = 'SETTING USER'
    end
    object EXIT1: TMenuItem
      Caption = 'EXIT'
      object YA1: TMenuItem
        Caption = 'YA'
        OnClick = YA1Click
      end
      object IDAK1: TMenuItem
        Caption = 'TIDAK'
      end
    end
  end
end
