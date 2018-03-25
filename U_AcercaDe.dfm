object Form11: TForm11
  Left = 0
  Top = 0
  Caption = 'Acerca De '
  ClientHeight = 238
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 238
    Align = alClient
    Color = clRed
    ParentBackground = False
    TabOrder = 0
    OnCanResize = Panel1CanResize
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 269
      Height = 19
      Caption = 'Creador Pedro Rodriguez Lozano'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 32
      Top = 49
      Width = 329
      Height = 160
      TabOrder = 0
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 76
        Height = 13
        Caption = 'Fecha creacion:'
      end
      object Label3: TLabel
        Left = 224
        Top = 24
        Width = 81
        Height = 13
        Caption = '21/08/2017'
      end
      object Label4: TLabel
        Left = 24
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Localidad:'
      end
      object Label5: TLabel
        Left = 224
        Top = 49
        Width = 75
        Height = 13
        Caption = ' M'#224'laga Espa'#241'a'
      end
      object Label6: TLabel
        Left = 24
        Top = 73
        Width = 130
        Height = 13
        Caption = 'Lenguaje de programacion '
      end
      object Label7: TLabel
        Left = 224
        Top = 73
        Width = 29
        Height = 13
        Caption = 'Delphi'
      end
      object Label8: TLabel
        Left = 24
        Top = 97
        Width = 32
        Height = 13
        Caption = 'Editor:'
      end
      object Label9: TLabel
        Left = 224
        Top = 97
        Width = 57
        Height = 13
        Caption = 'Embarcader'
      end
      object Label10: TLabel
        Left = 24
        Top = 121
        Width = 105
        Height = 13
        Caption = 'Editor Base De Datos:'
      end
      object Label11: TLabel
        Left = 224
        Top = 121
        Width = 45
        Height = 13
        Caption = 'SQLLite'
      end
    end
  end
end
