unit From_Pasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids;

type
  Tf_fasien = class(TForm)
    i_judul: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    e_idpasien: TEdit;
    e_namapasien: TEdit;
    e_umurpasien: TEdit;
    e_jenis: TEdit;
    bt_new: TButton;
    bt_save: TButton;
    bt_delete: TButton;
    bt_exit: TButton;
    PopupMenu1: TPopupMenu;
    EDITDATA1: TMenuItem;
    HAPUSDATA1: TMenuItem;
    dgpasien: TDBGrid;
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
  f_fasien: Tf_fasien;

implementation

uses
  datamodul;

{$R *.dfm}

procedure Tf_fasien.bt_newClick(Sender: TObject);
begin
e_idpasien.Text:='';
e_namapasien.Text:='';
e_umurpasien.Text:='';
e_jenis.Text:='';

end;

procedure Tf_fasien.bt_saveClick(Sender: TObject);
begin
with dm.tb_pasien do
begin
if i_judul.Caption='Data PASIEN' then
begin;
Append;
FieldValues ['id_pasien']:=e_idpasien.Text;
end

else Edit;

    FieldValues ['nama_pasien']:=e_namapasien.Text;
    FieldValues ['umur_pasien']:=e_umurpasien.Text;
    FieldValues ['jenis_kelamin']:=e_jenis.Text;
    Post;
    First;
end;
  end;
procedure Tf_fasien.bt_exitClick(Sender: TObject);
begin
begin
  Close;

end;
end;
procedure Tf_fasien.EDITDATA1Click(Sender: TObject);
begin
with f_fasien do
i_judul.Caption:='Edit DATA FASIEN';
e_idpasien.Text:=dgpasien.Fields[0].value;
e_namapasien.Text:=dgpasien.Fields[1].value;
e_umurpasien.Text:=dgpasien.Fields[2].value;
e_jenis.Text:=dgpasien.Fields[3].value;
end;

procedure Tf_fasien.HAPUSDATA1Click(Sender: TObject);
begin
with dm.tb_pasien do
begin
  Delete;
  First;

end;
      end;
end.
