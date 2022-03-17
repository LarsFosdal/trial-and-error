program Configuration;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Config.Classes in 'Config.Classes.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
