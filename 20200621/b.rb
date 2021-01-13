# frozen_string_literal: true

N = gets.strip.split(' ').map(&:to_i)[1]
p = gets.strip.split(' ').map(&:to_i).sort
puts p[0..N - 1].sum
