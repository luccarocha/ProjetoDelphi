object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'SCE - Sistema de Controle de Estoque '
  ClientHeight = 774
  ClientWidth = 1525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 755
    Width = 1525
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 758
    Height = 33
    BorderStyle = bsSingle
    Caption = 'Itens Comprados - M'#234's Atual'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 8
    Top = 40
    Width = 758
    Height = 338
    BorderStyle = bsSingle
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 752
      Height = 299
      Align = alClient
      DataSource = ds_padraoitem
      FixedColor = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Caption = 'C'#211'D. PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO_DESCRICAO'
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Title.Caption = 'QUANTIDADE'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_CUSTO'
          Title.Caption = 'VALOR CUSTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_ITEM'
          Title.Caption = 'TOTAL FINAL'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'CADASTRO'
          Title.Caption = 'DATA COMPRA'
          Width = 97
          Visible = True
        end>
    end
    object Panel9: TPanel
      Left = 1
      Top = 300
      Width = 752
      Height = 33
      Align = alBottom
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 4
        Width = 186
        Height = 16
        Caption = 'Quantidade Itens Comprado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 208
        Top = 4
        Width = 65
        Height = 17
        DataField = 'QNTDTOTAL'
        DataSource = ds_padraoitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 625
        Top = 4
        Width = 112
        Height = 17
        DataField = 'VALORTOTAL'
        DataSource = ds_padraoitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 539
        Top = 4
        Width = 80
        Height = 16
        Caption = 'Valor Gasto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    Left = 772
    Top = 8
    Width = 758
    Height = 33
    BorderStyle = bsSingle
    Caption = 'Itens Vendidos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Panel4: TPanel
    Left = 772
    Top = 40
    Width = 758
    Height = 338
    BorderStyle = bsSingle
    Caption = 'Panel2'
    TabOrder = 4
    object Panel12: TPanel
      Left = 1
      Top = 300
      Width = 752
      Height = 33
      Align = alBottom
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 4
        Width = 196
        Height = 16
        Caption = 'Quantidade Itens Vendidosdo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 218
        Top = 4
        Width = 65
        Height = 17
        DataField = 'QNTDTOTAL'
        DataSource = ds_padraoitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 645
        Top = 4
        Width = 65
        Height = 17
        DataField = 'VALORTOTAL'
        DataSource = ds_padraoitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 537
        Top = 4
        Width = 102
        Height = 16
        Caption = 'Valor Recebido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel5: TPanel
    Left = 8
    Top = 423
    Width = 758
    Height = 326
    BorderStyle = bsSingle
    TabOrder = 5
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 752
      Height = 287
      Align = alClient
      DataSource = ds_estoque
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Caption = 'C'#211'D. PRODUTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO_DESCRICAO'
          Title.Caption = 'DESCRI'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 104
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
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_VENDA'
          Title.Caption = 'VALOR VENDA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'CADASTRO'
          Title.Caption = 'DATA DE CADASTRO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 136
          Visible = True
        end>
    end
    object Panel10: TPanel
      Left = 1
      Top = 288
      Width = 752
      Height = 33
      Align = alBottom
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 4
        Width = 171
        Height = 16
        Caption = 'Quantidade Total Estoque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 193
        Top = 4
        Width = 65
        Height = 17
        DataField = 'QTDTOTAL'
        DataSource = ds_estoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel6: TPanel
    Left = 8
    Top = 384
    Width = 758
    Height = 33
    BorderStyle = bsSingle
    Caption = 'Itens em Estoque'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
  end
  object Panel7: TPanel
    Left = 772
    Top = 384
    Width = 758
    Height = 33
    BorderStyle = bsSingle
    Caption = 'Valores a Receber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Panel8: TPanel
    Left = 772
    Top = 423
    Width = 758
    Height = 326
    BorderStyle = bsSingle
    Caption = 'Valores a Receber'
    TabOrder = 8
    object Panel11: TPanel
      Left = 1
      Top = 288
      Width = 752
      Height = 33
      Align = alBottom
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 16
        Top = 4
        Width = 138
        Height = 16
        Caption = 'Quantidade Clientes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 155
        Top = 4
        Width = 65
        Height = 17
        DataField = 'QNTDTOTAL'
        DataSource = ds_padraoitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 645
        Top = 4
        Width = 65
        Height = 17
        DataField = 'VALORTOTAL'
        DataSource = ds_padraoitem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 494
        Top = 4
        Width = 145
        Height = 16
        Caption = 'Valor Total '#224' Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 1432
    Top = 48
  end
  object MainMenu1: TMainMenu
    Left = 1344
    Top = 48
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Compras1: TMenuItem
        Caption = '&Clientes'
        OnClick = Compras1Click
      end
      object Fornecedores1: TMenuItem
        Caption = '&Fornecedores'
        OnClick = Fornecedores1Click
      end
      object Fornecedores2: TMenuItem
        Caption = '&Pagamentos'
        OnClick = Fornecedores2Click
      end
      object Parceiros1: TMenuItem
        Caption = 'Pa&rceiros'
      end
      object Parceiros2: TMenuItem
        Caption = 'Produ&tos'
        OnClick = Parceiros2Click
      end
      object Usurios1: TMenuItem
        Caption = '&Usu'#225'rios'
        OnClick = Usurios1Click
      end
    end
    object Movimentos1: TMenuItem
      Caption = '&Movimentos'
      object Compras3: TMenuItem
        Caption = 'C&ompras'
        OnClick = Compras3Click
      end
      object Vendas2: TMenuItem
        Caption = '&Vendas'
      end
    end
    object Rltorios1: TMenuItem
      Caption = '&Relatorios'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Compras2: TMenuItem
        Caption = 'Compras'
      end
      object Compras4: TMenuItem
        Caption = 'Fornecedores'
      end
      object Parcerias1: TMenuItem
        Caption = 'Pagamentos'
      end
      object Parcerias2: TMenuItem
        Caption = 'Parcerias'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Usurios2: TMenuItem
        Caption = 'Usu'#225'rios'
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Sobre1: TMenuItem
      Caption = '&Sobre'
    end
    object Sair1: TMenuItem
      Caption = 'Sai&r'
      object rocarUsurio1: TMenuItem
        Caption = 'Trocar Usu'#225'rio'
      end
      object Fechar1: TMenuItem
        Caption = '&Fechar'
      end
    end
  end
  object Q_padraoitem: TFDQuery
    IndexFieldNames = 
      'CADASTRO;VL_CUSTO;TOTAL_ITEM;QTDE;PRODUTO_DESCRICAO;ID_PRODUTO;I' +
      'D_COMPRA;DESCONTO'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      
        'SELECT A.ID_COMPRA, C.CADASTRO, A.ID_PRODUTO, B.PRODUTO_DESCRICA' +
        'O, A.QTDE, A.VL_CUSTO, A.DESCONTO, A.TOTAL_ITEM FROM ITEM_COMPRA' +
        ' A'
      ''
      'INNER JOIN PRODUTO B ON A.ID_PRODUTO = B.ID_PRODUTO'
      ''
      'INNER JOIN COMPRA C ON A.ID_COMPRA = C.ID_COMPRA'
      ''
      
        'where extract(month from c.cadastro) = extract(month from cast (' +
        'current_date as date))'
      
        'and extract(year from c.cadastro) = extract(year from cast (curr' +
        'ent_date as date))'
      ''
      'ORDER BY A.ID_PRODUTO ASC'
      ''
      ''
      '')
    Left = 688
    Top = 89
    object Q_padraoitemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoitemCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_padraoitemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_padraoitemPRODUTO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
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
    object Q_padraoitemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
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
    object Q_padraoitemVALORTOTAL: TAggregateField
      FieldName = 'VALORTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
    object Q_padraoitemQNTDTOTAL: TAggregateField
      FieldName = 'QNTDTOTAL'
      Active = True
      DisplayName = ''
      Expression = 'SUM(QTDE)'
    end
  end
  object ds_padraoitem: TDataSource
    DataSet = Q_padraoitem
    Left = 688
    Top = 161
  end
  object Q_estoque: TFDQuery
    AutoCalcFields = False
    AggregatesActive = True
    Connection = DM.Conexao
    SQL.Strings = (
      
        'SELECT ID_PRODUTO, PRODUTO_DESCRICAO, ESTOQUE, VL_CUSTO, VL_VEND' +
        'A, CADASTRO FROM PRODUTO '
      ' WHERE ESTOQUE > 0 ORDER BY ESTOQUE DESC')
    Left = 624
    Top = 457
    object Q_estoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_estoquePRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_estoqueVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_estoqueVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_estoqueESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
    end
    object Q_estoqueCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_estoqueQTDTOTAL: TAggregateField
      FieldName = 'QTDTOTAL'
      Active = True
      DisplayName = ''
      Expression = 'SUM(ESTOQUE)'
    end
  end
  object ds_estoque: TDataSource
    DataSet = Q_estoque
    Left = 704
    Top = 465
  end
end
