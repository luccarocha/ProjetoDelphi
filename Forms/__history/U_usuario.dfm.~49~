inherited frm_usuario: Tfrm_usuario
  Caption = '   Cadastro de Usu'#225'rios'
  ClientHeight = 391
  ClientWidth = 403
  ExplicitWidth = 409
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 73
    Top = 85
    Width = 44
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = db_iduser
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 73
    Top = 141
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 74
    Top = 205
    Width = 27
    Height = 13
    Caption = 'TIPO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 230
    Top = 85
    Width = 112
    Height = 13
    Caption = 'DATA DE CADASTRO'
    FocusControl = db_cadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 232
    Top = 208
    Width = 36
    Height = 13
    Caption = 'SENHA'
    FocusControl = db_senha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited painel0: TPanel
    Width = 403
    TabOrder = 5
    ExplicitWidth = 403
    inherited SpeedButton10: TSpeedButton
      Left = 308
      ExplicitLeft = 308
    end
    inherited bt_pesquisar: TBitBtn
      Left = 116
      OnClick = bt_pesquisarClick
      ExplicitLeft = 116
    end
    inherited bt_atualizar: TBitBtn
      Left = 20
      ExplicitLeft = 20
    end
    inherited BitBtn1: TBitBtn
      Left = 212
      ExplicitLeft = 212
    end
  end
  inherited Panel1: TPanel
    Top = 337
    Width = 403
    Height = 54
    TabOrder = 6
    ExplicitTop = 337
    ExplicitWidth = 403
    ExplicitHeight = 54
    inherited DBNavigator1: TDBNavigator
      Left = 134
      Hints.Strings = ()
      ExplicitLeft = 134
    end
  end
  object db_iduser: TDBEdit [7]
    Left = 73
    Top = 104
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 0
  end
  object db_nome: TDBEdit [8]
    Left = 73
    Top = 160
    Width = 282
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object db_cadastro: TDBEdit [9]
    Left = 228
    Top = 104
    Width = 127
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 3
  end
  object db_senha: TDBEdit [10]
    Left = 230
    Top = 224
    Width = 125
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 4
  end
  object db_tipo: TDBComboBox [11]
    AlignWithMargins = True
    Left = 75
    Top = 224
    Width = 132
    Height = 21
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADM'
      'AUX')
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Left = 45
    Top = 272
    TabOrder = 7
    ExplicitLeft = 45
    ExplicitTop = 272
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT ID_USUARIO, NOME, SENHA, TIPO, CADASTRO'
      'FROM USUARIO  ORDER BY ID_USUARIO')
    Left = 22
    Top = 144
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 24
    Top = 88
  end
  object ds_pesq_padrao: TDataSource
    DataSet = q_pesq_padrao
    Left = 375
    Top = 363
  end
  object q_pesq_padrao: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_usuario, nome, tipo, cadastro from usuario order by id' +
        '_usuario')
    Left = 375
    Top = 363
    object q_pesq_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_pesq_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
