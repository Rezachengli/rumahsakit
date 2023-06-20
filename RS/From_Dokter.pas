unit From_Dokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Menus;

type
  Tfdokter = class(TForm)
    dgdokter: TDBGrid;
    i_judul: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    e_iddokter: TEdit;
    e_namadokter: TEdit;
    e_umurdokter: TEdit;
    e_jeniskelamin: TEdit;
    bt_new: TButton;
    bt_save: TButton;
    bt_delete: TButton;
    bt_exit: TButton;
    PopupMenu1: TPopupMenu;
    EditData1: TMenuItem;
    HapusData1: TMenuItem;
    bt_cetak: TButton;
    procedure bt_tambahClick(Sender: TObject);
    procedure bt_batalClick(Sender: TObject);
    procedure bt_simpanClick(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_exitClick(Sender: TObject);
    procedure EditData1Click(Sender: TObject);
    procedure HapusData1Click(Sender: TObject);
    procedure bt_cetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdokter: Tfdokter;

implementation

uses
  datamodul, u_laporan;

{$R *.dfm}

procedure Tfdokter.bt_tambahClick(Sender: TObject);
begin
 fdokter.ShowModal;
end;

procedure Tfdokter.bt_batalClick(Sender: TObject);
begin
 e_iddokter.text:='';
 e_namadokter.text:='';
 e_umurdokter.text:='';
 i_judul.caption:='DATA DOKTER';
 e_jeniskelamin.text:='';


end;

procedure Tfdokter.bt_simpanClick(Sender: TObject);
begin
with dm.tb_dokter do
begin
  if i_judul. Caption = 'DATA DOKTER' then
  begin;
    Append;
    FieldValues['id_dokter']:=e_iddokter.Text;
  end

  else Edit;
    FieldValues['nama_dokter']:=e_namadokter.Text;
    FieldValues['umur_dokter']:=e_umurdokter.Text;
    FieldValues['jenis_kelamin']:=e_jeniskelamin.Text;
end;
bt_batalClick(sender);
end;
  procedure Tfdokter.bt_newClick(Sender: TObject);
begin
e_iddokter.Text:='';
e_namadokter.Text:='';
e_umurdokter.Text:='';
e_jeniskelamin.Text:='';
end;

procedure Tfdokter.bt_saveClick(Sender: TObject);
begin
with dm.tb_dokter do
begin
if i_judul.Caption='Data Dokter' then
begin;
Append;
FieldValues ['id_dokter']:=e_iddokter.Text;
end

else Edit;

    FieldValues ['nama_dokter']:=e_namadokter.Text;
    FieldValues ['umur_dokter']:=e_umurdokter.Text;
    FieldValues ['jenis_kelamin']:=e_jeniskelamin.Text;
    Post;
    First;
end;

end;



procedure Tfdokter.bt_exitClick(Sender: TObject);
begin
Close;
end;

procedure Tfdokter.EditData1Click(Sender: TObject);
begin
with fdokter do
i_judul.Caption:='EditData1';
e_iddokter.Text:=dgdokter.Fields[0].value;
e_namadokter.Text:=dgdokter.Fields[1].value;
e_umurdokter.Text:=dgdokter.Fields[2].value;
e_jeniskelamin.Text:=dgdokter.Fields[3].value;

end;

procedure Tfdokter.HapusData1Click(Sender: TObject);
begin
with dm.tb_dokter do
begin
  Delete;
  First;
end;

end;
procedure Tfdokter.bt_cetakClick(Sender: TObject);
begin
  laporan.f_laporan.preview;
end;

end.
