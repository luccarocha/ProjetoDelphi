object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'SCE - Sistema de Controle de Estoque '
  ClientHeight = 729
  ClientWidth = 1525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -24
    Top = 0
    Width = 1600
    Height = 49
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object bt_usuario: TSpeedButton
      Left = 34
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Usu'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = bt_usuarioClick
    end
    object SpeedButton2: TSpeedButton
      Left = 130
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Fornecedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 226
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 322
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 418
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Pagamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
    end
    object SpeedButton7: TSpeedButton
      Left = 514
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Compras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton7Click
    end
    object SpeedButton8: TSpeedButton
      Left = 610
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
    end
    object SpeedButton9: TSpeedButton
      Left = 1363
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Troca User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
    end
    object SpeedButton10: TSpeedButton
      Left = 1459
      Top = 5
      Width = 90
      Height = 40
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = SpeedButton10Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 710
    Width = 1525
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 136
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 64
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Compras1: TMenuItem
        Caption = '&Clientes'
        OnClick = Compras1Click
      end
      object Fornecedores1: TMenuItem
        Caption = '&Fornecedores'
        OnClick = Fornecedores1Click
      end
      object Fornecedores2: TMenuItem
        Caption = '&Pagamentos'
        OnClick = Fornecedores2Click
      end
      object Parceiros1: TMenuItem
        Caption = 'Pa&rceiros'
      end
      object Parceiros2: TMenuItem
        Caption = 'Produ&tos'
        OnClick = Parceiros2Click
      end
      object Usurios1: TMenuItem
        Caption = '&Usu'#225'rios'
        OnClick = Usurios1Click
      end
    end
    object Movimentos1: TMenuItem
      Caption = '&Movimentos'
      object Compras3: TMenuItem
        Caption = 'C&ompras'
      end
      object Vendas2: TMenuItem
        Caption = '&Vendas'
      end
    end
    object Rltorios1: TMenuItem
      Caption = '&Relatorios'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Compras2: TMenuItem
        Caption = 'Compras'
      end
      object Compras4: TMenuItem
        Caption = 'Fornecedores'
      end
      object Parcerias1: TMenuItem
        Caption = 'Pagamentos'
      end
      object Parcerias2: TMenuItem
        Caption = 'Parcerias'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Usurios2: TMenuItem
        Caption = 'Usu'#225'rios'
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Sobre1: TMenuItem
      Caption = '&Sobre'
    end
  end
end
