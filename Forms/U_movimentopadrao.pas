unit U_movimentopadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Formpadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  Tfrm_padraomovimento = class(Tfrm_padrao)
    SpeedButton1: TSpeedButton;
    bt_new: TBitBtn;
    bt_excluir: TBitBtn;
    bt_edit: TBitBtn;
    bt_save: TBitBtn;
    bt_confirmar: TBitBtn;
    bt_item: TBitBtn;
    bt_del: TBitBtn;
    bt_imprimir: TBitBtn;
    Panel3: TPanel;
    Q_padraoitem: TFDQuery;
    ds_padraoitem: TDataSource;
    PageControl1: TPageControl;
    tab_produto: TTabSheet;
    tab_contas: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure bt_newClick(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure botoes();
    procedure bt_saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_padraomovimento: Tfrm_padraomovimento;

implementation

{$R *.dfm}

procedure Tfrm_padraomovimento.bt_newClick(Sender: TObject);
begin
  // Cria um novo registro
  q_padrao.open;
  botoes;
  q_padrao.Append;
end;

procedure Tfrm_padraomovimento.botoes;
begin
  //Habilita e desabilita  os bot?es
  bt_new.Enabled :=  not bt_new.Enabled;
  bt_excluir.Enabled := not bt_excluir.Enabled;
  bt_edit.Enabled := not bt_edit.Enabled;
  bt_save.Enabled := not bt_save.Enabled;
  bt_atualizar.Enabled := not bt_atualizar.Enabled;
end;

procedure Tfrm_padraomovimento.bt_excluirClick(Sender: TObject);
begin
  //Exclui o registro
  botoes;
  if messagedlg('Deseja excluir esse registro?', mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      Q_padrao.delete;
      Messagedlg('Registro deletado com sucesso!', mtInformation, [mbOk], 0);
      botoes;
    end
    else
    botoes;
    abort;

end;

procedure Tfrm_padraomovimento.bt_saveClick(Sender: TObject);
begin
  //Salva o registro
  botoes;
  Q_padrao.Post;

end;

end.
