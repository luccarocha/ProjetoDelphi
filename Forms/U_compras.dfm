inherited frm_compras: Tfrm_compras
  Left = 549
  Caption = '  Procedimento de Compras'
  ClientHeight = 547
  ClientWidth = 946
  Position = poMainFormCenter
  ExplicitWidth = 952
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited SpeedButton1: TSpeedButton
    Left = 720
    Top = 168
    ExplicitLeft = 720
    ExplicitTop = 168
  end
  inherited painel0: TPanel
    Top = 487
    Width = 946
    Height = 60
    Align = alBottom
    BorderStyle = bsSingle
    ExplicitTop = 492
    ExplicitWidth = 946
    ExplicitHeight = 60
    inherited SpeedButton10: TSpeedButton
      Width = 0
      ExplicitWidth = 0
    end
    inherited bt_pesquisar: TBitBtn
      Left = 605
      Top = 6
      ExplicitLeft = 605
      ExplicitTop = 6
    end
    inherited bt_atualizar: TBitBtn
      Left = 489
      Top = 6
      ExplicitLeft = 489
      ExplicitTop = 6
    end
    inherited BitBtn1: TBitBtn
      Left = 721
      Top = 6
      ExplicitLeft = 721
      ExplicitTop = 6
    end
    inherited bt_new: TBitBtn
      Top = 6
      ExplicitTop = 6
    end
    inherited bt_excluir: TBitBtn
      Left = 372
      Top = 6
      Enabled = False
      ExplicitLeft = 372
      ExplicitTop = 6
    end
    inherited bt_edit: TBitBtn
      Left = 256
      Top = 6
      Enabled = False
      OnClick = bt_editClick
      ExplicitLeft = 256
      ExplicitTop = 6
    end
    inherited bt_save: TBitBtn
      Left = 140
      Top = 6
      ExplicitLeft = 140
      ExplicitTop = 6
    end
    object bt_itens: TBitBtn
      Left = 838
      Top = 4
      Width = 90
      Height = 45
      Caption = '&Itens'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bt_itensClick
    end
  end
  inherited Panel1: TPanel
    Top = 314
    Width = 946
    Height = 67
    BorderStyle = bsSingle
    Visible = False
    ExplicitTop = 320
    ExplicitWidth = 946
    ExplicitHeight = 67
    inherited DBNavigator1: TDBNavigator
      Left = 519
      Top = 11
      Width = 80
      Height = 45
      Hints.Strings = ()
      ExplicitLeft = 519
      ExplicitTop = 11
      ExplicitWidth = 80
      ExplicitHeight = 45
    end
    inherited bt_confirmar: TBitBtn
      Left = 108
      Top = 14
      OnClick = bt_confirmarClick
      ExplicitLeft = 108
      ExplicitTop = 14
    end
    inherited bt_item: TBitBtn
      Left = 12
      Top = 13
      Caption = '&Iserir Item'
      OnClick = bt_itemClick
      ExplicitLeft = 12
      ExplicitTop = 13
    end
    inherited bt_del: TBitBtn
      Left = 742
      Top = 14
      Caption = '&Remover'
      OnClick = bt_delClick
      ExplicitLeft = 742
      ExplicitTop = 14
    end
    inherited bt_imprimir: TBitBtn
      Left = 838
      Top = 14
      ExplicitLeft = 838
      ExplicitTop = 14
    end
  end
  inherited Panel2: TPanel
    Left = 403
    Top = 156
    ExplicitLeft = 403
    ExplicitTop = 156
  end
  inherited Panel3: TPanel
    Top = 381
    Width = 946
    Height = 106
    Align = alBottom
    BorderStyle = bsSingle
    ExplicitTop = 502
    ExplicitWidth = 946
    ExplicitHeight = 106
    object Label1: TLabel
      Left = 10
      Top = 51
      Width = 95
      Height = 13
      Caption = 'C'#211'DIGO COMPRA'
      FocusControl = db_codcompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 626
      Top = 51
      Width = 72
      Height = 13
      Caption = 'FORNECEDOR'
      FocusControl = db_codfornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 790
      Top = 51
      Width = 73
      Height = 13
      Caption = 'FORMA PGTO'
      FocusControl = db_formapgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 151
      Top = 51
      Width = 82
      Height = 13
      Caption = 'DATA COMPRA'
      FocusControl = db_cadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 299
      Top = 51
      Width = 52
      Height = 13
      Caption = 'USU'#193'RIO'
      FocusControl = db_usuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 475
      Top = 51
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = db_valor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 9
      Top = 10
      Width = 171
      Height = 19
      Caption = 'Detalhes da Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object db_codcompra: TDBEdit
      Left = 9
      Top = 70
      Width = 110
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 0
    end
    object db_codfornecedor: TDBEdit
      Left = 628
      Top = 43
      Width = 0
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 6
    end
    object db_formapgto: TDBEdit
      Left = 797
      Top = 43
      Width = 0
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 7
    end
    object db_cadastro: TDBEdit
      Left = 151
      Top = 70
      Width = 120
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      TabOrder = 1
    end
    object db_usuario: TDBEdit
      Left = 299
      Top = 70
      Width = 150
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 2
    end
    object db_valor: TDBEdit
      Left = 493
      Top = 43
      Width = 0
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 626
      Top = 70
      Width = 133
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 790
      Top = 70
      Width = 136
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      TabOrder = 5
    end
    object db_subtotal: TDBEdit
      Left = 475
      Top = 70
      Width = 110
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 8
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 131
    Width = 946
    Height = 77
    DataSource = ds_padraoitem
    ParentFont = False
    TitleFont.Style = [fsBold]
    Visible = True
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
        Title.Caption = 'SEQ.'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'C'#211'D. PRODUTO'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 288
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'QUANTIDADE'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'VALOR CUSTO'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Title.Caption = 'TOTAL ITEM'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Title.Caption = 'C'#211'D. COMPRA'
        Width = 100
        Visible = True
      end>
  end
  object Panel4: TPanel [6]
    Left = 0
    Top = 208
    Width = 946
    Height = 106
    Align = alBottom
    BorderStyle = bsSingle
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    ExplicitLeft = 8
    ExplicitTop = 235
    object Label7: TLabel
      Left = 9
      Top = 48
      Width = 83
      Height = 13
      Caption = 'C'#211'D. PRODUTO'
      FocusControl = db_codprod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 151
      Top = 48
      Width = 73
      Height = 13
      Caption = 'QUANTIDADE'
      FocusControl = db_qtde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 299
      Top = 48
      Width = 77
      Height = 13
      Caption = 'VALOR CUSTO'
      FocusControl = db_vl_custo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 475
      Top = 48
      Width = 58
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = db_desconto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 628
      Top = 48
      Width = 67
      Height = 13
      Caption = 'TOTAL ITEM'
      FocusControl = db_vl_item
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 12
      Top = 6
      Width = 116
      Height = 19
      Caption = 'Itens Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object db_codprod: TDBEdit
      Left = 9
      Top = 67
      Width = 110
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = ds_padraoitem
      TabOrder = 0
      OnExit = db_codprodExit
    end
    object db_qtde: TDBEdit
      Left = 151
      Top = 67
      Width = 120
      Height = 21
      DataField = 'QTDE'
      DataSource = ds_padraoitem
      TabOrder = 1
    end
    object db_vl_custo: TDBEdit
      Left = 299
      Top = 67
      Width = 150
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = ds_padraoitem
      TabOrder = 2
    end
    object db_desconto: TDBEdit
      Left = 475
      Top = 64
      Width = 110
      Height = 21
      DataField = 'DESCONTO'
      DataSource = ds_padraoitem
      TabOrder = 3
      OnClick = db_descontoClick
      OnExit = db_descontoExit
    end
    object db_vl_item: TDBEdit
      Left = 628
      Top = 64
      Width = 133
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = ds_padraoitem
      TabOrder = 4
    end
  end
  object Panel5: TPanel [7]
    Left = 0
    Top = 0
    Width = 946
    Height = 73
    Align = alTop
    BorderStyle = bsSingle
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 6
    Visible = False
    ExplicitLeft = 8
    ExplicitTop = 111
    object Label13: TLabel
      Left = 12
      Top = 16
      Width = 95
      Height = 13
      Caption = 'C'#211'DIGO COMPRA'
      FocusControl = db_aux1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 153
      Top = 16
      Width = 82
      Height = 13
      Caption = 'DATA COMPRA'
      FocusControl = db_aux2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 301
      Top = 16
      Width = 52
      Height = 13
      Caption = 'USU'#193'RIO'
      FocusControl = db_aux3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 477
      Top = 16
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = db_valor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 628
      Top = 16
      Width = 72
      Height = 13
      Caption = 'FORNECEDOR'
      FocusControl = db_codfornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 792
      Top = 16
      Width = 73
      Height = 13
      Caption = 'FORMA PGTO'
      FocusControl = db_formapgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object db_aux1: TDBEdit
      Left = 11
      Top = 35
      Width = 110
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object db_aux2: TDBEdit
      Left = 153
      Top = 35
      Width = 120
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object db_aux3: TDBEdit
      Left = 301
      Top = 35
      Width = 150
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object db_aux4: TDBEdit
      Left = 477
      Top = 35
      Width = 110
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object db_aux5: TDBLookupComboBox
      Left = 628
      Top = 35
      Width = 133
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object db_aux6: TDBLookupComboBox
      Left = 792
      Top = 35
      Width = 136
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel6: TPanel [8]
    Left = 0
    Top = 73
    Width = 946
    Height = 58
    Align = alTop
    BorderStyle = bsSingle
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 7
    Visible = False
    object DBNavigator2: TDBNavigator
      Left = 680
      Top = 4
      Width = 248
      Height = 45
      DataSource = ds_padrao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object bt_save2: TBitBtn
      Left = 15
      Top = 4
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
      TabOrder = 1
      OnClick = bt_save2Click
    end
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      
        'select id_compra, id_fornecedor,id_forma_pgto, usuario, valor, c' +
        'adastro from  compra')
    Left = 136
    Top = 80
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = Q_forne
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_formapgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 192
    Top = 80
  end
  inherited Q_padraoitem: TFDQuery
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      
        'SELECT ID_SEQUENCIA, ID_COMPRA, ID_PRODUTO, QTDE, VL_CUSTO, DESC' +
        'ONTO, TOTAL_ITEM FROM ITEM_COMPRA'
      'WHERE ID_COMPRA=:ID_COMPRA')
    Left = 640
    Top = 97
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_padraoitemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoitemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoitemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_padraoitemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoitemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoitemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoitemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoitemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_produtos
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
    end
    object Q_padraoitemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited ds_padraoitem: TDataSource
    Left = 704
    Top = 89
  end
  object Q_forne: TFDQuery
    MasterSource = ds_padrao
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_fornecedor, nome from fornecedor order by  id_forneced' +
        'or')
    Left = 504
    Top = 81
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
    Left = 552
    Top = 89
  end
  object Q_formapgto: TFDQuery
    MasterSource = ds_padrao
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_forma_pgto, descricao from forma_pgto order by id_form' +
        'a_pgto')
    Left = 288
    Top = 81
    object Q_formapgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_formapgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object ds_formapgto: TDataSource
    DataSet = Q_formapgto
    Left = 360
    Top = 81
  end
  object Q_produtos: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_produto, produto_descricao, estoque, estoque_min, vl_c' +
        'usto from produto order by id_produto')
    Left = 768
    Top = 88
  end
end