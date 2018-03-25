unit U_CaractCocheCalend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    DBLookupListBox1: TDBLookupListBox;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses U_module, U_Alquiler;

{$R *.dfm}

procedure TForm5.FormActivate(Sender: TObject);
begin
Form5.Caption:='Matricula= '+ formalq.LCMBXCoche.text;
DataModule3.Q_CaractCoch.Close;
  DataModule3.Q_CaractCoch.SQL.Text:='select Caract from CARACT_COCHE where matri='+ QuotedStr(formalq.LCMBXCoche.text);
DataModule3.Q_CaractCoch.open;
end;

procedure TForm5.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
Resize:=false;
end;

end.
