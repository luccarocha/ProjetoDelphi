inherited frm_formapgto: Tfrm_formapgto
  Caption = '   Cadastro Formas de Pagameto'
  ClientHeight = 345
  ClientWidth = 451
  ExplicitWidth = 457
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 37
    Top = 104
    Width = 44
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 37
    Top = 160
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
  object Label3: TLabel [2]
    Left = 185
    Top = 104
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
  inherited painel0: TPanel
    Width = 451
  end
  inherited Panel1: TPanel
    Top = 287
    Width = 451
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Top = 216
    ExplicitTop = 216
  end
  object DBEdit1: TDBEdit [6]
    Left = 37
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_descricao: TDBEdit [7]
    Left = 37
    Top = 176
    Width = 378
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object db_cadastro: TDBEdit [8]
    Left = 185
    Top = 120
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      
        'Select id_forma_pgto, descricao, cadastro from forma_pgto order ' +
        'by id_forma_pgto')
    Left = 16
    Top = 304
    object Q_padraoID_FORMA_PGTO: TFDAutoIncField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 72
    Top = 304
  end
end
