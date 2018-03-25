unit U_Det_Alquiler;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.Bind.Components, Data.Bind.DBScope, Vcl.ComCtrls,
  Vcl.TabNotBk, Vcl.StdCtrls, Vcl.Mask;

type
  TForm14 = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Imagefoto: TImage;
    LinkControlToFieldfoto2: TLinkControlToField;
    DBLookupListBox1: TDBLookupListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    DBLookupListBox2: TDBLookupListBox;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation
uses U_module;

{$R *.dfm}



procedure TForm14.FormActivate(Sender: TObject);
begin
DataModule3.FDTAcces.Refresh;
DataModule3.FDTCoches.Refresh;
DataModule3.FDTCaractCoche.Refresh;
DataModule3.FDTclientes.Refresh;

end;

procedure TForm14.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

end.
