object DM: TDM
  OldCreateOrder = False
  Height = 310
  Width = 479
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=D:\lucca\Documents\Sistemas de Estoque\EXE\Banco\ESTOQU' +
        'E.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evUnidirectional]
    FormatOptions.AssignedValues = [fvStrsTrim, fvSortOptions]
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 24
    Top = 80
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 24
    Top = 144
  end
end
