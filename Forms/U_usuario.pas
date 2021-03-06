unit U_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Formpadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  Tfrm_usuario = class(Tfrm_padrao)
    Q_padraoID_USUARIO: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoSENHA: TStringField;
    Q_padraoTIPO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    db_iduser: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    db_cadastro: TDBEdit;
    Label5: TLabel;
    db_senha: TDBEdit;
    db_tipo: TDBComboBox;
    ds_pesq_padrao: TDataSource;
    q_pesq_padrao: TFDQuery;
    q_pesq_padraoID_USUARIO: TIntegerField;
    q_pesq_padraoNOME: TStringField;
    q_pesq_padraoTIPO: TStringField;
    q_pesq_padraoCADASTRO: TDateField;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_usuario: Tfrm_usuario;

implementation

{$R *.dfm}

uses U_pesq_user, U_Principal;

procedure Tfrm_usuario.bt_gravarClick(Sender: TObject);
begin
  //if db_senha.GetTextLen <> db_confirma.GetTextLen then
  //begin
    //Messagedlg('Senhas n?o conhecidem, digite novamente!', mtInformation, [mbOk], 0);
  //end
  //else
  inherited;

end;

procedure Tfrm_usuario.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text := DateTostr(now);
  db_nome.SetFocus;

end;

procedure Tfrm_usuario.bt_pesquisarClick(Sender: TObject);
begin
  begin
    frm_pesq_user := Tfrm_pesq_user.Create(self);
    Frm_pesq_user.ShowModal;

    try
      if Frm_pesq_user.codigo > 0 then
        begin
          Q_padrao.Open();
          Q_padrao.Locate('ID_USUARIO',Frm_pesq_user.codigo,[]);
        end;
    finally
      frm_pesq_user.Free;
      frm_pesq_user := nil;
    end;

end;

end;
procedure Tfrm_usuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_principal.Panel2.Visible := false;

end;

end.
