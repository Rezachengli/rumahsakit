object fdokter: Tfdokter
  Left = 323
  Top = 209
  Width = 1044
  Height = 468
  Caption = 'DATA DOKTER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object i_judul: TLabel
    Left = 32
    Top = 56
    Width = 121
    Height = 24
    Caption = 'Data Dokter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 112
    Width = 133
    Height = 33
    Caption = 'ID Dokter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 192
    Width = 179
    Height = 33
    Caption = 'Nama Dokter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 272
    Width = 175
    Height = 33
    Caption = 'Umur Dokter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 344
    Width = 187
    Height = 33
    Caption = 'Jenis Kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dgdokter: TDBGrid
    Left = 536
    Top = 280
    Width = 433
    Height = 209
    DataSource = dm.DSdokter
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_dokter'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_dokter'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'umur_dokter'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Width = 100
        Visible = True
      end>
  end
  object e_iddokter: TEdit
    Left = 240
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e_namadokter: TEdit
    Left = 232
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e_umurdokter: TEdit
    Left = 240
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e_jeniskelamin: TEdit
    Left = 240
    Top = 352
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object bt_new: TButton
    Left = 536
    Top = 184
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 5
    OnClick = bt_newClick
  end
  object bt_save: TButton
    Left = 648
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 6
    OnClick = bt_saveClick
  end
  object bt_delete: TButton
    Left = 536
    Top = 240
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 7
  end
  object bt_exit: TButton
    Left = 648
    Top = 240
    Width = 75
    Height = 25
    Caption = 'EXIT'
    TabOrder = 8
    OnClick = bt_exitClick
  end
  object bt_cetak: TButton
    Left = 776
    Top = 184
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 9
    OnClick = bt_cetakClick
  end
  object PopupMenu1: TPopupMenu
    Left = 944
    Top = 24
    object EditData1: TMenuItem
      Caption = 'Edit Data'
      OnClick = EditData1Click
    end
    object HapusData1: TMenuItem
      Caption = 'Hapus Data'
      OnClick = HapusData1Click
    end
  end
end
