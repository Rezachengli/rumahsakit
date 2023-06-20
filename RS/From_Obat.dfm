object f_obat: Tf_obat
  Left = 235
  Top = 152
  Width = 1043
  Height = 540
  Caption = 'OBAT'
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
    Left = 160
    Top = 0
    Width = 156
    Height = 33
    Caption = 'DATA OBAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 106
    Height = 33
    Caption = 'ID Obat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 176
    Width = 152
    Height = 33
    Caption = 'Nama Obat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 232
    Width = 157
    Height = 33
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 304
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
  object Label6: TLabel
    Left = 0
    Top = 376
    Width = 130
    Height = 33
    Caption = 'ID Pasien'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dgobat: TDBGrid
    Left = 496
    Top = 272
    Width = 529
    Height = 233
    DataSource = dm.DSobat
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_obat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_obat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_dokter'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pasien'
        Width = 100
        Visible = True
      end>
  end
  object e_idobat: TEdit
    Left = 200
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e_namaobat: TEdit
    Left = 200
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e_keterangan: TEdit
    Left = 200
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object e_iddokter: TEdit
    Left = 200
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object e_idpasien: TEdit
    Left = 200
    Top = 384
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object bt_new: TButton
    Left = 520
    Top = 128
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 6
    OnClick = bt_newClick
  end
  object bt_save: TButton
    Left = 632
    Top = 128
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 7
    OnClick = bt_saveClick
  end
  object bt_delete: TButton
    Left = 520
    Top = 184
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 8
  end
  object bt_exit: TButton
    Left = 640
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EXIT'
    TabOrder = 9
    OnClick = bt_exitClick
  end
  object PopupMenu1: TPopupMenu
    Left = 776
    Top = 128
    object EDITDATA1: TMenuItem
      Caption = 'EDIT DATA'
      OnClick = EDITDATA1Click
    end
    object HAPUSDATA1: TMenuItem
      Caption = 'HAPUS DATA'
      OnClick = HAPUSDATA1Click
    end
  end
end
