unit U_formpesquisapadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF;

type
  Tfrm_pesquisapadrao = class(TForm)
    Panel1: TPanel;
    cb_chave_pesquisa: TComboBox;
    lb_oppesq: TLabel;
    ed_nome: TEdit;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    lb_desc: TLabel;
    lb_inicio: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
    bt_buscar: TBitBtn;
    bt_transferir: TBitBtn;
    BitBtn2: TBitBtn;
    ds_rel_pesq_padrao: TfrxDBDataset;
    rel_pesq_padrao: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo:Integer;
  end;

var
  frm_pesquisapadrao: Tfrm_pesquisapadrao;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_pesquisapadrao.cb_chave_pesquisaChange(Sender: TObject);
begin
   case cb_chave_pesquisa.ItemIndex of

      0:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        ed_nome.SetFocus;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_desc.Visible := true;
        lb_desc.Caption := 'Digite o C?digo';
      end;

      1:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := true;
        ed_nome.SetFocus;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_desc.Visible := true;
        lb_desc.Caption := 'Digite o Nome';
      end;

      2:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := false;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite a Data de Cadastro';
        mk_inicio.SetFocus;
        lb_desc.Visible := false;
      end;

      3:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := true;
        mk_fim.Visible := true;
        lb_inicio.Visible := true;
        lb_inicio.Caption := 'Digite o Per?odo';
        lb_desc.Visible := false;
        mk_inicio.SetFocus;
      end;

       4:begin
        lb_oppesq.Visible := true;
        lb_oppesq.Caption := 'Op??es de Pesquisa';
        ed_nome.Visible := false;
        mk_inicio.Visible := false;
        mk_fim.Visible := false;
        lb_inicio.Visible := false;
        lb_inicio.Caption := 'Digite o Per?odo';
        lb_desc.Visible := false;
        bt_buscar.SetFocus;
      end;



    end
end;

procedure Tfrm_pesquisapadrao.DBGrid1CellClick(Column: TColumn);
begin
//
end;

procedure Tfrm_pesquisapadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Faz o enter ter a mesma fun??o do tab
  if key = #13 then

    begin
       Key := #0;
       Perform(wm_nextDlgCtl,0,0);
    end
end;

end.
