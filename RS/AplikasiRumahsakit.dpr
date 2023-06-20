program AplikasiRumahsakit;

uses
  Forms,
  From_Dokter in 'From_Dokter.pas' {fdokter},
  datamodul in 'datamodul.pas' {dm: TDataModule},
  From_Obat in 'From_Obat.pas' {f_obat},
  From_Pasien in 'From_Pasien.pas' {f_fasien},
  u_laporan in 'u_laporan.pas' {laporan},
  u_laporanobat in 'u_laporanobat.pas' {obat},
  u_laporanpasien in 'u_laporanpasien.pas' {Form1},
  datarumahsakit in 'datarumahsakit.pas' {from},
  Unit1 in 'Unit1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrom, from);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfdokter, fdokter);
  Application.CreateForm(Tf_fasien, f_fasien);
  Application.CreateForm(Tf_obat, f_obat);
  Application.CreateForm(Tlaporan, laporan);
  Application.CreateForm(Tobat, obat);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
