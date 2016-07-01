-module(e1_factorial).
-export([final/2,get_xpres_spec_Msg_Num/2]).

fac(_,0) -> 1;
fac(M,N) when N>0 
  -> M * fac(M,N-1).
  
final(M,N) ->
  fac(M,N) -1.
  
  
get_xpres_spec_Msg_Num(Key,Stat_List) ->
	case Num = proplists:get_value(Key, Stat_List) of
		undefined ->
			0;
    _ ->
      Num

	end.
	
	
create_ets() ->

Tab = ets:new(table,[ordered_set]),
Tab.

 