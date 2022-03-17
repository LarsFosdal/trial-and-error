unit Config.Classes;

interface
uses
  System.Classes, System.RTTI, System.SysUtils, System.Generics.Defaults, System.Generics.Collections;


type
  TCfgValue = record
  public
    a : AnsiString;
    Name: String;
    Value: TValue;
    class operator Implicit(v: TCfgValue): string;
    class operator Implicit(v: TCfgValue): integer;
    class operator Implicit(v: TCfgValue): double;
    class operator Implicit(v: TCfgValue): TDateTime;
    class operator Implicit(v: TCfgValue): boolean;

  end;

implementation

{ TCfgValue }

class operator TCfgValue.Implicit(v: TCfgValue): string;
begin
  Result := v.Value.AsString;
end;

class operator TCfgValue.Implicit(v: TCfgValue): integer;
begin
  Result := v.Value.AsInteger;
end;

class operator TCfgValue.Implicit(v: TCfgValue): double;
begin
  Result := v.Value.AsType<double>;
end;

class operator TCfgValue.Implicit(v: TCfgValue): TDateTime;
begin
  Result := v.Value.AsType<TDateTime>;
end;

class operator TCfgValue.Implicit(v: TCfgValue): boolean;
begin
  Result := v.Value.AsBoolean;
end;


end.
