object frm_pesquisapadrao: Tfrm_pesquisapadrao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Formuraio Pesquisa Padrao'
  ClientHeight = 616
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 945
    Height = 73
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 935
    object lb_oppesq: TLabel
      Left = 16
      Top = 16
      Width = 196
      Height = 13
      Caption = 'Selecione uma Op'#231#245'es de Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_desc: TLabel
      Left = 246
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lb_inicio: TLabel
      Left = 246
      Top = 16
      Width = 31
      Height = 13
      Caption = 'In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object cb_chave_pesquisa: TComboBox
      Left = 16
      Top = 35
      Width = 196
      Height = 21
      TabOrder = 0
      OnChange = cb_chave_pesquisaChange
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cadastro'
        'Per'#237'odo'
        'Todos')
    end
    object mk_inicio: TMaskEdit
      Left = 246
      Top = 35
      Width = 87
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      Visible = False
    end
    object mk_fim: TMaskEdit
      Left = 353
      Top = 35
      Width = 87
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      Visible = False
    end
    object bt_buscar: TBitBtn
      Left = 550
      Top = 20
      Width = 73
      Height = 35
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 774
      Top = 20
      Width = 73
      Height = 35
      Caption = '&Transferir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 853
      Top = 20
      Width = 73
      Height = 35
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object ed_nome: TEdit
    Left = 246
    Top = 35
    Width = 199
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 561
    Width = 945
    Height = 55
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 672
    ExplicitWidth = 935
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 945
    Height = 488
    Align = alClient
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object q_pesq_padrao: TFDQuery
    Connection = DM.Conexao
    Left = 800
    Top = 104
  end
  object ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
    Left = 728
    Top = 104
  end
end