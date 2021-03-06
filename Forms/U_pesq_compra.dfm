inherited frm_pesquisacompra: Tfrm_pesquisacompra
  Caption = '   Visualiza Compras'
  Visible = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cb_chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#243'digo Compra'
        'Data da Compra'
        'Fornecedor'
        'Forma de Pagamento'
        'Per'#237'odo'
        'Usu'#225'rio'
        'Todos')
    end
    inherited bt_buscar: TBitBtn
      Left = 695
      OnClick = bt_buscarClick
      ExplicitLeft = 695
    end
    inherited bt_transferir: TBitBtn
      Visible = True
      OnClick = bt_transferirClick
    end
  end
  inherited Panel2: TPanel
    Top = 588
    Height = 28
    ExplicitTop = 588
    ExplicitHeight = 28
    object Label1: TLabel
      Left = 675
      Top = 6
      Width = 93
      Height = 16
      Caption = 'VALOR TOTAL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 14
      Top = 6
      Width = 131
      Height = 16
      Caption = 'QUANTIDADE TOTAL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 163
      Top = 6
      Width = 65
      Height = 17
      DataField = 'QUANTIDADE'
      DataSource = ds_pesq_padrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 782
      Top = 6
      Width = 144
      Height = 17
      DataField = 'SOMAVALOR'
      DataSource = ds_pesq_padrao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited DBGrid1: TDBGrid
    Height = 515
    DataSource = ds_pesq_padrao
    ParentFont = False
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Title.Caption = 'C'#211'D. COMPRA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 97
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'DATA DA COMPRA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'FORNECEDOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'FORMA DE PAGAMENTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'USU'#193'RIO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 231
        Visible = True
      end>
  end
  inherited q_pesq_padrao: TFDQuery
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    SQL.Strings = (
      
        'select a.id_compra, a.id_fornecedor, b.nome, a.id_forma_pgto, c.' +
        'descricao, a.usuario, a.cadastro, a.valor '
      
        'from compra a, fornecedor b, forma_pgto c where a.id_fornecedor ' +
        '= b.id_fornecedor '
      'and a.id_forma_pgto = c.id_forma_pgto order by a.id_compra')
    Left = 816
    object q_pesq_padraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object q_pesq_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object q_pesq_padraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object q_pesq_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object q_pesq_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_pesq_padraoSOMAVALOR: TAggregateField
      FieldName = 'SOMAVALOR'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR)'
    end
    object q_pesq_padraoQUANTIDADE: TAggregateField
      FieldName = 'QUANTIDADE'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(ID_COMPRA)'
    end
  end
  inherited rel_pesq_padrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
