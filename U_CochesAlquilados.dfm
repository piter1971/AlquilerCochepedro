object FormCochAlq: TFormCochAlq
  Left = 0
  Top = 0
  Caption = 'Coches Alquilados'
  ClientHeight = 310
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 445
    Height = 310
    Align = alClient
    TabOrder = 0
    object BtnAlquilar: TButton
      Left = 8
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Alquilar'
      TabOrder = 0
      OnClick = BtnAlquilarClick
    end
    object BtnEliminar: TButton
      Left = 89
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Eliminar'
      TabOrder = 1
      OnClick = BtnEliminarClick
    end
    object BtnAccesorios: TButton
      Left = 170
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Accesorios'
      TabOrder = 2
      OnClick = BtnAccesoriosClick
    end
    object BtnDetalles: TButton
      Left = 251
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Detalles'
      TabOrder = 3
      OnClick = BtnDetallesClick
    end
    object BtnImprimirDet: TButton
      Left = 332
      Top = 248
      Width = 92
      Height = 25
      Caption = 'Imprimir Detalles'
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 521
      Height = 242
      DataSource = DataModule3.DSAlquiler
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Matriculas'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DNI_Cliente'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fecha'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fecha_Devolucion'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_tabla'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalAcces'
          Width = 60
          Visible = True
        end>
    end
  end
end
