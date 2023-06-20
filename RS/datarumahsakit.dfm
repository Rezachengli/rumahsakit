object from: Tfrom
  Left = 248
  Top = 156
  Width = 1044
  Height = 540
  Caption = 'DATA RUMAH SAKIT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 392
    Top = 144
    object DATADOKTER1: TMenuItem
      Caption = 'DATA RUMAH SAKIT'
      object DATADOKTER2: TMenuItem
        Caption = 'DATA DOKTER'
        OnClick = DATADOKTER2Click
      end
      object DATAPASIEN1: TMenuItem
        Caption = 'DATA PASIEN'
        OnClick = DATAPASIEN1Click
      end
      object DATAOBAT1: TMenuItem
        Caption = 'DATA OBAT'
        OnClick = DATAOBAT1Click
      end
    end
  end
end
