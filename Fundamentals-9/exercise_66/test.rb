def make_pattern(n)
	if n <= 0 
		 return [n]
	else 
		return [n] + make_pattern(n-5) + [n]
	end
end 

#p make_pattern(20)

def is_palindrome?(n)
	n = n.to_s
	if n.length == 1 or n.length == 0
		return true
	else
		return (n[0] == n[-1]) && is_palindrome?(n[1..-2])
	end
end

p is_palindrome?("abc")