inherited frm_visualizausuario: Tfrm_visualizausuario
  Caption = '  Visualiza Usu'#225'rios'
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
  end
  inherited q_pesq_padrao: TFDQuery
    SQL.Strings = (
      
        'select id_usuario, nome, tipo, cadastro from usuario order by id' +
        '_usuario')
  end
end
