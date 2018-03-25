unit U_Caract;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    DBLookupListBox1: TDBLookupListBox;
    Caracteristicas: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormActivate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses U_module;

{$R *.dfm}

procedure TForm3.FormActivate(Sender: TObject);
begin
DataModule3.FDTCaract.Refresh;
end;

procedure TForm3.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var
cad :string;
begin
cad := Caracteristicas.Text;
if DataModule3.FDTcaract.Locate( 'nombre_caract' , VarArrayof([cad]),[])
         then ShowMessage('Este nombre ya exsiste')
          else
begin

   DataModule3.FDTCaract.Append;
   DataModule3.FDTCaract.FieldByName('nombre_caract').AsString:=Caracteristicas.Text;
   DataModule3.FDTCaract.post;
   Caracteristicas.Clear;
      DataModule3.FDTCaract.Refresh;
         DataModule3.FDTCaract.close;
      DataModule3.FDTCaract.Open;
end;
end;






procedure TForm3.SpeedButton2Click(Sender: TObject);
var
cad :String   ;

begin

cad:=DBLookupListBox1.SelectedItem;
if MessageDlg('Desea Eliminar el registro',mtConfirmation,[mbYes,mbNo],0,mbYes)=mrYes
then
begin
 DataModule3.FDTCaract.close;
DataModule3.FDTCaract.SQL.Text:='Delete from CARACTERISTICAS where nombre_caract='+QuotedStr(cad)  ;
   DataModule3.FDTCaract.ExecSQL;
   DataModule3.FDTCaract .close;
   DataModule3.FDTCaract.Open;
end;
end;


end.
