# 02_trader.rb

def substract(array_of_prices)
  number_of_days = array_of_prices.length
  
  array_of_differences = []  # <=== flatten puis trouver la plus grande
  # on défini le nombre de jours 
  
  for i in 0..(number_of_days - 2)
    for j in (i + 1)..(number_of_days - 1)
      difference = array_of_prices[j] - array_of_prices[i] 
      array_of_differences.push(difference)
    end
  end
  return array_of_differences
  end
  
  def find_bigger(array_of_differences)
    substract(array_of_differences).max
  end
  
  def day_trader(array_of_prices)
    max_profit = find_bigger(array_of_prices)
    number_of_days = array_of_prices.length
    for i in 0..(number_of_days - 2)
      for j in (i + 1)..(number_of_days - 1)
        if max_profit == (array_of_prices[j] - array_of_prices[i]) 
        return "Il vaut mieux acheter le #{i + 1}ème jour à #{array_of_prices[i]}$ et vendre le #{j + 1}ème jour à #{array_of_prices[j]}$ pour générer un profit de #{max_profit}$."
        end
      end
    end
  end