namespace main

without warning

include std\map.e


public function firstUniqChar_1(sequence s)
    integer len = length(s)
    atom sc, cc
    
    for i = 1 to len label "sfor" do
        
        for j = 1 to len do
            sc = s[i]
            cc = s[j]
            
            if i != j and s[i] = s[j] then
                continue "sfor"
            end if
        end for
        
        return i
    end for
    
    return -1
end function

public function firstUniqChar_2(sequence s)
    integer len = length(s)
    integer value = 0
    map obj = map:new(26)
    
    for i = 1 to len do
        value = map:get(obj, s[i], 0)
        value += 1
        map:put(obj, s[i], value)
    end for
    
    for i = 1 to len do
        value = map:get(obj, s[i], 0)
        if value = 1 then
            return i
        end if
    end for
    
    return -1
end function

public function firstUniqChar_3(sequence s)
    integer len = length(s)
    integer value = 0
    sequence obj = repeat('\0', 26) -- Pre aloca��o de 26 caracteres nulo
    
    -- +1 porque "array" em euphoria come�a em 1
    -- O resultado de s[i] - 'a' � igual a 0
    for i = 1 to len do
        obj[ s[i] - 'a' + 1 ] += 1
    end for
    
    for i = 1 to len do
        if obj[ s[i] - 'a' + 1 ] = 1 then
            return i
        end if
    end for
    
    return -1
end function
