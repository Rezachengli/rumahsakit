unit From_Obat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids;

type
  Tf_obat = class(TForm)
    dgobat: TDBGrid;
    i_judul: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    e_idobat: TEdit;
    e_namaobat: TEdit;
    e_keterangan: TEdit;
    e_iddokter: TEdit;
    e_idpasien: TEdit;
    bt_new: TButton;
    bt_save: TButton;
    bt_delete: TButton;
    bt_exit: TButton;
    PopupMenu1: TPopupMenu;
    EDITDATA1: TMenuItem;
    HAPUSDATA1: TMenuItem;
    procedure bt_newClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_exitClick(Sender: TObject);
    procedure EDITDATA1Click(Sender: TObject);
    procedure HAPUSDATA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_obat: Tf_obat;

implementation

uses
  datamodul;

{$R *.dfm}

procedure Tf_obat.bt_newClick(Sender: TObject);
begin
e_idobat.Text:='';
e_namaobat.Text:='';
e_keterangan.Text:='';
e_iddokter.Text:='';
e_idpasien.Text:='';
end;

procedure Tf_obat.bt_saveClick(Sender: TObject);
begin
with dm.tb_obat do
begin
if i_judul.Caption='Data Obat' then
begin;
Append;
FieldValues ['id_obat']:=e_idobat.Text;
end

else Edit;

    FieldValues ['nama_obat']:=e_namaobat.Text;
    FieldValues ['keterangan']:=e_keterangan.Text;
    FieldValues ['id_dokter']:=e_iddokter.Text;
    FieldValues ['id_pasien']:=e_idpasien.Text;
    Post;
    First;
end;
   end;
procedure Tf_obat.bt_exitClick(Sender: TObject);
begin
Close;
end;

procedure Tf_obat.EDITDATA1Click(Sender: TObject);
begin
with f_obat do
i_judul.Caption:='Edit DATA OBAT';
e_idobat.Text:=dgobat.Fields[0].value;
e_namaobat.Text:=dgobat.Fields[1].value;
e_keterangan.Text:=dgobat.Fields[2].value;
e_iddokter.Text:=dgobat.Fields[3].value;
e_idpasien.Text:=dgobat.Fields[4].value;
end;

procedure Tf_obat.HAPUSDATA1Click(Sender: TObject);
begin
with dm.tb_obat do
begin
  Delete;
  First;
end;
  end;
end.
