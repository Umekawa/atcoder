nums=gets.strip.split(" ").map do |i|
  i.to_i
end

n = nums[0] #冊数
m=nums[1] #アルゴリズムの数
x=nums[2] #目標スコア
a=[]
n.times{
  c=gets.strip.split(" ").map do |i|
    i.to_i
  end
  a.push(c)
}
sum = 999999999999999999
i = 0
patern = 2**n
while i < patern
  arr = Array.new(m+1,0)
  n.times{|j|
    if i % 2**j == i%2**(j+1)
      p =0
      while p< m+1
        arr[p]+=a[j][p]
        p+=1
      end
    end
  }
  flag=true
  m.times{|j|
    flag=false if arr[j+1]<x
  }
  sum=arr[0]if flag && arr[0] <sum 
  i+=1
end


puts -1 if sum == 999999999999999999
puts sum unless sum == 999999999999999999
