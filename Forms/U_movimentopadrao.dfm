inherited frm_padraomovimento: Tfrm_padraomovimento
  Caption = '   Formulario Padr'#227'o Movimento '
  ClientHeight = 721
  ClientWidth = 936
  Color = clWhite
  ExplicitWidth = 942
  ExplicitHeight = 750
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 296
    Top = 11
    Width = 90
    Height = 45
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
  inherited painel0: TPanel
    Width = 936
    Height = 65
    ExplicitWidth = 936
    ExplicitHeight = 65
    inherited SpeedButton10: TSpeedButton
      Left = 832
      Top = 11
      ExplicitLeft = 832
      ExplicitTop = 11
    end
    inherited bt_pesquisar: TBitBtn
      Left = 601
      Top = 11
      ExplicitLeft = 601
      ExplicitTop = 11
    end
    inherited bt_atualizar: TBitBtn
      Left = 485
      Top = 11
      ExplicitLeft = 485
      ExplicitTop = 11
    end
    inherited BitBtn1: TBitBtn
      Left = 716
      Top = 12
      ExplicitLeft = 716
      ExplicitTop = 12
    end
    object bt_new: TBitBtn
      Left = 24
      Top = 11
      Width = 90
      Height = 45
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bt_newClick
    end
    object bt_excluir: TBitBtn
      Left = 139
      Top = 11
      Width = 90
      Height = 45
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bt_excluirClick
    end
    object bt_edit: TBitBtn
      Left = 254
      Top = 11
      Width = 90
      Height = 45
      Caption = 'E&ditar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object bt_save: TBitBtn
      Left = 370
      Top = 11
      Width = 90
      Height = 45
      Caption = '&Salvar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = bt_saveClick
    end
  end
  inherited Panel1: TPanel
    Top = 661
    Width = 936
    Height = 60
    ExplicitTop = 661
    ExplicitWidth = 936
    ExplicitHeight = 60
    inherited DBNavigator1: TDBNavigator
      Left = 755
      Top = 96
      Hints.Strings = ()
      Visible = False
      ExplicitLeft = 755
      ExplicitTop = 96
    end
    object bt_confirmar: TBitBtn
      Left = 300
      Top = 6
      Width = 90
      Height = 45
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object bt_item: TBitBtn
      Left = 40
      Top = 6
      Width = 90
      Height = 45
      Caption = '&Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object bt_del: TBitBtn
      Left = 560
      Top = 6
      Width = 90
      Height = 45
      Caption = '&Deletar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object bt_imprimir: TBitBtn
      Left = 821
      Top = 6
      Width = 90
      Height = 45
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Left = 485
    Top = 468
    Width = 345
    Visible = False
    ExplicitLeft = 485
    ExplicitTop = 468
    ExplicitWidth = 345
    inherited bt_novo: TBitBtn
      Caption = '&'
    end
    inherited bt_deletar: TBitBtn
      Top = -9
      ExplicitTop = -9
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 65
    Width = 936
    Height = 176
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 3
  end
  object PageControl1: TPageControl [5]
    Left = 0
    Top = 241
    Width = 936
    Height = 420
    ActivePage = tab_contas
    Align = alClient
    TabOrder = 4
    object tab_produto: TTabSheet
      Caption = 'Itens Compra'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 928
        Height = 392
        Align = alClient
        DataSource = ds_padraoitem
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tab_contas: TTabSheet
      Caption = 'Conta '#224' Pagar'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 928
        Height = 392
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  inherited Q_padrao: TFDQuery
    Left = 880
    Top = 112
  end
  inherited ds_padrao: TDataSource
    Left = 840
    Top = 104
  end
  object Q_padraoitem: TFDQuery
    MasterSource = ds_padrao
    Left = 568
    Top = 137
  end
  object ds_padraoitem: TDataSource
    DataSet = Q_padraoitem
    Left = 648
    Top = 177
  end
end
