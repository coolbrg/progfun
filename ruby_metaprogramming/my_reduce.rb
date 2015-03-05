class Array
  def myreduce(*args)
    sum = args.size > 0 ? args.first : 0
    each do |num|
      sum = yield(sum, num)
    end
    sum
  end
end

p [1, 2, 3, 4].myreduce { |sum, n| sum + n }
p [1, 2, 3, 4].myreduce(10) { |sum, n| sum + n }
# p [1, 2, 3, 4].myreduce(:+)

# [1,2,3,4].myreduce {|sum, n| sum + n } # 10
# [1,2,3,4].myreduce(10) {|sum, n| sum + n } # 20
