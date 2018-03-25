object DataModule3: TDataModule3
  OldCreateOrder = False
  Height = 305
  Width = 305
  object DSclientes: TDataSource
    DataSet = FDTclientes
    Left = 104
    Top = 16
  end
  object FDTclientes: TFDTable
    Active = True
    IndexFieldNames = 'dni_con_letra'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'CLIENTE'
    TableName = 'CLIENTE'
    Left = 32
    Top = 16
  end
  object DSCoches: TDataSource
    DataSet = FDTable2
    Left = 104
    Top = 64
  end
  object FDTable2: TFDTable
    Active = True
    IndexFieldNames = 'matricula'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'COCHES'
    TableName = 'COCHES'
    Left = 32
    Top = 64
  end
  object DSAlquiles: TDataSource
    DataSet = FDTAlquiler
    Left = 104
    Top = 128
  end
  object FDTAlquiler: TFDTable
    Active = True
    IndexFieldNames = 'id_tabla'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'ALQUILER'
    TableName = 'ALQUILER'
    Left = 32
    Top = 128
  end
  object DSacces: TDataSource
    DataSet = FDTAcces
    Left = 104
    Top = 184
  end
  object FDTAcces: TFDTable
    Active = True
    IndexFieldNames = 'nombre_acces'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'ACCESORIOS'
    TableName = 'ACCESORIOS'
    Left = 32
    Top = 184
  end
  object DSCaract: TDataSource
    DataSet = FDTCaract
    Left = 104
    Top = 240
  end
  object FDTCaract: TFDTable
    Active = True
    IndexFieldNames = 'id_caract'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'CARACTERISTICAS'
    TableName = 'CARACTERISTICAS'
    Left = 32
    Top = 240
  end
  object DSAcces_Alq: TDataSource
    DataSet = FDTAcces_ALQ
    Left = 264
    Top = 24
  end
  object FDTAcces_ALQ: TFDTable
    Active = True
    IndexFieldNames = 'id_tabla'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'ACCES_ALQ'
    TableName = 'ACCES_ALQ'
    Left = 192
    Top = 24
  end
  object DSCoches_caract: TDataSource
    DataSet = FDTCoches_carat
    Left = 264
    Top = 80
  end
  object FDTCoches_carat: TFDTable
    Active = True
    IndexFieldNames = 'matri;Caract'
    Connection = conexion
    UpdateOptions.UpdateTableName = 'CARACT_COCHE'
    TableName = 'CARACT_COCHE'
    Left = 192
    Top = 80
  end
  object conexion: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Pedro\Desktop\AlquilerCoche\Win32\Debug\Alquil' +
        'erCoches1.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 160
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 160
  end
end
