object dm: Tdm
  OldCreateOrder = False
  Left = 407
  Top = 131
  Height = 346
  Width = 370
  object Konekdb: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=db_rumahsakit;Initial Catalog=db_rumahsakit'
    LoginPrompt = False
    Left = 48
    Top = 80
  end
  object tb_dokter: TADODataSet
    Active = True
    Connection = Konekdb
    CursorType = ctStatic
    CommandText = 'select * from tb_dokter'
    Parameters = <>
    Left = 160
    Top = 24
  end
  object tb_pasien: TADODataSet
    Active = True
    Connection = Konekdb
    CursorType = ctStatic
    CommandText = 'select * from tb_pasien'
    Parameters = <>
    Left = 160
    Top = 96
  end
  object tb_obat: TADODataSet
    Active = True
    Connection = Konekdb
    CursorType = ctStatic
    CommandText = 'select * from tb_obat'
    Parameters = <>
    Left = 160
    Top = 160
  end
  object DSdokter: TDataSource
    DataSet = tb_dokter
    Left = 248
    Top = 32
  end
  object DSpasien: TDataSource
    DataSet = tb_pasien
    Left = 248
    Top = 96
  end
  object DSobat: TDataSource
    DataSet = tb_obat
    Left = 248
    Top = 160
  end
end
