--Source:https://github.com/alan31204/Combinations/blob/master/combination.adb
with Ada.Text_IO;
with Ada.Command_Line;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Command_Line;
use Ada.Integer_text_IO;

--the main procedure for the code
procedure Combination is

    --Initialize the Integer and array we need
	K : Integer := Integer'Value(Argument(1));
	N : Integer := Integer'Value(Argument(2));
	subtype N_range is Positive range 1..N;
    type Int_Arr is array (N_range) of Natural;
	N_Arr: Int_Arr := (1 .. N => 0);
	Ret : Integer;
	--In cbn, N_Arr is the array being constantly modified and printed out.
	--It has at most K elements but is of length N, just for our convenience to add/delete elements.
	function cbn(N_Arr : in out Int_Arr;I : Integer;K : Integer;N : Integer) return Integer is
        begin
--if k is 0, then loop to find the combination
                if K = 0 then
                       for l in N_Arr'range loop
                                if N_Arr(l) /= 0 then
                                        Put(N_Arr(l));
                                        Put(" ");
                                end if;
                        end loop;
--add empty string
                        Put_Line("");
                else
--if k is not equal to 0 then loop through the combinations recursively
                        for j in I .. N loop
                                N_Arr(j) := j;
                                Ret := cbn(N_Arr, j+1, K-1, N);
                                N_Arr(j) := 0;
                        end loop;
                end if;
                return 0;
	end;
begin
--create the combination
	Ret := cbn(N_Arr, 1, K, N);
end Combination;

--This is the passed in argument of parsing string to integer, K is the first argument--
--N is the secomd argument--

--end Combination;
