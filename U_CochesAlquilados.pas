unit U_CochesAlquilados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Vcl.Grids, Data.Bind.DBScope, Vcl.DBGrids;

type
  TFormCochAlq = class(TForm)
    Panel1: TPanel;
    BtnAlquilar: TButton;
    BtnEliminar: TButton;
    BtnAccesorios: TButton;
    BtnDetalles: TButton;
    BtnImprimirDet: TButton;
    DBGrid1: TDBGrid;
    procedure BtnEliminarClick(Sender: TObject);

    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BtnAccesoriosClick(Sender: TObject);
    procedure BtnDetallesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnAlquilarClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FormCochAlq: TFormCochAlq;

implementation
uses U_module, U_VerCaractCoche,  U_Alquiler_Acces, U_Det_Alquiler, U_Alquiler;

{$R *.dfm}

procedure TFormCochAlq.BtnAccesoriosClick(Sender: TObject);
var
cad :integer;
begin
   cad := DataModule3.FDTAlquiler.FieldByName('id_tabla').AsInteger;
form13.GroupBox2.Caption:=DataModule3.FDTAlquiler.FieldByName('id_tabla').AsString;
  DataModule3.FDTAcces_Aql.Filtered:=false;
      DataModule3.FDTAcces_Aql.Filter:='Alquiler='+inttostr(cad);
  DataModule3.FDTAcces_Aql.Filtered:=true;

form13.showmodal;
end;

procedure TFormCochAlq.BtnAlquilarClick(Sender: TObject);
begin
Formalq.showmodal;
end;

procedure TFormCochAlq.BtnDetallesClick(Sender: TObject);
var
matri :string;
begin
matri:=DataModule3.FDTAlquiler.FieldByName('Matriculas').AsString;
DataModule3.FDQuery2.Close;
DataModule3.FDQuery2.SQL.Text:='select Caract from CARACT_COCHE where matri='+ QuotedStr(matri);
DataModule3.FDQuery2.Open;
form14.showmodal;

end;

procedure TFormCochAlq.BtnEliminarClick(Sender: TObject);
  begin
DBGrid1.DataSource.Dataset.Delete;

  DataModule3.FDTAcces.Refresh;

end;

procedure TFormCochAlq.FormActivate(Sender: TObject);
begin
DataModule3.FDTAlquiler.Refresh;
end;

procedure TFormCochAlq.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

procedure TFormCochAlq.FormCreate(Sender: TObject);
begin
DBGrid1.DataSource.Dataset.Edit;

end;

end.