object f_fasien: Tf_fasien
  Left = 234
  Top = 156
  Width = 1044
  Height = 540
  Caption = 'PASIEN'
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
    Left = 24
    Top = 72
    Width = 185
    Height = 33
    Caption = 'DATA PASIEN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 168
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
  object Label3: TLabel
    Left = 24
    Top = 232
    Width = 176
    Height = 33
    Caption = 'Nama Pasien'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 312
    Width = 172
    Height = 33
    Caption = 'Umur Pasien'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 400
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
  object e_idpasien: TEdit
    Left = 248
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e_namapasien: TEdit
    Left = 248
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e_umurpasien: TEdit
    Left = 256
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e_jenis: TEdit
    Left = 248
    Top = 408
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object bt_new: TButton
    Left = 616
    Top = 104
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 4
    OnClick = bt_newClick
  end
  object bt_save: TButton
    Left = 728
    Top = 104
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 5
    OnClick = bt_saveClick
  end
  object bt_delete: TButton
    Left = 616
    Top = 176
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 6
  end
  object bt_exit: TButton
    Left = 736
    Top = 176
    Width = 75
    Height = 25
    Caption = 'EXIT'
    TabOrder = 7
    OnClick = bt_exitClick
  end
  object dgpasien: TDBGrid
    Left = 592
    Top = 328
    Width = 425
    Height = 169
    DataSource = dm.DSpasien
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_pasien'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_pasien'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'umur_pasien'
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
  object PopupMenu1: TPopupMenu
    Left = 880
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
