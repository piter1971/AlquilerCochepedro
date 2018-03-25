unit U_BuscarVarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBLBXMarca: TDBLookupComboBox;
    DBLBXModelo: TDBLookupComboBox;
    CHBXMarca: TCheckBox;
    CHBXModelo: TCheckBox;
    RBCons1: TRadioButton;
    BtnBuscar: TButton;
    LCMBXCarat: TDBLookupComboBox;
    RBConsMarcaMod: TRadioButton;
    Label1: TLabel;
    ETMarca: TEdit;
    ETModelo: TEdit;
    RBBuscarDistinct: TRadioButton;
    RBBuscarGroup: TRadioButton;
    RBMas2: TRadioButton;
    RBxVeces: TRadioButton;
    ETXVeces: TEdit;
    procedure DBLBXMarcaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CHBXMarcaClick(Sender: TObject);
    procedure CHBXModeloClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation
uses U_module;

{$R *.dfm}

procedure TForm10.BtnBuscarClick(Sender: TObject);
begin
if RBCons1.Checked then
begin
Datamodule3.Q_Grid.Close;
Datamodule3.Q_Grid.SQL.Text:='Select matricula,Marca,Modelo,año,Capacidad,Coste_Diario  from COCHES,CARACT_COCHE,CARACTERISTICAS WHERE  (matricula=Matri)   and (id_caract=caract) and  (nombre_caract ='+ QuotedStr(LCMBXCarat.Text)+')';
Datamodule3.Q_grid.Open    ;
//ShowMessage(Datamodule3.Q_FiltroMarcaMod.SQL.Text);
end
else if RBConsMarcaMod.Checked then
begin

 Datamodule3.Q_grid.Close;
Datamodule3.Q_grid.SQL.Text:='Select * From COCHES Where Marca Like '+ QuotedStr(ETMarca.Text+'%') + ' And Modelo Like ' + QuotedStr(ETModelo.Text+'%');
Datamodule3.Q_Grid.Open;
//ShowMessage(Datamodule3.Q_FiltroMarcaMod.SQL.Text);
end
else if RBBuscarDistinct.Checked then
begin

 Datamodule3.Q_grid.Close;
Datamodule3.Q_grid.SQL.Text:='SELECT (SELECT DISTINCT Marca ),matricula,Capacidad,Coste_Diario, Modelo, año from COCHES where Marca like '+ QuotedStr(ETMarca.Text+'%') + ' and Modelo LIKE ' + QuotedStr(ETModelo.Text+'%');
Datamodule3.Q_Grid.Open;
//ShowMessage(Datamodule3.Q_FiltroMarcaMod.SQL.Text);
end
else if RBBuscarGroup.Checked then
begin

 Datamodule3.Q_grid.Close;
Datamodule3.Q_grid.SQL.Text:='SELECT Marca ,matricula,Capacidad,Coste_Diario, Modelo, año from COCHES where Marca like  '+ QuotedStr(ETMarca.Text+'%') + ' and Modelo LIKE ' + QuotedStr(ETModelo.Text+'%')+ 'GROUP by Marca,Modelo';
Datamodule3.Q_Grid.Open;
//ShowMessage(Datamodule3.Q_FiltroMarcaMod.SQL.Text);
end
else if RBxVeces.Checked then
begin
 Datamodule3.Q_grid.Close;
Datamodule3.Q_grid.SQL.Text:='select Matriculas, count(Matriculas) from ALQUILER  group by  Matriculas having count(Matriculas)>'+ ETXVeces.Text ;
Datamodule3.Q_Grid.Open;
//ShowMessage(Datamodule3.Q_FiltroMarcaMod.SQL.Text);
end


end;






procedure TForm10.Button1Click(Sender: TObject);
begin
Datamodule3.Q_grid.Close;
Datamodule3.Q_grid.SQL.Text:='Select * From COCHES Where Marca = '+ QuotedStr(DBLBXMarca.Text) + ' And Modelo =' + QuotedStr(DBLBXModelo.Text);
Datamodule3.Q_Grid.Open;
end;



procedure TForm10.CHBXMarcaClick(Sender: TObject);
begin
if CHBXMarca.Checked then
DBLBXMarca.Enabled:=true
else
DBLBXMarca.Enabled:=false;

end;

procedure TForm10.CHBXModeloClick(Sender: TObject);
begin
     if CHBXModelo.Checked then
DBLBXModelo.Enabled:=true
else
DBLBXModelo.Enabled:=false;

end;



procedure TForm10.DBLBXMarcaClick(Sender: TObject);
begin
  Datamodule3.Q_FiltroModelo.Close ;
  Datamodule3.Q_FiltroModelo.ParamByName('Marca').AsString:= DBLBXMarca.Text  ;
   Datamodule3.Q_FiltroModelo.open ;
end ;


procedure TForm10.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

end.
