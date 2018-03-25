


unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, HTMLHelpViewer,Vcl.Imaging.jpeg,
  Vcl.StdCtrls,ShellAPI;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    abla1: TMenuItem;
    Operaciones1: TMenuItem;
    Clientes1: TMenuItem;
    Coches1: TMenuItem;
    Alquiler1: TMenuItem;
    Accesorios1: TMenuItem;
    Caracteristicas1: TMenuItem;
    Vercochesalquilado1: TMenuItem;
    BuscarCliente1: TMenuItem;
    BuscarCochePorMatricula1: TMenuItem;
    Filtrosyconsultas1: TMenuItem;
    Image1: TImage;
    Informes1: TMenuItem;
    clientes2: TMenuItem;
    Alquiler2: TMenuItem;
    coches2: TMenuItem;
    CaractCoche1: TMenuItem;
    AccesAlquilados1: TMenuItem;
    Coches3: TMenuItem;
    CLienteAlquiler1: TMenuItem;
    ayuda1: TMenuItem;
    Acrecade1: TMenuItem;
    AlquilerClienteCoche1: TMenuItem;
    procedure Accesorios1Click(Sender: TObject);
    procedure Caracteristicas1Click(Sender: TObject);
    procedure Alquiler1Click(Sender: TObject);
    procedure Vercochesalquilado1Click(Sender: TObject);
    procedure Coches1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure BuscarCliente1Click(Sender: TObject);
    procedure BuscarCochePorMatricula1Click(Sender: TObject);
    procedure Filtrosyconsultas1Click(Sender: TObject);
    procedure Coches3Click(Sender: TObject);
    procedure AccesAlquilados1Click(Sender: TObject);
    procedure clientes2Click(Sender: TObject);
    procedure CLienteAlquiler1Click(Sender: TObject);
    procedure CaractCoche1Click(Sender: TObject);



    procedure FormCreate(Sender: TObject);
    procedure ayuda1Click(Sender: TObject);
    procedure Acrecade1Click(Sender: TObject);
    procedure AlquilerClienteCoche1Click(Sender: TObject);



    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  contador :integer;

implementation
uses U_module, U_Accesorios, U_Caract, U_Alquiler, U_CochesAlquilados, U_Coche,
  U_Clientes, U_BuscarCliente, U_BuscarCochePorMatri, U_BuscarVarios ,
  U_AcercaDe;

{$R *.dfm}

procedure TForm2.AccesAlquilados1Click(Sender: TObject);
begin
DataModule3.ReportAccesAlq.ShowReport();
end;

procedure TForm2.Accesorios1Click(Sender: TObject);
begin
Form1.showmodal;
end;

procedure TForm2.Acrecade1Click(Sender: TObject);
begin
Form11.showmodal;
end;

procedure TForm2.Alquiler1Click(Sender: TObject);
begin

FormAlq.showmodal;
end;

procedure TForm2.AlquilerClienteCoche1Click(Sender: TObject);
begin
DataModule3.ReportDetalles.ShowReport();
end;

procedure TForm2.ayuda1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'ayuda.chm' ,nil,nil, SW_SHOW);
end;

procedure TForm2.BuscarCliente1Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm2.BuscarCochePorMatricula1Click(Sender: TObject);
begin
form9.showmodal;
end;



procedure TForm2.CaractCoche1Click(Sender: TObject);
begin
DataModule3.ReportCocheCaract.ShowReport();
end;

procedure TForm2.Caracteristicas1Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.CLienteAlquiler1Click(Sender: TObject);
begin
DataModule3.ReportClienteAlq.ShowReport();
end;

procedure TForm2.Clientes1Click(Sender: TObject);
begin
DataModule3.FDTclientes.Append;
fromcli.showmodal;
end;



procedure TForm2.clientes2Click(Sender: TObject);
begin
DataModule3.ReportCliente.ShowReport();
end;

procedure TForm2.Coches1Click(Sender: TObject);
begin
DataModule3.FDTCoches.Append;
Formcoche.showmodal;
end;



procedure TForm2.Coches3Click(Sender: TObject);
begin
DataModule3.ReportCoche.ShowReport();
end;

procedure TForm2.Filtrosyconsultas1Click(Sender: TObject);
begin
Form10.showmodal;
end;







procedure TForm2.FormCreate(Sender: TObject);
begin
contador:=0;

end;



procedure TForm2.Vercochesalquilado1Click(Sender: TObject);
begin
 DataModule3.FDTAlquiler.RefreshMetadata;
FormCochAlq.showmodal;
end;

end.
