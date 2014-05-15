
	$my_array = Array.new(10) { |i| 0 }
class Bloom
	array_size = 18;

	def search(num)
		a = hash1(num)
		b = hash2(num)
		c = hash3(num)

		if $my_array[a] == 1 && $my_array[b] == 1 && $my_array[c] == 1
			return "maybe in it"			
		end
		return "definitely doesn't"
	end

	def add_to_set(num)
		a = hash1(num)
		b = hash2(num)
		c = hash3(num)

		$my_array[a]=1
		$my_array[b]=1
		$my_array[c]=1
	end

	def is_prime n
  		for d in 2..(n - 1)
   			if (n % d) == 0
    			return false
   			end
  		end
  		true
 	end

	def hash1(num)
		return 0 if is_prime(num)
		return 1
		
	end


	def hash2(num)
		if num ** 3 > 200
			if num%2 == 0
				return 1
			else
				return 9
			end
		else
			return 0
			if num%2 == 0
				return 3
			else
				return 9
			end
		end
	end
	
	def hash3(num)
		if num > 99
			if num%10 == 0
				return 6
			else
				return 7
			end
		elsif num < 999
				return 3
		else
			return 9
		end
	end

	def print_array
		return $my_array
		
	end
end

 b =  Bloom.new;
b.add_to_set(500);
b.add_to_set(10);
b.add_to_set(950);
b.add_to_set(100000);
b.add_to_set(75);
b.add_to_set(567);
puts b.print_array
puts b.search(10)
puts b.search(-11)
puts b.search(9)
puts b.search(7)
puts b.search(1)
puts b.search(-100000)

