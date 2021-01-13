n = gets.strip.to_i
i = 2
z=0
sqrt_n=Math.sqrt(n)
while n!=1 && i <=sqrt_n do
  if n%i == 0
    s= 1
    while(n % (i**s) ==0) do
      n = n/(i**s)
      z+=1
      s+=1
    end
    while(n%i==0) do
      n=n/i
    end
  end
  i+=1
end
puts z