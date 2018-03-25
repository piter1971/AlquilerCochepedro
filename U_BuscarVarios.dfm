object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Buscar'
  ClientHeight = 492
  ClientWidth = 422
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
    Width = 422
    Height = 492
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 418
      Height = 113
      Align = alCustom
      Caption = 'Filtros'
      TabOrder = 0
      object ComboBox1: TComboBox
        Left = 463
        Top = 182
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'CMBXMarca'
        Items.Strings = (
          'Ford'
          'Honda'
          'Peugot'
          'Opel'
          'Nissan'
          'Renault')
      end
      object Button1: TButton
        Left = 328
        Top = 60
        Width = 75
        Height = 25
        Caption = 'Aplicar Filtro'
        TabOrder = 1
        OnClick = Button1Click
      end
      object DBLBXMarca: TDBLookupComboBox
        Left = 144
        Top = 20
        Width = 145
        Height = 21
        Enabled = False
        KeyField = 'Marca'
        ListField = 'Marca'
        ListSource = DataModule3.DSFiltroMarca
        TabOrder = 2
        OnClick = DBLBXMarcaClick
      end
      object DBLBXModelo: TDBLookupComboBox
        Left = 144
        Top = 47
        Width = 145
        Height = 21
        Enabled = False
        KeyField = 'Modelo'
        ListField = 'Modelo'
        ListSource = DataModule3.DSFiltroModelo
        TabOrder = 3
      end
      object CHBXMarca: TCheckBox
        Left = 32
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Marca'
        TabOrder = 4
        OnClick = CHBXMarcaClick
      end
      object CHBXModelo: TCheckBox
        Left = 32
        Top = 64
        Width = 97
        Height = 17
        Caption = 'Modelo'
        TabOrder = 5
        OnClick = CHBXModeloClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 112
      Width = 418
      Height = 206
      Align = alCustom
      Caption = 'Consultas'
      TabOrder = 1
      object Label1: TLabel
        Left = 191
        Top = 52
        Width = 43
        Height = 13
        Caption = 'y Modelo'
      end
      object RBCons1: TRadioButton
        Left = 16
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Coches que tienen'
        TabOrder = 0
      end
      object LCMBXCarat: TDBLookupComboBox
        Left = 135
        Top = 24
        Width = 145
        Height = 21
        KeyField = 'nombre_caract'
        ListField = 'nombre_caract'
        ListSource = DataModule3.DSCaract
        TabOrder = 1
      end
      object BtnBuscar: TButton
        Left = 336
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = BtnBuscarClick
      end
      object RBConsMarcaMod: TRadioButton
        Left = 16
        Top = 51
        Width = 81
        Height = 17
        Caption = 'Coche Marca'
        TabOrder = 3
      end
      object ETMarca: TEdit
        Left = 120
        Top = 51
        Width = 49
        Height = 21
        TabOrder = 4
      end
      object ETModelo: TEdit
        Left = 248
        Top = 51
        Width = 49
        Height = 21
        TabOrder = 5
      end
      object RBBuscarDistinct: TRadioButton
        Left = 16
        Top = 80
        Width = 257
        Height = 17
        Caption = 'Coches que has sido alquilado alguna vez'
        TabOrder = 6
      end
      object RBBuscarGroup: TRadioButton
        Left = 16
        Top = 112
        Width = 387
        Height = 17
        Caption = 
          'Coches que has sido alquilado alguna vez  (Sin duplicar marca o ' +
          'modelo)'
        TabOrder = 7
      end
      object RBMas2: TRadioButton
        Left = 16
        Top = 144
        Width = 369
        Height = 17
        Caption = 
          'Coches que has sido alquilado alguna vez  (Agrupado por marca y ' +
          'modelo)'
        TabOrder = 8
      end
      object RBxVeces: TRadioButton
        Left = 16
        Top = 176
        Width = 226
        Height = 17
        Caption = 'Coches que han sido alquilados mas de'
        TabOrder = 9
      end
      object ETXVeces: TEdit
        Left = 240
        Top = 175
        Width = 65
        Height = 21
        TabOrder = 10
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 324
      Width = 418
      Height = 168
      DataSource = DataModule3.DSGrid
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
