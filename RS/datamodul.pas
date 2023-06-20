unit datamodul;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    Konekdb: TADOConnection;
    tb_dokter: TADODataSet;
    tb_pasien: TADODataSet;
    tb_obat: TADODataSet;
    DSdokter: TDataSource;
    DSpasien: TDataSource;
    DSobat: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
