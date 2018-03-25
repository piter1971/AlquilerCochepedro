object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Caract  del coche'
  ClientHeight = 225
  ClientWidth = 183
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 183
    Height = 225
    Align = alClient
    TabOrder = 0
    object DBLookupListBox1: TDBLookupListBox
      Left = 1
      Top = 1
      Width = 181
      Height = 212
      Align = alClient
      KeyField = 'Caract'
      ListField = 'Caract'
      ListSource = DataModule3.DSqCaractCoch
      TabOrder = 0
    end
  end
end
