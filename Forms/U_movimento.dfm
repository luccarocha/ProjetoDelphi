object frm_movimento: Tfrm_movimento
  Left = 0
  Top = 0
  Caption = '   Movimento Mensal'
  ClientHeight = 778
  ClientWidth = 1535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 759
    Width = 1535
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
  object principal: TPanel
    Left = 0
    Top = 8
    Width = 1525
    Height = 758
    TabOrder = 1
    object painelitenscomprados: TPanel
      Left = 9
      Top = -3
      Width = 770
      Height = 416
      BorderStyle = bsSingle
      Caption = 'painelitenscomprados'
      FullRepaint = False
      TabOrder = 0
      object Panel9: TPanel
        Left = 1
        Top = 378
        Width = 764
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
        object Label1: TLabel
          Left = 16
          Top = 4
          Width = 193
          Height = 16
          Caption = 'Quantidade Itens Comprados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 215
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
      object DBGrid1: TDBGrid
        Left = 1
        Top = 42
        Width = 764
        Height = 336
        Align = alClient
        DataSource = ds_padraoitem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'QUANT.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
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
            Width = 90
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Title.Caption = 'VALOR FINAL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADASTRO'
            Title.Caption = 'DATA DA COMPRA '
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 764
        Height = 41
        Align = alTop
        Caption = 'Itens Comprados'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        ExplicitTop = -5
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 762
          Height = 41
          Align = alTop
          Caption = 'Itens Comprados'
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitTop = 0
        end
      end
    end
    object painelitensvendidos: TPanel
      Left = 782
      Top = -3
      Width = 770
      Height = 416
      BorderStyle = bsSingle
      Caption = 'Panel2'
      TabOrder = 1
      object Panel12: TPanel
        Left = 1
        Top = 378
        Width = 764
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
          Width = 180
          Height = 16
          Caption = 'Quantidade Itens Vendidos:'
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
          DataField = 'QNTTOTAL'
          DataSource = ds_itensvendidos
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
          Width = 92
          Height = 17
          DataField = 'VLRECEBIDO'
          DataSource = ds_itensvendidos
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
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 764
        Height = 41
        Align = alTop
        Caption = 'Itens Vendidos'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 2
        ExplicitTop = 9
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 42
        Width = 764
        Height = 336
        Align = alClient
        DataSource = ds_itensvendidos
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            Width = 81
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
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO_DESCRICAO'
            Title.Caption = 'PRODUTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'QUANT.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_CUSTO'
            Title.Caption = 'VALOR VENDA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
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
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Title.Caption = 'VALOR FINAL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'FORMA DE PGTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COND_PGTO'
            Title.Caption = 'PARCELA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADASTRO'
            Title.Caption = 'DATA DA VENDA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 108
            Visible = True
          end>
      end
    end
    object painelestoque: TPanel
      Left = 9
      Top = 416
      Width = 770
      Height = 329
      BorderStyle = bsSingle
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 1
        Top = 42
        Width = 764
        Height = 249
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
        Top = 291
        Width = 764
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
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 764
        Height = 41
        Align = alTop
        Caption = 'Estoque'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        ExplicitLeft = 2
        ExplicitTop = 9
      end
    end
    object contasapagar: TPanel
      Left = 782
      Top = 416
      Width = 752
      Height = 329
      BorderStyle = bsSingle
      Caption = 'Valores a Receber'
      TabOrder = 3
      object Panel11: TPanel
        Left = 1
        Top = 291
        Width = 746
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
          Width = 131
          Height = 16
          Caption = 'Valor Total  Devido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 153
          Top = 3
          Width = 96
          Height = 17
          DataField = 'VALORDEVIDO'
          DataSource = ds_contaapagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 541
          Top = 3
          Width = 92
          Height = 17
          DataField = 'VLRECEBER'
          DataSource = ds_contasreceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 390
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
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 376
        Height = 290
        Caption = 'Panel5'
        TabOrder = 1
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 374
          Height = 41
          Align = alTop
          Caption = 'CONTAS '#192' PAGAR'
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 9
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 42
          Width = 374
          Height = 247
          Align = alClient
          DataSource = ds_contaapagar
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
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
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PARCELA'
              Title.Caption = 'VL. PARCELA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_PAGAR'
              Title.Caption = 'VALOR '#192' PAGAR'
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
              FieldName = 'DT_PAGAMENTO'
              Title.Caption = 'DATA PAG.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_JUROS'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object Panel6: TPanel
        Left = 375
        Top = 1
        Width = 376
        Height = 290
        Caption = 'Panel6'
        TabOrder = 2
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 374
          Height = 41
          Align = alTop
          Caption = 'CONTAS '#192' RECEBER'
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 9
        end
        object DBGrid5: TDBGrid
          Left = 1
          Top = 42
          Width = 374
          Height = 247
          Align = alClient
          DataSource = ds_contasreceber
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
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
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PARCELA'
              Title.Caption = 'VL PARCELA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_PAGAR'
              Title.Caption = 'VALOR RECEBER'
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
              FieldName = 'DT_PAGAMENTO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_JUROS'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
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
              Visible = True
            end>
        end
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
    Left = 680
    Top = 537
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
    Left = 600
    Top = 529
  end
  object Q_itensvendidos: TFDQuery
    IndexFieldNames = 
      'CADASTRO;VL_CUSTO;TOTAL_ITEM;QTDE;PRODUTO_DESCRICAO;ID_PRODUTO;D' +
      'ESCONTO'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      
        'SELECT A.ID_VENDA, C.CADASTRO,C.ID_CLIENTE, D.NOME, A.ID_PRODUTO' +
        ', B.PRODUTO_DESCRICAO, A.QTDE, A.VL_CUSTO, A.DESCONTO, '
      'E.DESCRICAO, C.COND_PGTO, A.TOTAL_ITEM '
      ''
      'FROM ITEM_VENDA A'
      ''
      'INNER JOIN PRODUTO B ON A.ID_PRODUTO = B.ID_PRODUTO'
      ''
      'INNER JOIN VENDA C ON A.ID_VENDA = C.ID_VENDA'
      ''
      'INNER JOIN CLIENTE D ON C.ID_CLIENTE = D.ID_CLIENTE'
      ''
      'INNER JOIN FORMA_PGTO E ON C.ID_FORMA_PGTO = E.ID_FORMA_PGTO'
      ''
      
        'where extract(month from c.cadastro) = extract(month from cast (' +
        'current_date as date))'
      
        'and extract(year from c.cadastro) = extract(year from cast (curr' +
        'ent_date as date))'
      ''
      ''
      ''
      ''
      '')
    Left = 1416
    Top = 113
    object Q_itensvendidosID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_itensvendidosNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_itensvendidosPRODUTO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_itensvendidosCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_itensvendidosQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_itensvendidosVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_itensvendidosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_itensvendidosTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_itensvendidosID_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_itensvendidosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_itensvendidosDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_itensvendidosCOND_PGTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COND_PGTO'
      Origin = 'COND_PGTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_itensvendidosVLRECEBIDO: TAggregateField
      FieldName = 'VLRECEBIDO'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
    object Q_itensvendidosQNTTOTAL: TAggregateField
      FieldName = 'QNTTOTAL'
      Active = True
      DisplayName = ''
      Expression = 'SUM(QTDE)'
    end
  end
  object ds_itensvendidos: TDataSource
    DataSet = Q_itensvendidos
    Left = 1392
    Top = 201
  end
  object Q_contaapagar: TFDQuery
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_sequencia, id_compra, valor_parcela,dt_vencimento, dt_' +
        'pagamento, atraso, juros, vl_juros, total_pagar, status from con' +
        'tas_pagar')
    Left = 1064
    Top = 537
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
    object Q_contaapagarVALORDEVIDO: TAggregateField
      FieldName = 'VALORDEVIDO'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_PAGAR)'
    end
  end
  object ds_contaapagar: TDataSource
    DataSet = Q_contaapagar
    Left = 1072
    Top = 593
  end
  object Q_contasreceber: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    AggregatesActive = True
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select id_sequencia, id_venda, valor_parcela,dt_vencimento, dt_p' +
        'agamento, atraso, juros, vl_juros, total_pagar, status from cont' +
        'as_receber'
      ''
      '')
    Left = 1288
    Top = 523
    object Q_contasreceberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_contasreceberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_contasreceberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_contasreceberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_contasreceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_contasreceberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_contasreceberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_contasreceberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_contasreceberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_contasreceberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object Q_contasreceberVLRECEBER: TAggregateField
      FieldName = 'VLRECEBER'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_PAGAR)'
    end
  end
  object ds_contasreceber: TDataSource
    DataSet = Q_contasreceber
    Left = 1448
    Top = 555
  end
end
