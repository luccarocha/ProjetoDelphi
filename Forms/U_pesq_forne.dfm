inherited frm_pesq_forne: Tfrm_pesq_forne
  Caption = '   Visualiza Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cb_chave_pesquisa: TComboBox
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Logradouro'
        'Bairro'
        'Cidade'
        'UF'
        'CEP'
        'CNPJ'
        'Pais'
        'Data de Cadastro'
        'Per'#237'odo'
        'Todos')
    end
    inherited mk_cpf: TMaskEdit
      Width = 116
      EditMask = '00\.000\.000\/0000-00;0;_'
      MaxLength = 18
      ExplicitWidth = 116
    end
  end
  inherited DBGrid1: TDBGrid
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'C'#211'DIGO'
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
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'LOGRADOURO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAIS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA DE CADASTRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid [5]
    Left = 0
    Top = 73
    Width = 1136
    Height = 564
    Align = alClient
    DataSource = ds_pesq_forne
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'C'#211'DIGO'
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
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'LOGRADOURO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 194
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAIS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'DATA DE CADASTRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 170
        Visible = True
      end>
  end
  inherited q_pesq_padrao: TFDQuery
    Active = False
    SQL.Strings = ()
    Left = 760
    Top = 640
    object q_pesq_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object q_pesq_padraoPAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Required = True
      FixedChar = True
      Size = 50
    end
  end
  inherited ds_pesq_padrao: TDataSource
    Left = 664
    Top = 640
  end
  inherited ds_rel_pesq_padrao: TfrxDBDataset
    UserName = 'frx_fornecedor'
    DataSet = Q_pesq_forne
  end
  inherited rel_pesq_padrao: TfrxReport
    ReportOptions.LastChange = 44522.350960763890000000
    Datasets = <
      item
        DataSet = ds_rel_pesq_padrao
        DataSetName = 'frx_fornecedor'
      end>
    Variables = <>
    Style = <>
    inherited Page1: TfrxReportPage
      inherited Titulo: TfrxReportTitle
        inherited Memo1: TfrxMemoView
          Memo.UTF8W = (
            'RELAT'#211'RIO DE FORNECEDORES')
        end
      end
      inherited MasterData1: TfrxMasterData
        DataSetName = 'frx_fornecedor'
        inherited frxDBDataset1ID_CLIENTE: TfrxMemoView
          DataField = ''
          DataSetName = 'frx_fornecedor'
          Memo.UTF8W = (
            '[frx_fornecedor."ID_FORNECEDOR"]')
        end
        inherited frxDBDataset1NOME: TfrxMemoView
          Width = 147.401670000000000000
          DataField = ''
          DataSetName = 'frx_fornecedor'
          Memo.UTF8W = (
            '[frx_fornecedor."NOME"]')
        end
        inherited frxDBDataset1TELEFONE: TfrxMemoView
          Left = 226.771800000000000000
          Width = 154.960730000000000000
          DataField = ''
          DataSetName = 'frx_fornecedor'
          Memo.UTF8W = (
            '[frx_fornecedor."EMAIL"]')
        end
        inherited frxDBDataset1CADASTRO: TfrxMemoView
          DataField = ''
          DataSetName = 'frx_fornecedor'
          Memo.UTF8W = (
            '[frx_fornecedor."CADASTRO"]')
        end
        inherited frxDBDataset1CIDADE: TfrxMemoView
          Left = 381.732530000000000000
          Top = 0.000000000000000000
          Width = 109.606370000000000000
          DataField = ''
          DataSetName = 'frx_fornecedor'
          Memo.UTF8W = (
            '[frx_fornecedor."PAIS"]')
        end
      end
      inherited PageHeader1: TfrxPageHeader
        inherited Memo3: TfrxMemoView
          Width = 147.401670000000000000
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
        end
        inherited Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Width = 154.960730000000000000
          Memo.UTF8W = (
            'EMAIL')
        end
        inherited Memo6: TfrxMemoView
          Left = 381.732530000000000000
          Width = 109.606370000000000000
          Memo.UTF8W = (
            'PA'#205'S')
        end
      end
    end
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 848
    Top = 176
  end
  object ds_pesq_forne: TDataSource
    DataSet = Q_pesq_forne
    Left = 296
    Top = 640
  end
  object Q_pesq_forne: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'select id_fornecedor, nome, endereco, numero, bairro,'
      'cidade, uf, cep, telefone, cnpj, email, cadastro, pais'
      'from fornecedor order by nome')
    Left = 376
    Top = 640
    object Q_pesq_forneID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_forneNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_pesq_forneENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_pesq_forneNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_pesq_forneBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_pesq_forneCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_pesq_forneUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_pesq_forneCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object Q_pesq_forneTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object Q_pesq_forneCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Q_pesq_forneEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_pesq_forneCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_pesq_fornePAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Required = True
      FixedChar = True
      Size = 50
    end
  end
end
