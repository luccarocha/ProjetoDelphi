inherited frm_clientes: Tfrm_clientes
  Caption = '   Cadastro de Clientes'
  ClientHeight = 581
  ClientWidth = 493
  OnActivate = FormActivate
  OnClose = FormClose
  ExplicitWidth = 499
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 29
    Top = 80
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
    Left = 29
    Top = 136
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
    Left = 24
    Top = 256
    Width = 78
    Height = 13
    Caption = 'LOGRADOURO'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 328
    Top = 317
    Width = 47
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 24
    Top = 317
    Width = 44
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 184
    Top = 80
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
  object Label7: TLabel [6]
    Left = 328
    Top = 136
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 24
    Top = 192
    Width = 35
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 328
    Top = 189
    Width = 52
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 29
    Top = 376
    Width = 42
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 328
    Top = 256
    Width = 20
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 265
    Top = 376
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited painel0: TPanel
    Width = 493
    TabOrder = 10
    ExplicitWidth = 493
    inherited SpeedButton10: TSpeedButton
      Left = 375
      ExplicitLeft = 375
    end
    inherited bt_pesquisar: TBitBtn
      Left = 143
      OnClick = bt_pesquisarClick
      ExplicitLeft = 143
    end
    inherited bt_atualizar: TBitBtn
      Left = 24
      ExplicitLeft = 24
    end
    inherited BitBtn1: TBitBtn
      Left = 258
      ExplicitLeft = 258
    end
  end
  inherited Panel1: TPanel
    Top = 524
    Width = 493
    Height = 57
    TabOrder = 11
    ExplicitTop = 524
    ExplicitWidth = 493
    ExplicitHeight = 57
    inherited DBNavigator1: TDBNavigator
      Left = 174
      Hints.Strings = ()
      ExplicitLeft = 174
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 24
    Top = 99
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 12
  end
  object db_nome: TDBEdit [15]
    Left = 24
    Top = 155
    Width = 282
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DBEdit3: TDBEdit [16]
    Left = 24
    Top = 275
    Width = 282
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [17]
    Left = 328
    Top = 333
    Width = 137
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit5: TDBEdit [18]
    Left = 24
    Top = 333
    Width = 282
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object db_cadastro: TDBEdit [19]
    Left = 179
    Top = 99
    Width = 127
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 13
  end
  object DBEdit7: TDBEdit [20]
    Left = 328
    Top = 152
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit8: TDBEdit [21]
    Left = 24
    Top = 208
    Width = 282
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit9: TDBEdit [22]
    Left = 328
    Top = 208
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit10: TDBEdit [23]
    Left = 24
    Top = 395
    Width = 225
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit11: TDBEdit [24]
    Left = 328
    Top = 275
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit12: TDBEdit [25]
    Left = 265
    Top = 395
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 9
  end
  inherited Panel2: TPanel
    Left = 85
    Top = 448
    TabOrder = 14
    ExplicitLeft = 85
    ExplicitTop = 448
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'select id_cliente, nome, endereco, numero, bairro,'
      'cidade, uf, cep, telefone, cpf, email, cadastro'
      'from cliente order by nome')
    Left = 328
    Top = 96
    object Q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 16
    end
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 16
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
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
    Left = 384
    Top = 96
  end
end
