inherited frm_pesq_prod: Tfrm_pesq_prod
  Caption = '   Visualiza Produtos'
  Visible = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitWidth = 945
    inherited cb_chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o'
        'Fornecedor'
        'Data de Cadastro'
        'Per'#237'odo'
        'Todos')
    end
    inherited bt_buscar: TBitBtn
      Left = 535
      OnClick = bt_buscarClick
      ExplicitLeft = 535
    end
    object bt_atualizar: TBitBtn
      Left = 695
      Top = 20
      Width = 75
      Height = 35
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object bt_cadastrar: TBitBtn
      Left = 614
      Top = 20
      Width = 75
      Height = 35
      Caption = '&Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    ExplicitTop = 561
    ExplicitWidth = 945
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    ParentFont = False
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO_DESCRICAO'
        Title.Caption = 'DESCRICA'#199#195'O'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'VALOR CUSTO'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Title.Caption = 'VALOR VENDA'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MIN'
        Title.Caption = 'ESTOQUE MIN'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'FORNECEDOR'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'DATA DE CADASTRO'
        Visible = True
      end>
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      
        'select A.ID_PRODUTO, A.PRODUTO_DESCRICAO, A.VL_CUSTO, A.VL_VENDA' +
        ', A.ESTOQUE, A.ESTOQUE_MIN, A.UNIDADE,             '
      
        '       A.CADASTRO, A.ID_FORNECEDOR, B.NOME from PRODUTO A, FORNE' +
        'CEDOR B where  A.ID_FORNECEDOR = B.ID_FORNECEDOR'
      'order by  A.ID_PRODUTO')
    Left = 824
    Top = 136
    object q_pesq_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object q_pesq_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_pesq_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_pesq_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_pesq_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
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
  end
  inherited ds_pesq_padrao: TDataSource
    Left = 736
    Top = 144
  end
end