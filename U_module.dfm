object DataModule3: TDataModule3
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 555
  Width = 1074
  object DSclientes: TDataSource
    DataSet = FDTclientes
    Left = 104
    Top = 16
  end
  object FDTclientes: TFDTable
    OnDeleteError = FDTclientesDeleteError
    OnPostError = FDTclientesPostError
    IndexFieldNames = 'dni_con_letra'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'CLIENTE'
    TableName = 'CLIENTE'
    Left = 32
    Top = 16
    object FDTclientesdni_con_letra: TStringField
      FieldName = 'dni_con_letra'
      Origin = 'dni_con_letra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object FDTclientesnom_apell: TStringField
      FieldName = 'nom_apell'
      Origin = 'nom_apell'
      Size = 30
    end
    object FDTclientestelefono: TIntegerField
      FieldName = 'telefono'
      Origin = 'telefono'
    end
    object FDTclientesdomicilio: TStringField
      FieldName = 'domicilio'
      Origin = 'domicilio'
    end
  end
  object DSCoches: TDataSource
    DataSet = FDTCoches
    Left = 104
    Top = 64
  end
  object FDTCoches: TFDTable
    OnDeleteError = FDTCochesDeleteError
    OnPostError = FDTCochesPostError
    IndexFieldNames = 'matricula'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'COCHES'
    TableName = 'COCHES'
    Left = 32
    Top = 64
    object FDTCochesmatricula: TStringField
      FieldName = 'matricula'
      Origin = 'matricula'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 7
    end
    object FDTCochesMarca: TStringField
      FieldName = 'Marca'
      Origin = 'Marca'
    end
    object FDTCochesModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'Modelo'
    end
    object FDTCochesCapacidad: TIntegerField
      FieldName = 'Capacidad'
      Origin = 'Capacidad'
    end
    object FDTCochesaño: TIntegerField
      FieldName = 'a'#241'o'
      Origin = '"a'#241'o"'
    end
    object FDTCochesCoste_Diario: TIntegerField
      FieldName = 'Coste_Diario'
      Origin = 'Coste_Diario'
    end
    object FDTCochesfoto: TBlobField
      FieldName = 'foto'
      Origin = 'foto'
    end
  end
  object DSAlquiler: TDataSource
    DataSet = FDTAlquiler
    Left = 104
    Top = 128
  end
  object DSacces: TDataSource
    DataSet = FDTAcces
    Left = 104
    Top = 192
  end
  object FDTAcces: TFDTable
    IndexFieldNames = 'nombre_acces'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'ACCESORIOS'
    TableName = 'ACCESORIOS'
    Left = 24
    Top = 184
    object FDTAccesnombre_acces: TStringField
      FieldName = 'nombre_acces'
      Origin = 'nombre_acces'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object FDTAccesprecio: TIntegerField
      FieldName = 'precio'
      Origin = 'precio'
    end
  end
  object DSCaract: TDataSource
    DataSet = FDTCaract
    Left = 104
    Top = 240
  end
  object DSAcces_Alq: TDataSource
    DataSet = FDTAcces_Aql
    Left = 104
    Top = 296
  end
  object DSCaract_Coche: TDataSource
    DataSet = FDTCaractCoche
    Left = 112
    Top = 360
  end
  object conexion: TFDConnection
    Params.Strings = (
      'Database=AlquilerCoches1.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 168
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 240
    Top = 24
  end
  object QCaractCoche: TFDQuery
    MasterSource = DSqCaractCoche
    Connection = conexion
    SQL.Strings = (
      'select * from  CARACTERISTICAS')
    Left = 360
    Top = 160
  end
  object DSqCaractCoche: TDataSource
    Left = 440
    Top = 160
  end
  object DsBuscarDNI: TDataSource
    DataSet = Q_BuscarDNI
    Left = 432
    Top = 24
  end
  object Q_BuscarDNI: TFDQuery
    Connection = conexion
    SQL.Strings = (
      
        'Select  dni_con_letra ,  nom_apell , telefono, domicilio from CL' +
        'IENTE  where  dni_con_letra  like :DNI')
    Left = 360
    Top = 24
    ParamData = <
      item
        Name = 'DNI'
        DataType = ftString
        ParamType = ptInput
        Value = '46%'
      end>
  end
  object DSBuscarPorNom: TDataSource
    DataSet = Q_BuscarPorNom
    Left = 448
    Top = 88
  end
  object Q_BuscarPorNom: TFDQuery
    Connection = conexion
    SQL.Strings = (
      
        'Select  dni_con_letra ,  nom_apell , telefono, domicilio from CL' +
        'IENTE  where  nom_apell  like :Nom')
    Left = 360
    Top = 88
    ParamData = <
      item
        Name = 'NOM'
        DataType = ftString
        ParamType = ptInput
        Value = 'Pe%'
      end>
  end
  object OpenDFotocoche: TOpenDialog
    Left = 208
    Top = 80
  end
  object DSFiltroModelo: TDataSource
    DataSet = Q_FiltroModelo
    Left = 440
    Top = 224
  end
  object Q_FiltroModelo: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select Modelo from COCHES where Marca= :Marca')
    Left = 352
    Top = 224
    ParamData = <
      item
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSFiltroMarca: TDataSource
    DataSet = Q_filtroMarca
    Left = 440
    Top = 280
  end
  object Q_filtroMarca: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select distinct marca from COCHES')
    Left = 352
    Top = 280
  end
  object DSGrid: TDataSource
    DataSet = Q_Grid
    Left = 440
    Top = 344
  end
  object Q_Grid: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from COCHES')
    Left = 352
    Top = 344
  end
  object DSConsMarcaMod: TDataSource
    DataSet = Q_ConsMarcaMod
    Left = 632
    Top = 88
  end
  object Q_ConsMarcaMod: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from COCHES')
    Left = 544
    Top = 88
  end
  object DSQAlquiler: TDataSource
    DataSet = Q_Alquiler
    Left = 632
    Top = 168
  end
  object Q_Alquiler: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from ALQUILER')
    Left = 544
    Top = 168
  end
  object DSQPrecioDia: TDataSource
    DataSet = Q_PrecioDia
    Left = 624
    Top = 232
  end
  object Q_PrecioDia: TFDQuery
    Filtered = True
    Connection = conexion
    SQL.Strings = (
      'Select Coste_Diario from  COCHES')
    Left = 536
    Top = 232
  end
  object DSQInsertar: TDataSource
    DataSet = Q_Insertar
    Left = 616
    Top = 288
  end
  object Q_Insertar: TFDQuery
    Filtered = True
    Connection = conexion
    SQL.Strings = (
      'Select * from ALQUILER')
    Left = 528
    Top = 288
  end
  object DSQVerCaractCoche: TDataSource
    DataSet = Q_VerCaractCoche
    Left = 624
    Top = 352
  end
  object DSQ_DetAlqVeh: TDataSource
    DataSet = Q_DetAlqVeh
    Left = 440
    Top = 400
  end
  object DSQVerClienteAlq: TDataSource
    Left = 632
    Top = 400
  end
  object Q_VerClienteAlq: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select * from cliente')
    Left = 528
    Top = 403
    object Q_VerClienteAlqdni_con_letra: TStringField
      FieldName = 'dni_con_letra'
      Origin = 'dni_con_letra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object Q_VerClienteAlqnom_apell: TStringField
      FieldName = 'nom_apell'
      Origin = 'nom_apell'
      Size = 30
    end
    object Q_VerClienteAlqtelefono: TIntegerField
      FieldName = 'telefono'
      Origin = 'telefono'
    end
    object Q_VerClienteAlqdomicilio: TStringField
      FieldName = 'domicilio'
      Origin = 'domicilio'
    end
  end
  object DSqDatosAlq: TDataSource
    DataSet = Q_DatosAlq
    Left = 440
    Top = 456
  end
  object DSqVerAccesAlq: TDataSource
    DataSet = Q_VerAccesAlq
    Left = 632
    Top = 32
  end
  object Q_VerAccesAlq: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from ACCES_ALQ')
    Left = 536
    Top = 16
  end
  object Q_DatosAlq: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select Fecha, Fecha_Devolucion, Total from alquiler')
    Left = 352
    Top = 456
    object Q_DatosAlqFecha: TDateField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object Q_DatosAlqFecha_Devolucion: TDateField
      FieldName = 'Fecha_Devolucion'
      Origin = 'Fecha_Devolucion'
    end
    object Q_DatosAlqTotal: TIntegerField
      FieldName = 'Total'
      Origin = 'Total'
    end
  end
  object FDTAcces_Aql: TFDTable
    IndexName = 'iAlqAcces'
    MasterSource = DSAlquiler
    MasterFields = 'id_tabla'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'ACCES_ALQ'
    TableName = 'ACCES_ALQ'
    Left = 24
    Top = 296
    object FDTAcces_Aqlid_tab: TFDAutoIncField
      FieldName = 'id_tab'
      Origin = 'id_tab'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTAcces_Aqlnom_acces: TStringField
      FieldName = 'nom_acces'
      Origin = 'nom_acces'
      Size = 32767
    end
    object FDTAcces_AqlAlquiler: TIntegerField
      FieldName = 'Alquiler'
      Origin = 'Alquiler'
    end
  end
  object Q_VerCaractCoche: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select * from CARACT_COCHE ')
    Left = 528
    Top = 344
  end
  object FDTCaract: TFDTable
    IndexFieldNames = 'nombre_caract'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'CARACTERISTICAS'
    TableName = 'CARACTERISTICAS'
    Left = 24
    Top = 240
  end
  object DSqCalcPrecio: TDataSource
    DataSet = Q_CalcPrecio
    Left = 632
    Top = 464
  end
  object Q_CalcPrecio: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select * from ALQUILER;')
    Left = 536
    Top = 464
    object DateField1: TDateField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object DateField2: TDateField
      FieldName = 'Fecha_Devolucion'
      Origin = 'Fecha_Devolucion'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Total'
      Origin = 'Total'
    end
  end
  object DSqcalcprecio1: TDataSource
    DataSet = Q_CalcPrecio1
    Left = 104
    Top = 456
  end
  object Q_CalcPrecio1: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select * from ALQUILER;')
    Left = 8
    Top = 456
    object DateField3: TDateField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object DateField4: TDateField
      FieldName = 'Fecha_Devolucion'
      Origin = 'Fecha_Devolucion'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Total'
      Origin = 'Total'
    end
  end
  object DSqdelete: TDataSource
    DataSet = Q_delete
    Left = 792
    Top = 32
  end
  object Q_delete: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from ACCES_ALQ')
    Left = 712
    Top = 24
  end
  object DBqSelectAql: TDataSource
    DataSet = q_SelectAlq
    Left = 800
    Top = 104
  end
  object q_SelectAlq: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from  ALQUILER')
    Left = 720
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 808
    Top = 168
  end
  object FDQuery1: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from  ACCES_ALQ')
    Left = 728
    Top = 168
  end
  object Q_DetAlqVeh: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select * from COCHES')
    Left = 368
    Top = 408
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 816
    Top = 232
  end
  object FDQuery2: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from CARACT_COCHE')
    Left = 736
    Top = 232
  end
  object FDTCaractCoche: TFDTable
    IndexName = 'IMatriCarac'
    MasterSource = DSCoches
    MasterFields = 'matricula'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'CARACT_COCHE'
    TableName = 'CARACT_COCHE'
    Left = 24
    Top = 360
  end
  object DBqPrecAcces: TDataSource
    DataSet = Q_PrecAcces
    Left = 824
    Top = 296
  end
  object Q_PrecAcces: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from ACCESORIOS')
    Left = 744
    Top = 296
  end
  object DSqCaractCoch: TDataSource
    DataSet = Q_CaractCoch
    Left = 822
    Top = 352
  end
  object Q_CaractCoch: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from CARACT_COCHE')
    Left = 744
    Top = 352
  end
  object FDTAlquiler: TFDTable
    IndexFieldNames = 'id_tabla'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'ALQUILER'
    TableName = 'ALQUILER'
    Left = 32
    Top = 128
  end
  object ReportAccesAlq: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42810.549368472200000000
    ReportOptions.LastChange = 42810.554759340280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 144
    Datasets = <
      item
        DataSet = DBDSAcces
        DataSetName = 'DBDSAcces'
      end
      item
        DataSet = DBDSAlq
        DataSetName = 'DBDSAlq'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clWhite
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Accesorios alquilados')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          Fill.BackColor = clWhite
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 76.091625080000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Matriculas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 159.241285080000000000
          Width = 164.353456390000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DNI_Cliente')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 251.783671470000000000
          Width = 42.433194770000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 332.012166240000000000
          Width = 80.425170000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha_Devolucion')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 425.151302750000000000
          Width = 36.505393900000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 476.774816660000000000
          Width = 75.036099560000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TotalAcces')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 566.929500000000000000
          Width = 139.288109560000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'nombre accesorio')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = DBDSAlq
        DataSetName = 'DBDSAlq'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 71.811070000000000000
          Width = 87.430215080000000000
          Height = 18.897650000000000000
          DataField = 'Matriculas'
          DataSet = DBDSAlq
          DataSetName = 'DBDSAlq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSAlq."Matriculas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 170.579875080000000000
          Width = 69.865206390000000000
          Height = 18.897650000000000000
          DataField = 'DNI_Cliente'
          DataSet = DBDSAlq
          DataSetName = 'DBDSAlq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSAlq."DNI_Cliente"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 248.004141470000000000
          Width = 61.330844770000000000
          Height = 18.897650000000000000
          DataField = 'Fecha'
          DataSet = DBDSAlq
          DataSetName = 'DBDSAlq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSAlq."Fecha"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 332.012166240000000000
          Width = 84.204700000000000000
          Height = 18.897650000000000000
          DataField = 'Fecha_Devolucion'
          DataSet = DBDSAlq
          DataSetName = 'DBDSAlq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSAlq."Fecha_Devolucion"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          Left = 425.151302750000000000
          Width = 36.505393900000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = DBDSAlq
          DataSetName = 'DBDSAlq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSAlq."Total"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          Left = 484.333876660000000000
          Width = 75.036099560000000000
          Height = 18.897650000000000000
          DataField = 'TotalAcces'
          DataSet = DBDSAlq
          DataSetName = 'DBDSAlq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSAlq."TotalAcces"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = DBDSAcces
        DataSetName = 'DBDSAcces'
        RowCount = 0
        object DBDSAccesnom_acces: TfrxMemoView
          Left = 566.929500000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'nom_acces'
          DataSet = DBDSAcces
          DataSetName = 'DBDSAcces'
          Memo.UTF8W = (
            '[DBDSAcces."nom_acces"]')
        end
      end
    end
  end
  object DBDSAlq: TfrxDBDataset
    UserName = 'DBDSAlq'
    CloseDataSource = False
    DataSet = FDTAlquiler
    BCDToCurrency = False
    Left = 280
    Top = 144
  end
  object DBDSAcces: TfrxDBDataset
    UserName = 'DBDSAcces'
    CloseDataSource = False
    DataSet = FDTAcces_Aql
    BCDToCurrency = False
    Left = 160
    Top = 144
  end
  object DBDSAlqCliente: TfrxDBDataset
    UserName = 'DBDSAlqCliente'
    CloseDataSource = False
    DataSet = FDTable1
    BCDToCurrency = False
    Left = 280
    Top = 208
  end
  object DBDSCliente: TfrxDBDataset
    UserName = 'DBDSCliente'
    CloseDataSource = False
    DataSet = FDTclientes
    BCDToCurrency = False
    Left = 152
    Top = 200
  end
  object ReportClienteAlq: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42810.647966747710000000
    ReportOptions.LastChange = 42810.655255219900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 216
    Top = 208
    Datasets = <
      item
        DataSet = DBDSAlqCliente
        DataSetName = 'DBDSAlqCliente'
      end
      item
        DataSet = DBDSCliente
        DataSetName = 'DBDSCliente'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            
              'cliente                                                      alq' +
              'uiler             ')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Left = 90.708720000000000000
          Width = 73.818800000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'nom_apell')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 175.866110000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'telefono')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 257.645640000000000000
          Width = 64.070810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'domicilio')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          Left = 359.055350000000000000
          Width = 64.070810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Matricula')
          ParentFont = False
          Style = 'Header'
        end
        object Memo14: TfrxMemoView
          Left = 430.866420000000000000
          Width = 64.070810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
          Style = 'Header'
        end
        object Memo15: TfrxMemoView
          Left = 506.457020000000000000
          Width = 75.409400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha Dev.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo16: TfrxMemoView
          Left = 593.386210000000000000
          Width = 45.173160000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          Style = 'Header'
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.409400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Acces.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Width = 73.818800000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DNI')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'DBDSCliente."dni_con_letra"'
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'dni_con_letra'
          DataSet = DBDSCliente
          DataSetName = 'DBDSCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clRed
          Memo.UTF8W = (
            '[DBDSCliente."dni_con_letra"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = DBDSCliente
        DataSetName = 'DBDSCliente'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 94.488250000000000000
          Width = 85.157390000000000000
          Height = 18.897650000000000000
          DataField = 'nom_apell'
          DataSet = DBDSCliente
          DataSetName = 'DBDSCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCliente."nom_apell"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 183.425170000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'telefono'
          DataSet = DBDSCliente
          DataSetName = 'DBDSCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCliente."telefono"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 268.984230000000000000
          Width = 90.527520000000000000
          Height = 18.897650000000000000
          DataField = 'domicilio'
          DataSet = DBDSCliente
          DataSetName = 'DBDSCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCliente."domicilio"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 245.669450000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo11: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        DataSet = DBDSAlqCliente
        DataSetName = 'DBDSAlqCliente'
        RowCount = 0
        object DBDSAlqClienteMatriculas: TfrxMemoView
          Left = 359.055350000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'Matriculas'
          DataSet = DBDSAlqCliente
          DataSetName = 'DBDSAlqCliente'
          Memo.UTF8W = (
            '[DBDSAlqCliente."Matriculas"]')
        end
        object DBDSAlqClienteFecha: TfrxMemoView
          Left = 438.425480000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'Fecha'
          DataSet = DBDSAlqCliente
          DataSetName = 'DBDSAlqCliente'
          Memo.UTF8W = (
            '[DBDSAlqCliente."Fecha"]')
        end
        object DBDSAlqClienteFecha_Devolucion: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Fecha_Devolucion'
          DataSet = DBDSAlqCliente
          DataSetName = 'DBDSAlqCliente'
          Memo.UTF8W = (
            '[DBDSAlqCliente."Fecha_Devolucion"]')
        end
        object DBDSAlqClienteTotal: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = DBDSAlqCliente
          DataSetName = 'DBDSAlqCliente'
          Memo.UTF8W = (
            '[DBDSAlqCliente."Total"]')
        end
        object DBDSAlqClienteTotalAcces: TfrxMemoView
          Left = 650.079160000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TotalAcces'
          DataSet = DBDSAlqCliente
          DataSetName = 'DBDSAlqCliente'
          Memo.UTF8W = (
            '[DBDSAlqCliente."TotalAcces"]')
        end
      end
    end
  end
  object DataSource3: TDataSource
    DataSet = FDTable1
    Left = 272
    Top = 448
  end
  object FDTable1: TFDTable
    IndexName = 'idcliente'
    MasterSource = DSclientes
    MasterFields = 'dni_con_letra'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'ALQUILER'
    TableName = 'ALQUILER'
    Left = 192
    Top = 448
  end
  object FDQuery3: TFDQuery
    Connection = conexion
    SQL.Strings = (
      
        'Select matricula,Modelo from COCHES where matricula not in (Sele' +
        'ct Matriculas from ALQUILER  where Fecha_Devolucion>date('#39'now'#39'))')
    Left = 16
    Top = 416
  end
  object DataSource4: TDataSource
    DataSet = FDQuery3
    Left = 88
    Top = 416
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDTCoches
    BCDToCurrency = False
    Left = 272
    Top = 280
  end
  object ReportCoche: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42810.683683923600000000
    ReportOptions.LastChange = 42810.683683923600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220471900000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 151.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 151.000000000000000000
          Width = 151.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 302.000000000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Capacidad')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 380.000000000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'a'#241'o')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 458.000000000000000000
          Width = 86.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Coste_Diario')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 544.000000000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'foto')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."matricula"'
        object Memo9: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'matricula'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            '[frxDBDataset1."matricula"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Marca'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Marca"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 151.000000000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Modelo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Modelo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 302.000000000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Capacidad'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Capacidad"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 380.000000000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'a'#241'o'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."a'#241'o"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 458.000000000000000000
          Width = 86.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Coste_Diario'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Coste_Diario"]')
          ParentFont = False
          Style = 'Data'
        end
        object Picture1: TfrxPictureView
          Left = 612.283860000000000000
          Width = 94.488250000000000000
          Height = 94.488188976378000000
          DataField = 'foto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object DBDScaract: TfrxDBDataset
    UserName = 'DBDScaract'
    CloseDataSource = False
    DataSet = FDTCaractCoche
    BCDToCurrency = False
    Left = 296
    Top = 344
  end
  object ReportCocheCaract: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42810.690229444400000000
    ReportOptions.LastChange = 42810.696663541670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 240
    Top = 344
    Datasets = <
      item
        DataSet = DBDScaract
        DataSetName = 'DBDScaract'
      end
      item
        DataSet = DBDSCocheCaract
        DataSetName = 'DBDSCocheCaract'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 63.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'matricula')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 78.118120000000000000
          Width = 151.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 142.188930000000000000
          Width = 48.952690000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 194.921150000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Capacidad')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 284.259740000000000000
          Width = 32.645640000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'a'#241'o')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 324.464440000000000000
          Width = 86.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Coste_Diario')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 444.480210000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'foto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo16: TfrxMemoView
          Left = 578.268090000000000000
          Width = 89.338590000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'caracteristicas')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = DBDSCocheCaract
        DataSetName = 'DBDSCocheCaract'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 63.000000000000000000
          Height = 18.897650000000000000
          DataField = 'matricula'
          DataSet = DBDSCocheCaract
          DataSetName = 'DBDSCocheCaract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCocheCaract."matricula"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 70.559060000000000000
          Width = 71.629870000000000000
          Height = 18.897650000000000000
          DataField = 'Marca'
          DataSet = DBDSCocheCaract
          DataSetName = 'DBDSCocheCaract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCocheCaract."Marca"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 145.968460000000000000
          Width = 52.732220000000000000
          Height = 18.897650000000000000
          DataField = 'Modelo'
          DataSet = DBDSCocheCaract
          DataSetName = 'DBDSCocheCaract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCocheCaract."Modelo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 206.259740000000000000
          Width = 47.763760000000000000
          Height = 18.897650000000000000
          DataField = 'Capacidad'
          DataSet = DBDSCocheCaract
          DataSetName = 'DBDSCocheCaract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCocheCaract."Capacidad"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 276.700680000000000000
          Width = 59.102350000000000000
          Height = 18.897650000000000000
          DataField = 'a'#241'o'
          DataSet = DBDSCocheCaract
          DataSetName = 'DBDSCocheCaract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCocheCaract."a'#241'o"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          Left = 347.141620000000000000
          Width = 86.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Coste_Diario'
          DataSet = DBDSCocheCaract
          DataSetName = 'DBDSCocheCaract'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDSCocheCaract."Coste_Diario"]')
          ParentFont = False
          Style = 'Data'
        end
        object Picture1: TfrxPictureView
          Left = 438.425480000000000000
          Width = 94.488250000000000000
          Height = 75.590551181102400000
          DataField = 'foto'
          DataSet = DBDSCocheCaract
          DataSetName = 'DBDSCocheCaract'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo18: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo19: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = DBDScaract
        DataSetName = 'DBDScaract'
        RowCount = 0
        object DBDScaractCaract: TfrxMemoView
          Left = 585.827150000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'Caract'
          DataSet = DBDScaract
          DataSetName = 'DBDScaract'
          Memo.UTF8W = (
            '[DBDScaract."Caract"]')
        end
      end
    end
  end
  object DBDSCocheCaract: TfrxDBDataset
    UserName = 'DBDSCocheCaract'
    CloseDataSource = False
    DataSet = FDTCoches
    BCDToCurrency = False
    Left = 176
    Top = 344
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = FDTclientes
    BCDToCurrency = False
    Left = 272
    Top = 400
  end
  object ReportCliente: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42810.697793969900000000
    ReportOptions.LastChange = 42810.698319432870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 184
    Top = 400
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220471900000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 225.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'nom_apell')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 225.000000000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'telefono')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 303.000000000000000000
          Width = 151.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'domicilio')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."dni_con_letra"'
        object Memo6: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'dni_con_letra'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset2."dni_con_letra"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 225.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nom_apell'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."nom_apell"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 225.000000000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'telefono'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."telefono"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 303.000000000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'domicilio'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."domicilio"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 241.889920000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo11: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo12: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object DSqDeleteAcces: TDataSource
    DataSet = Q_deleteAcces
    Left = 838
    Top = 416
  end
  object Q_deleteAcces: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'Select * from CARACTERISTICAS')
    Left = 760
    Top = 416
  end
  object ReportDetalles: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42816.378569791700000000
    ReportOptions.LastChange = 42816.390133252320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 888
    Top = 72
    Datasets = <
      item
        DataSet = DBDataSqDetalles
        DataSetName = 'DBDataSqDetalles'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Left = 22.677180000000000000
          Width = 65.745475290000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Matriculas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 99.761245290000000000
          Width = 52.871117110000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DNI_Cliente')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 179.089072400000000000
          Width = 47.006345170000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 233.654477580000000000
          Width = 74.090006930000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha_Devolucion')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 311.524014510000000000
          Width = 42.990817290000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 346.955771800000000000
          Width = 87.989398520000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TotalAcces')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'DBDataSqDetalles."id_tabla"'
        object Memo20: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'id_tabla'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clRed
          Memo.UTF8W = (
            '[DBDataSqDetalles."id_tabla"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = DBDataSqDetalles
        DataSetName = 'DBDataSqDetalles'
        RowCount = 0
        object Memo21: TfrxMemoView
          Left = 15.118120000000000000
          Width = 73.304535290000000000
          Height = 18.897650000000000000
          DataField = 'Matriculas'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Matriculas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          Left = 95.981715290000000000
          Width = 64.209707110000000000
          Height = 18.897650000000000000
          DataField = 'DNI_Cliente'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."DNI_Cliente"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          Left = 171.530012400000000000
          Width = 58.344935170000000000
          Height = 18.897650000000000000
          DataField = 'Fecha'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Fecha"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          Left = 233.654477580000000000
          Width = 81.649066930000000000
          Height = 18.897650000000000000
          DataField = 'Fecha_Devolucion'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Fecha_Devolucion"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo25: TfrxMemoView
          Left = 315.303544510000000000
          Width = 24.093167290000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Total"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo26: TfrxMemoView
          Left = 350.735301800000000000
          Width = 50.194098520000000000
          Height = 18.897650000000000000
          DataField = 'TotalAcces'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."TotalAcces"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 215.433210000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 249.748200320000000000
          Top = 30.236240000000000000
          Width = 64.840222760000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'matricula')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 322.147483080000000000
          Top = 30.236240000000000000
          Width = 51.455129820000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Left = 377.382142900000000000
          Top = 30.236240000000000000
          Width = 53.029637000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Modelo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          Left = 430.411779900000000000
          Top = 30.236240000000000000
          Width = 62.635199940000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Capacidad')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          Left = 496.826509840000000000
          Top = 30.236240000000000000
          Width = 45.195840120000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'a'#241'o')
          ParentFont = False
          Style = 'Header'
        end
        object Memo14: TfrxMemoView
          Left = 542.022349950000000000
          Top = 30.236240000000000000
          Width = 84.012609640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Coste_Diario')
          ParentFont = False
          Style = 'Header'
        end
        object Memo15: TfrxMemoView
          Left = 644.932609590000000000
          Top = 30.236240000000000000
          Width = 45.865094760000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'foto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo16: TfrxMemoView
          Left = 365.758124360000000000
          Top = 132.283550000000000000
          Width = 64.012448230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'dni_con_letra')
          ParentFont = False
          Style = 'Header'
        end
        object Memo17: TfrxMemoView
          Left = 441.109162590000000000
          Top = 132.283550000000000000
          Width = 84.643125290000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'nom_apell')
          ParentFont = False
          Style = 'Header'
        end
        object Memo18: TfrxMemoView
          Left = 563.547587880000000000
          Top = 132.283550000000000000
          Width = 60.155440230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'telefono')
          ParentFont = False
          Style = 'Header'
        end
        object Memo19: TfrxMemoView
          Left = 638.821148110000000000
          Top = 132.283550000000000000
          Width = 64.170968110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'domicilio')
          ParentFont = False
          Style = 'Header'
        end
        object Memo27: TfrxMemoView
          Left = 249.748200320000000000
          Top = 75.590600000000000000
          Width = 64.840222760000000000
          Height = 18.897650000000000000
          DataField = 'matricula'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."matricula"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo28: TfrxMemoView
          Left = 322.147483080000000000
          Top = 75.590600000000000000
          Width = 55.234659820000000000
          Height = 18.897650000000000000
          DataField = 'Marca'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Marca"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo29: TfrxMemoView
          Left = 377.382142900000000000
          Top = 75.590600000000000000
          Width = 60.588697000000000000
          Height = 18.897650000000000000
          DataField = 'Modelo'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Modelo"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo30: TfrxMemoView
          Left = 437.970839900000000000
          Top = 75.590600000000000000
          Width = 47.517079940000000000
          Height = 18.897650000000000000
          DataField = 'Capacidad'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Capacidad"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo31: TfrxMemoView
          Left = 493.046979840000000000
          Top = 75.590600000000000000
          Width = 45.195840120000000000
          Height = 18.897650000000000000
          DataField = 'a'#241'o'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."a'#241'o"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo32: TfrxMemoView
          Left = 557.140469950000000000
          Top = 75.590600000000000000
          Width = 57.555899640000000000
          Height = 18.897650000000000000
          DataField = 'Coste_Diario'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."Coste_Diario"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo34: TfrxMemoView
          Left = 369.537654360000000000
          Top = 173.858380000000000000
          Width = 60.232918230000000000
          Height = 18.897650000000000000
          DataField = 'dni_con_letra'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."dni_con_letra"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo35: TfrxMemoView
          Left = 437.329632590000000000
          Top = 173.858380000000000000
          Width = 111.099835290000000000
          Height = 18.897650000000000000
          DataField = 'nom_apell'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."nom_apell"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo36: TfrxMemoView
          Left = 563.547587880000000000
          Top = 173.858380000000000000
          Width = 67.714500230000000000
          Height = 18.897650000000000000
          DataField = 'telefono'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."telefono"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo37: TfrxMemoView
          Left = 642.600678110000000000
          Top = 173.858380000000000000
          Width = 64.170968110000000000
          Height = 18.897650000000000000
          DataField = 'domicilio'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataSqDetalles."domicilio"]')
          ParentFont = False
          Style = 'Data'
        end
        object Picture1: TfrxPictureView
          Left = 627.401980000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 39685.039370080000000000
          DataField = 'foto'
          DataSet = DBDataSqDetalles
          DataSetName = 'DBDataSqDetalles'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo38: TfrxMemoView
          Left = 434.645950000000000000
          Top = 102.047310000000000000
          Width = 114.446108520000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clRed
          Memo.UTF8W = (
            'Detalle Cliente')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 438.425480000000000000
          Width = 110.666578520000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clRed
          Memo.UTF8W = (
            'Detalles  Coche')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object DBDataSqDetalles: TfrxDBDataset
    UserName = 'DBDataSqDetalles'
    CloseDataSource = False
    DataSet = FDQuery4
    BCDToCurrency = False
    Left = 1032
    Top = 72
  end
  object FDQuery4: TFDQuery
    Connection = conexion
    SQL.Strings = (
      
        'SELECT * FROM ALQUILER,COCHES,CLIENTE WHERE Matriculas=matricula' +
        ' and DNI_Cliente =dni_con_letra ;')
    Left = 960
    Top = 72
  end
end
