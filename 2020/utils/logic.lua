local logic = {}

function logic.xor(a,b)
    return not( not( a and not( a and b ) ) and not( b and not( a and b ) ) )
end

return logic