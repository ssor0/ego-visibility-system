program FP_Union_test;

type
  TUnionTest = record
    case Boolean of
      True: (Var_1 : Int32);
      False: (Var_2 : single);
  end;

var
  ut : TUnionTest;

begin
  writeln('size of TUnionTest: ', sizeof(TUnionTest));
  //ut.kind := True;
  ut.Var_2 := 500.123;
  writeln ('Var_1 int: ', ut.var_1, ' var_2 float: ', ut.var_2);
end.
