ALGORITHM overlapping elements
var
arr1= array_of integer[50];
arr2= array_of integer[50];
i,j =integer;
sum=integer;
x = boolean;

Begin
sum = 0;
for i from 0 to arr1.lenght-1 DO
     x := false;
     for j from 0 to arr2.length-1 DO
         if (arr1[i] = arr2[j])
          then x: = true;
          break;
end 
end_for
 if then
 sum:= sum + arr1[i];
 end_if
 end_for

 for i from 0 to arr2.lenght-1 DO
 x := false
   for j from 0 to arr1.lenght-1 DO
      if(arr2[i]=arr1[j]);
      x := true;
        break;
        end
        end_for
   if then
   sum := sum + arr2[i];
   end_if
   end_for
   write(sum);
   end
   
   ALGORITHM Second-method
VAR
    arr1,arr2 : ARRAY_OF INTEGER[30];
    set_keys : ARRAY_OF INTEGER[50];
    dict := HASH_TABLE<INTEGER,INTEGER>;
    i, count : INTEGER;
    sum : INTEGER := 0;
BEGIN

    FOR i FROM 0 TO arr1.length -1 STEP 1  DO
        IF (dict.lookup(set1[i]) = TRUE) THEN
            count := dict.get(arr1[i]);
            dict.insert(arr1[i],count+1);
        ELSE
            dict.insert(arr1[i],1);
        END_IF
    END_FOR

    FOR i FROM 0 TO arr2.length -1 STEP 1  DO
        IF (dict.lookup(arr2[i]) = TRUE) THEN
            count := dict.get(arr2[i]);
            dict.insert(arr2[i],count+1);
        ELSE
            dict.insert(arr2[i],1);
        END_IF
    END_FOR

    set_keys := dict.getKeys();
    FOR i FROM 0 TO set_keys.length -1 STEP 1  DO
        IF (dict.get(set_keys[i]) = 1) THEN
            sum := sum +set_keys[i];
        END_IF
    END_FOR

END

