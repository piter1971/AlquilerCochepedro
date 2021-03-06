unit U_Coche;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Controls, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Buttons, Data.Bind.Components, Data.Bind.Grid,
  Vcl.Grids, Data.Bind.DBScope, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Bind.Navigator, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBGrids;

type
  TFormcoche = class(TForm)
    Label6: TLabel;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BindSourceDB1: TBindSourceDB;
    ComboBoxMarca: TComboBox;
    LinkFillControlToFieldMarca: TLinkFillControlToField;
    BindingsList1: TBindingsList;
    DBImage1: TDBImage;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxMarcaChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formcoche: TFormcoche;

implementation
uses U_module, U_CaractCoche;

{$R *.dfm}

procedure TFormcoche.BitBtn1Click(Sender: TObject);
begin
if (DBEdit1.Text='') and (DBEdit2.Text='') and  (DBEdit3.Text='')
and (DBEdit4.Text='')  and (DBEdit5.Text='') then
   ShowMessage('los campos no pueden estar vacios')

  else

end;













procedure TFormcoche.Button1Click(Sender: TObject);
begin
form4.GroupBox2.Caption:='Matricula: '+DBEdit1.Text;
DataModule3.FDTCaractCoche.Filtered:=false;
DataModule3.FDTCaractCoche.Filter:='matri='+QuotedStr(DBEdit1.Text);
DataModule3.FDTCaractCoche.Filtered:=true;
Form4.showmodal;
end;

procedure TFormcoche.ComboBoxMarcaChange(Sender: TObject);
var
marca :String;
begin
   Marca := ComboBoxMarca.Text;
DataModule3.FDTCoches.Append;
DataModule3.FDTCoches.FieldByName('Marca').AsString:=Marca;
end;

procedure TFormcoche.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
begin
  Key:=#0;
end;

end;

procedure TFormcoche.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
begin
  Key:=#0;
end;

end;

procedure TFormcoche.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if not(Key in ['0'..'9',#8]) then
begin
  Key:=#0;
end;

end;

procedure TFormcoche.DBImage1Click(Sender: TObject);
begin
if DataModule3.OpenDFotocoche.Execute then
  DBImage1.Picture.LoadFromFile(DataModule3.OpenDFotocoche.FileName);

end;

procedure TFormcoche.FormActivate(Sender: TObject);
begin
DataModule3.FDTCoches.Refresh;
DataModule3.FDTCoches.First;
end;

procedure TFormcoche.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

end.
