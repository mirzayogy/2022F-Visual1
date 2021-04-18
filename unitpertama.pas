unit unitPertama;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TFormPertama }

  TFormPertama = class(TForm)
    btnKanan: TButton;
    btnKiri: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    LabelPertama: TLabel;
    RadioGroup1: TRadioGroup;
    procedure btnKananClick(Sender: TObject);
    procedure btnKiriClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbKotaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LabelPertamaMouseEnter(Sender: TObject);
    procedure LabelPertamaMouseLeave(Sender: TObject);
  private

  public

  end;

var
  FormPertama: TFormPertama;

implementation

{$R *.lfm}

{ TFormPertama }

procedure TFormPertama.FormCreate(Sender: TObject);
begin
  labelPertama.Caption:='Ubah dari form create';
  formPertama.Caption:='Ini juga diubah';

  //ShowMessage('dari onCreate');
end;

procedure TFormPertama.FormShow(Sender: TObject);
begin
  //showMessage('dari onShow');
  //btnReset.Click;
  btnResetClick(Sender);
end;

procedure TFormPertama.LabelPertamaMouseEnter(Sender: TObject);
begin
  labelPertama.Font.Size:=labelPertama.Font.Size+2;
  labelPertama.Left:=LabelPertama.Left-4;
  labelPertama.Top:=LabelPertama.Top-4;
end;

procedure TFormPertama.LabelPertamaMouseLeave(Sender: TObject);
begin
  labelPertama.Font.Size:=labelPertama.Font.Size-2;
  labelPertama.Left:=LabelPertama.Left+4;
  labelPertama.Top:=LabelPertama.Top+4;
end;

procedure TFormPertama.FormActivate(Sender: TObject);
begin
  //showMessage('dari onActivate');
end;

procedure TFormPertama.btnKiriClick(Sender: TObject);
begin
  labelPertama.left:=labelPertama.left-8;
end;

procedure TFormPertama.btnResetClick(Sender: TObject);
begin
 Edit1.Text := '0';
 Edit2.Text := '0';
 Edit3.Text := '0';
 cbKota.ItemIndex := -1;
 cbKota.Text:='-- Pilih Kota --';
 RadioGroup1.ItemIndex:= -1;
 Edit4.Text:='';
 Edit5.Text:='';
end;

procedure TFormPertama.Button1Click(Sender: TObject);
var
  angkaPertama:Integer;
  angkaKedua:Integer;
  hasil:Integer;
begin
  angkaPertama:=StrToInt(Edit1.Text);
  angkaKedua:=StrToInt(Edit2.text);
  hasil:= angkaPertama + angkaKedua;
   Edit3.Text := IntToStr(hasil);
end;

procedure TFormPertama.Button2Click(Sender: TObject);
begin
  Edit4.Text := cbKota.Text;
end;

procedure TFormPertama.Button3Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0  then
    Edit5.text:='Laki-laki'
  else if RadioGroup1.ItemIndex=1 then
    Edit5.text:='Perempuan'
  else
    ShowMessage('Pilih dulu jenis kelamin');
end;

procedure TFormPertama.cbKotaChange(Sender: TObject);
begin
  Edit4.text := cbKota.text;
end;

procedure TFormPertama.btnKananClick(Sender: TObject);
begin
  labelPertama.Left:=labelPertama.left+8;
end;

end.

