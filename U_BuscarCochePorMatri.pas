unit U_BuscarCochePorMatri;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  System.Rtti, System.Bindings.Outputs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.StdCtrls, Data.Bind.Components, Data.Bind.DBScope, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm9 = class(TForm)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ETMatri: TEdit;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DSMatri: TDataSource;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    FDTable2: TFDTable;
    procedure ETMatriChange(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses U_module;

{$R *.dfm}

procedure TForm9.ETMatriChange(Sender: TObject);
begin
DataModule3.FDTCoches.IndexName:='iMatri';
DataModule3.FDTCoches.SetRangeStart;
DataModule3.FDTCoches.FieldByName('Matricula').AsString:=ETMatri.Text;
DataModule3.FDTCoches.SetRangeEnd;
DataModule3.FDTCoches.FieldByName('Matricula').AsString:=ETMatri.Text+'zzz';
DataModule3.FDTCoches.ApplyRange;


end;

procedure TForm9.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

end.
