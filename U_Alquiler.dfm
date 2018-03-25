object FormAlq: TFormAlq
  Left = 0
  Top = 0
  Caption = 'Alquilar'
  ClientHeight = 425
  ClientWidth = 195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 193
    Height = 185
    Caption = 'Periodo de Alquiler'
    TabOrder = 0
    object Calendar: TMonthCalendar
      Left = 3
      Top = 16
      Width = 191
      Height = 160
      MultiSelect = True
      Date = 42809.641965532410000000
      EndDate = 42809.000000000000000000
      TabOrder = 0
      OnClick = CalendarClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 191
    Width = 191
    Height = 58
    Caption = 'Seleccion de Vehiculo'
    TabOrder = 1
    object BtnCaractCoche: TSpeedButton
      Left = 157
      Top = 24
      Width = 23
      Height = 22
      OnClick = BtnCaractCocheClick
    end
    object LCMBXCoche: TDBLookupComboBox
      Left = 3
      Top = 24
      Width = 148
      Height = 21
      KeyField = 'matricula'
      ListField = 'matricula'
      ListSource = DataModule3.DataSource4
      TabOrder = 0
      OnClick = LCMBXcocheClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 255
    Width = 193
    Height = 58
    Caption = 'seleccion de clientes'
    TabOrder = 2
    object LCMBXcliente: TDBLookupComboBox
      Left = 3
      Top = 24
      Width = 187
      Height = 21
      KeyField = 'dni_con_letra'
      ListField = 'dni_con_letra;nom_apell'
      ListSource = DataModule3.DSclientes
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 319
    Width = 193
    Height = 62
    Caption = 'Costo de alquiler'
    TabOrder = 3
    object Label1: TLabel
      Left = 3
      Top = 16
      Width = 60
      Height = 13
      Caption = 'Valor por dia'
    end
    object Label2: TLabel
      Left = 69
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Cant de  dia'
    end
    object Label3: TLabel
      Left = 147
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object LblCantDias: TLabel
      Left = 77
      Top = 35
      Width = 6
      Height = 13
      Caption = '0'
    end
    object LblTotal: TLabel
      Left = 147
      Top = 35
      Width = 6
      Height = 13
      Caption = '0'
    end
    object LblV_X_Dia: TLabel
      Left = 16
      Top = 35
      Width = 3
      Height = 13
    end
  end
  object BtnInsertar: TButton
    Left = 0
    Top = 373
    Width = 193
    Height = 52
    Caption = 'Aceptar'
    TabOrder = 4
    OnClick = BtnInsertarClick
  end
end
