s = gets.strip
len=s.length
i=3
a={}
while i<len do
  j=0
  while j+i<len do
    ss=s[j..j+i]
    unless a[ss].eql?(0)
      if ((ss.to_i)%2019).eql?(0)
        a[ss] =  a[ss].nil? ? 1 : a[ss]+1
        s[j..(j+i+1)]=0 if  j+i+1<len
        s[j..(j+i+2)]=0 if  j+i+2<len
        s[j..(j+i+3)]=0 if  j+i+3<len
        j+=3
      else
        a[ss]=0
      end
    end
    j+=1
  end
  i+=1
end
sum =0
a.each do |k,v|
  sum+=v
end
puts sum
