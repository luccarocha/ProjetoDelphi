unit U_formaspgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Formpadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_formapgto = class(Tfrm_padrao)
    Q_padraoID_FORMA_PGTO: TFDAutoIncField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_descricao: TDBEdit;
    Label3: TLabel;
    db_cadastro: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_formapgto: Tfrm_formapgto;

implementation

{$R *.dfm}

procedure Tfrm_formapgto.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateTostr(now);
  db_descricao.SetFocus;

end;

end.
