object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 310
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 437
    Height = 310
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 200
    object abla1: TMenuItem
      Caption = '&Tabla'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Coches1: TMenuItem
        Caption = 'Coches'
      end
      object Alquiler1: TMenuItem
        Caption = 'Alquiler'
      end
      object Accesorios1: TMenuItem
        Caption = 'Accesorios'
        OnClick = Accesorios1Click
      end
      object Caracteristicas1: TMenuItem
        Caption = 'Caracteristicas'
        OnClick = Caracteristicas1Click
      end
    end
    object Operaciones1: TMenuItem
      Caption = '&Operaciones'
    end
  end
end
