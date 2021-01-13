N,M,K = gets.strip.split(' ').map(&:to_i)
A = gets.strip.split(' ').map(&:to_i)
B = gets.strip.split(' ').map(&:to_i)

stack = []

stack.push([1,0,A[0]]) if A[0] <= K
stack.push([0,1,B[0]]) if B[0] <= K
if stack.size == 0
  puts 0
else
  max = 1
  while stack.size != 0
    
    #puts "#{stack[0].a} #{stack[0].b} #{stack[0].t}"
    if stack[0][0]!=N && stack[0][2]+A[stack[0][0]] <= K
      stack.push([stack[0][0]+1, stack[0][1], stack[0][2]+A[stack[0][0]]])
      max = [max, stack[0][0]+1+stack[0][1]].max
    end
    if  stack[0][0] != stack[0][1]+1 && stack[0][1]!=M && stack[0][2]+B[stack[0][1]] <= K
      stack.push([stack[0][0], stack[0][1]+1, stack[0][2]+B[stack[0][1]]])
      #puts "#{stack[0].a} #{stack[0].b+1} #{stack[0].t+B[stack[0].b+1]}"
      max = [max, stack[0][0]+stack[0][1]+1].max
    end
    stack.delete_at(0)
  end
  puts max
end