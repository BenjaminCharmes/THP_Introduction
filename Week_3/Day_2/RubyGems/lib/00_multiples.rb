# 00_mathsnobel.rb

def is_multiple_of_3_or_5?(current_number)
    if (current_number % 3 == 0) || (current_number % 5 == 0)
      return true
    else
      return false
    end
end

def sum_of_3_and_5_multiples(final_number)

  final_sum = 0

  if final_number.class == String || final_number < 0 || final_number.class == Float
    return "Je ne prends que les entiers naturels !"
  else
    for current_number in 0...final_number
      if is_multiple_of_3_or_5?(current_number)
        final_sum += current_number
      end
    end
    return final_sum
  end 

end 