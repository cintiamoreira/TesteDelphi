object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 349
  Width = 586
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    SQLHourGlass = True
    HostName = '.\SQLEXPRESS'
    Port = 0
    Database = 'TesteDelphi'
    User = ''
    Password = ''
    Protocol = 'mssql'
    Left = 472
    Top = 64
  end
end
