inherited frm_compras: Tfrm_compras
  Left = 549
  Caption = 'Contas '#224' Pagar'
  ClientHeight = 558
  ClientWidth = 946
  Position = poMainFormCenter
  ExplicitWidth = 952
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited SpeedButton1: TSpeedButton
    Left = 720
    Top = 168
    ExplicitLeft = 720
    ExplicitTop = 168
  end
  inherited painel0: TPanel
    Top = 493
    Width = 946
    Align = alBottom
    BorderStyle = bsSingle
    ExplicitTop = 493
    ExplicitWidth = 946
    inherited SpeedButton10: TSpeedButton
      Width = 0
      ExplicitWidth = 0
    end
    inherited bt_pesquisar: TBitBtn
      Left = 127
      Top = 8
      OnClick = bt_pesquisarClick
      ExplicitLeft = 127
      ExplicitTop = 8
    end
    inherited bt_atualizar: TBitBtn
      Left = 601
      Top = 8
      Visible = False
      ExplicitLeft = 601
      ExplicitTop = 8
    end
    inherited BitBtn1: TBitBtn
      Left = 838
      Top = 8
      ExplicitLeft = 838
      ExplicitTop = 8
    end
    inherited bt_new: TBitBtn
      Left = 9
      Top = 8
      ExplicitLeft = 9
      ExplicitTop = 8
    end
    inherited bt_excluir: TBitBtn
      Left = 482
      Top = 8
      Enabled = False
      Visible = False
      ExplicitLeft = 482
      ExplicitTop = 8
    end
    inherited bt_edit: TBitBtn
      Left = 364
      Top = 8
      Enabled = False
      Visible = False
      OnClick = bt_editClick
      ExplicitLeft = 364
      ExplicitTop = 8
    end
    inherited bt_save: TBitBtn
      Left = 718
      Top = 8
      Visible = False
      ExplicitLeft = 718
      ExplicitTop = 8
    end
    object bt_itens: TBitBtn
      Left = 245
      Top = 8
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
      Visible = False
      OnClick = bt_itensClick
    end
  end
  inherited Panel1: TPanel
    Top = 428
    Width = 946
    Height = 65
    BorderStyle = bsSingle
    Visible = False
    ExplicitTop = 428
    ExplicitWidth = 946
    ExplicitHeight = 65
    inherited DBNavigator1: TDBNavigator
      Left = 854
      Top = 34
      Width = 80
      Height = 45
      Hints.Strings = ()
      ExplicitLeft = 854
      ExplicitTop = 34
      ExplicitWidth = 80
      ExplicitHeight = 45
    end
    inherited bt_confirmar: TBitBtn
      Left = 242
      Top = 10
      Caption = '&Finalizar'
      Enabled = False
      OnClick = bt_confirmarClick
      ExplicitLeft = 242
      ExplicitTop = 10
    end
    inherited bt_item: TBitBtn
      Left = 10
      Top = 10
      Caption = '&Inserir Item'
      OnClick = bt_itemClick
      ExplicitLeft = 10
      ExplicitTop = 10
    end
    inherited bt_del: TBitBtn
      Left = 126
      Top = 10
      Caption = '&Remover'
      OnClick = bt_delClick
      ExplicitLeft = 126
      ExplicitTop = 10
    end
    inherited bt_imprimir: TBitBtn
      Left = 358
      Top = 10
      ExplicitLeft = 358
      ExplicitTop = 10
    end
  end
  inherited Panel2: TPanel
    Left = 403
    Top = 156
    ExplicitLeft = 403
    ExplicitTop = 156
  end
  inherited Panel3: TPanel
    Top = 326
    Width = 946
    Height = 102
    Align = alBottom
    BorderStyle = bsSingle
    ExplicitTop = 326
    ExplicitWidth = 946
    ExplicitHeight = 102
    object Label1: TLabel
      Left = 12
      Top = 43
      Width = 44
      Height = 13
      Caption = 'C'#211'DIGO'
      FocusControl = db_codcompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 741
      Top = 43
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
      Left = 451
      Top = 43
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
      Left = 142
      Top = 43
      Width = 31
      Height = 13
      Caption = 'DATA'
      FocusControl = db_cadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 282
      Top = 43
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
      Left = 571
      Top = 11
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
      Visible = False
    end
    object Label12: TLabel
      Left = 12
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
    object Label20: TLabel
      Left = 612
      Top = 43
      Width = 75
      Height = 13
      Caption = 'QNT PARCELA'
      FocusControl = db_condpgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object db_codcompra: TDBEdit
      Left = 12
      Top = 62
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
      TabOrder = 8
    end
    object db_formapgto: TDBEdit
      Left = 797
      Top = 43
      Width = 0
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 9
    end
    object db_cadastro: TDBEdit
      Left = 142
      Top = 62
      Width = 120
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      TabOrder = 1
    end
    object db_usuario: TDBEdit
      Left = 282
      Top = 62
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
      TabOrder = 7
    end
    object cb_fornecedor: TDBLookupComboBox
      Left = 741
      Top = 62
      Width = 133
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      TabOrder = 5
      OnClick = cb_fornecedorClick
    end
    object cb_idformapgto: TDBLookupComboBox
      Left = 451
      Top = 62
      Width = 136
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      TabOrder = 3
      OnClick = cb_idformapgtoClick
    end
    object db_subtotal: TDBEdit
      Left = 628
      Top = 4
      Width = 110
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 6
      Visible = False
    end
    object db_condpgto: TDBEdit
      Left = 612
      Top = 62
      Width = 91
      Height = 21
      DataField = 'COND_PGTO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 4
    end
  end
  object Panel4: TPanel [5]
    Left = 0
    Top = 221
    Width = 946
    Height = 105
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
    TabOrder = 4
    Visible = False
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
      OnChange = db_vl_itemChange
    end
  end
  object Panel5: TPanel [6]
    Left = 0
    Top = 0
    Width = 946
    Height = 73
    Align = alTop
    BorderStyle = bsSingle
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 5
    Visible = False
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
      Visible = False
    end
    object Label14: TLabel
      Left = 12
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
      Left = 151
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
      Left = 764
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
      Left = 321
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
      Left = 482
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
    object Label21: TLabel
      Left = 647
      Top = 16
      Width = 75
      Height = 13
      Caption = 'QNT PARCELA'
      FocusControl = db_aux7
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
      Visible = False
    end
    object db_aux2: TDBEdit
      Left = 12
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
      Left = 151
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
      Left = 764
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
      Left = 321
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
      Left = 482
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
    object db_aux7: TDBEdit
      Left = 647
      Top = 35
      Width = 91
      Height = 21
      DataField = 'COND_PGTO'
      DataSource = ds_padrao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel6: TPanel [7]
    Left = 0
    Top = 73
    Width = 946
    Height = 65
    Align = alTop
    BorderStyle = bsSingle
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object DBNavigator2: TDBNavigator
      Left = 680
      Top = 10
      Width = 248
      Height = 45
      DataSource = ds_padrao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object bt_save2: TBitBtn
      Left = 12
      Top = 10
      Width = 90
      Height = 45
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bt_save2Click
    end
    object BitBtn2: TBitBtn
      Left = 126
      Top = 10
      Width = 90
      Height = 45
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bt_excluirClick
    end
  end
  inherited PageControl1: TPageControl
    Top = 138
    Width = 946
    Height = 83
    ActivePage = tab_produto
    TabOrder = 7
    ExplicitTop = 138
    ExplicitWidth = 946
    ExplicitHeight = 83
    inherited tab_produto: TTabSheet
      ExplicitWidth = 938
      ExplicitHeight = 55
      inherited DBGrid1: TDBGrid
        Width = 938
        Height = 55
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Title.Caption = 'ITEM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Caption = 'C'#211'D. PRODUTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 164
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'QUANT.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_CUSTO'
            Title.Caption = 'VALOR CUSTO'
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
            FieldName = 'DESCONTO'
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
            FieldName = 'TOTAL_ITEM'
            Title.Caption = 'TOTAL ITEM'
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
            FieldName = 'ID_COMPRA'
            Title.Caption = 'C'#211'D. COMPRA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
    end
    inherited tab_contas: TTabSheet
      ExplicitWidth = 938
      ExplicitHeight = 55
      inherited DBGrid2: TDBGrid
        Width = 938
        Height = 55
        DataSource = ds_contaapagar
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Title.Caption = 'PARCELA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCIMENTO'
            Title.Caption = 'DATA VENC.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGAMENTO'
            Title.Caption = 'DATA PAG.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Title.Caption = 'VALOR PARCELA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_JUROS'
            Title.Caption = 'VALOR JUROS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_PAGAR'
            Title.Caption = 'TOTAL PAGAR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
            Title.Caption = 'C'#211'D. COMPRA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
    end
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      
        'select id_compra, id_fornecedor,id_forma_pgto, usuario, valor, c' +
        'adastro,cond_pgto from  compra')
    Left = 232
    Top = 88
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
    object Q_padraoCOND_PGTO: TIntegerField
      FieldName = 'COND_PGTO'
      Origin = 'COND_PGTO'
    end
  end
  inherited ds_padrao: TDataSource
    Left = 272
    Top = 88
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
    Left = 160
    Top = 225
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
    Left = 224
    Top = 225
  end
  object Q_forne: TFDQuery
    MasterSource = ds_padrao
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_fornecedor, nome from fornecedor order by  id_forneced' +
        'or')
    Left = 768
    Top = 329
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
    Left = 824
    Top = 329
  end
  object Q_formapgto: TFDQuery
    MasterSource = ds_padrao
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_forma_pgto, descricao from forma_pgto order by id_form' +
        'a_pgto')
    Left = 440
    Top = 329
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
    Left = 488
    Top = 329
  end
  object Q_produtos: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_produto, produto_descricao, estoque, estoque_min, vl_c' +
        'usto from produto order by id_produto')
    Left = 288
    Top = 224
  end
  object Q_contaapagar: TFDQuery
    MasterSource = ds_padrao
    MasterFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_sequencia, id_compra, valor_parcela,dt_vencimento, dt_' +
        'pagamento, atraso, juros, vl_juros, total_pagar, status from con' +
        'tas_pagar'
      'where id_compra =:id_compra')
    Left = 704
    Top = 233
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q_contaapagarID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_contaapagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_contaapagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_contaapagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_contaapagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_contaapagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_contaapagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_contaapagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_contaapagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object Q_contaapagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
  end
  object ds_contaapagar: TDataSource
    DataSet = Q_contaapagar
    Left = 816
    Top = 225
  end
end
