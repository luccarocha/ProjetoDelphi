inherited frm_pesquisavenda: Tfrm_pesquisavenda
  Caption = 'frm_pesquisavenda'
  ClientWidth = 959
  Visible = False
  OnActivate = FormActivate
  ExplicitWidth = 965
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 959
    inherited cb_chave_pesquisa: TComboBox
      OnClick = cb_chave_pesquisaClick
      Items.Strings = (
        'C'#243'digo Venda'
        'Data da Venda'
        'Cliente'
        'Forma de Pagamento'
        'Per'#237'odo'
        'Usu'#225'rio'
        'Todos')
    end
    inherited bt_buscar: TBitBtn
      Left = 462
      Visible = False
      OnClick = bt_buscarClick
      ExplicitLeft = 462
    end
    inherited bt_transferir: TBitBtn
      Visible = True
      OnClick = bt_transferirClick
    end
  end
  inherited Panel2: TPanel
    Top = 588
    Width = 959
    Height = 28
    ExplicitTop = 588
    ExplicitHeight = 28
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
    object DBText2: TDBText
      Left = 782
      Top = 6
      Width = 144
      Height = 17
      DataField = 'VALORTOTAL'
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
    Width = 959
    Height = 515
    DataSource = ds_pesq_padrao
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDA'
        Title.Caption = 'C'#211'D. VENDA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'CLIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'FORMA PAGAMENTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COND_PGTO'
        Title.Caption = 'PARCELAS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
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
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'DATA VENDA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
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
        Width = 225
        Visible = True
      end>
  end
  inherited q_pesq_padrao: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    AggregatesActive = True
    SQL.Strings = (
      
        'select a.id_venda, a.id_cliente, b.nome, a.id_forma_pgto, c.desc' +
        'ricao, a.usuario, a.cadastro, a.cond_pgto, a.valor '
      
        'from venda a, cliente b, forma_pgto c where a.id_cliente = b.id_' +
        'cliente '
      'and a.id_forma_pgto = c.id_forma_pgto order by a.id_venda')
    object q_pesq_padraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object q_pesq_padraoCOND_PGTO: TIntegerField
      FieldName = 'COND_PGTO'
      Origin = 'COND_PGTO'
    end
    object q_pesq_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_pesq_padraoQUANTIDADE: TAggregateField
      FieldName = 'QUANTIDADE'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(ID_VENDA)'
    end
    object q_pesq_padraoVALORTOTAL: TAggregateField
      FieldName = 'VALORTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR)'
    end
  end
  inherited rel_pesq_padrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
