line1 = gets.strip
num=line1.to_i
num_sum=num*(num+1)/2
num5=(num/5).to_i
num3=(num/3).to_i
num15=(num/15).to_i
num_sum3=num3*(num3+1)/2
num_sum5=num5*(num5+1)/2
num_sum15=num15*(num15+1)/2
puts num_sum-num_sum3*3-num_sum5*5+num_sum15*15