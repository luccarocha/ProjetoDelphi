inherited frm_produto: Tfrm_produto
  Caption = '   Cadastro de Produtos'
  ClientHeight = 412
  ClientWidth = 488
  OnClose = FormClose
  ExplicitWidth = 494
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 37
    Top = 96
    Width = 44
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = db_id_produto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 192
    Top = 96
    Width = 95
    Height = 13
    Caption = 'DATA CADASTRO'
    FocusControl = db_cadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 37
    Top = 149
    Width = 64
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    FocusControl = db_descricao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 278
    Top = 149
    Width = 53
    Height = 13
    Caption = 'VL CUSTO'
    FocusControl = db_custo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 385
    Top = 149
    Width = 52
    Height = 13
    Caption = 'VL VENDA'
    FocusControl = db_venda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 37
    Top = 205
    Width = 50
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = db_estoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 111
    Top = 205
    Width = 48
    Height = 13
    Caption = 'EST. MIN'
    FocusControl = db_estoque_min
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [7]
    Left = 193
    Top = 205
    Width = 72
    Height = 13
    Caption = 'FORNECEDOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited painel0: TPanel
    Width = 488
    ExplicitWidth = 488
    inherited SpeedButton10: TSpeedButton
      Left = 385
      ExplicitLeft = 385
    end
    inherited bt_pesquisar: TBitBtn
      Left = 161
      OnClick = bt_pesquisarClick
      ExplicitLeft = 161
    end
    inherited BitBtn1: TBitBtn
      Left = 274
      ExplicitLeft = 274
    end
  end
  inherited Panel1: TPanel
    Top = 354
    Width = 488
    ExplicitTop = 354
    ExplicitWidth = 488
    inherited DBNavigator1: TDBNavigator
      Left = 182
      Hints.Strings = ()
      ExplicitLeft = 182
    end
  end
  inherited Panel2: TPanel
    Left = 93
    Top = 272
    ExplicitLeft = 93
    ExplicitTop = 272
  end
  object db_id_produto: TDBEdit [11]
    Left = 37
    Top = 112
    Width = 134
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_cadastro: TDBEdit [12]
    Left = 192
    Top = 115
    Width = 127
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  object db_descricao: TDBEdit [13]
    Left = 37
    Top = 168
    Width = 220
    Height = 21
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object db_custo: TDBEdit [14]
    Left = 278
    Top = 168
    Width = 90
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object db_venda: TDBEdit [15]
    Left = 385
    Top = 168
    Width = 90
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object db_estoque: TDBEdit [16]
    Left = 37
    Top = 224
    Width = 60
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object db_estoque_min: TDBEdit [17]
    Left = 111
    Top = 224
    Width = 60
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object db_id_fornecedor: TDBEdit [18]
    Left = 193
    Top = 224
    Width = 66
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 10
  end
  object DBLookupComboBox1: TDBLookupComboBox [19]
    Left = 193
    Top = 224
    Width = 175
    Height = 21
    DataField = 'NOMEFORNE'
    DataSource = ds_padrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      
        'select A.ID_PRODUTO, A.PRODUTO_DESCRICAO, A.VL_CUSTO, A.VL_VENDA' +
        ', A.ESTOQUE, A.ESTOQUE_MIN, A.UNIDADE,             '
      
        '       A.CADASTRO, A.ID_FORNECEDOR, B.NOME from PRODUTO A, FORNE' +
        'CEDOR B where  A.ID_FORNECEDOR = B.ID_FORNECEDOR'
      'order by  A.ID_PRODUTO')
    Left = 24
    Top = 616
    object Q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_padraoNOMEFORNE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEFORNE'
      LookupDataSet = Q_forne
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object Q_padraoESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
  end
  inherited ds_padrao: TDataSource
    Left = 72
    Top = 616
  end
  object Q_forne: TFDQuery
    MasterSource = ds_padrao
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_fornecedor, nome from fornecedor order by  id_forneced' +
        'or')
    Left = 24
    Top = 369
    object Q_forneID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_forneNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object ds_fornecedor: TDataSource
    DataSet = Q_forne
    Left = 96
    Top = 369
  end
end
