require 'pry'

# the end result should be  { a: 3, b: 2, c: 1 }
def merge1
  x = { a: 1, b: 2 }
  y = { a: 2, c: 1 }
  x.inject( y ) { |hash, (k, v)|
    hash[k] ||= 0
    hash[k] += v
    print hash
  }
end
# {:a=>3, :c=>1}
# asdf.rb:7:in `block in merge1': undefined method `[]' for nil:NilClass (NoMethodError)
	 
def merge2
  x = { a: 1, b: 2 }
  y = { a: 2, c: 1 }

  z = Hash.new # same as {}
  x.inject(y) do |hash, (k, v)|
    if z[k].nil?
      z[k] = v
    else
      z[k] += v
    end
  end
  binding.pry
end
# the end result should be  { a: 3, b: 2, c: 1 }


# merge1
merge2