unit datarumahsakit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  Tfrom = class(TForm)
    MainMenu1: TMainMenu;
    DATADOKTER1: TMenuItem;
    DATADOKTER2: TMenuItem;
    DATAPASIEN1: TMenuItem;
    DATAOBAT1: TMenuItem;
    procedure DATADOKTER2Click(Sender: TObject);
    procedure DATAPASIEN1Click(Sender: TObject);
    procedure DATAOBAT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  from: Tfrom;

implementation

uses From_Dokter, From_Pasien, From_Obat;

{$R *.dfm}

procedure Tfrom.DATADOKTER2Click(Sender: TObject);
begin
    fdokter.Showmodal;
end;

procedure Tfrom.DATAPASIEN1Click(Sender: TObject);
begin
      f_fasien.Showmodal;
end;

procedure Tfrom.DATAOBAT1Click(Sender: TObject);
begin
          f_obat.Showmodal;
end;

end.
