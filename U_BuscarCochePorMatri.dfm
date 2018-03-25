object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Buscar Coche Por Matricula'
  ClientHeight = 284
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 284
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Matricula'
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 91
      Width = 320
      Height = 186
      DataSource = DataModule3.DSCoches
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'matricula'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Marca'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Modelo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Capacidad'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'a'#241'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Coste_Diario'
          Visible = True
        end>
    end
    object ETMatri: TEdit
      Left = 32
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = ETMatriChange
    end
    object DBImage1: TDBImage
      Left = 448
      Top = 312
      Width = 105
      Height = 105
      TabOrder = 2
    end
    object DBImage2: TDBImage
      Left = 320
      Top = 91
      Width = 132
      Height = 186
      DataField = 'foto'
      DataSource = DataModule3.DSCoches
      Stretch = True
      TabOrder = 3
    end
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 408
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
  object DSMatri: TDataSource
    DataSet = FDTable1
    Left = 392
    Top = 128
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'matricula'
    Connection = DataModule3.conexion
    UpdateOptions.UpdateTableName = 'COCHES'
    TableName = 'COCHES'
    Left = 328
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDTable2
    Left = 312
    Top = 8
  end
  object FDTable2: TFDTable
    Active = True
    IndexFieldNames = 'matricula'
    Connection = DataModule3.conexion
    UpdateOptions.UpdateTableName = 'COCHES'
    TableName = 'COCHES'
    Left = 248
    Top = 8
  end
end
