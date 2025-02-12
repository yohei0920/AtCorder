n = gets.to_i
rate = [100,200,300,400]

res = if n < rate[0]
         rate[0] - n
       elsif n < rate[1]
        rate[1] - n
      elsif n < rate[2]
        rate[2] - n
      else
        rate[3] - n
      end
      
puts res