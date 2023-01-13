# 05_timer.rb

def time_string(number)
  hours = number / 3600
  minutes = number / 60 - hours * 60
  seconds = number - minutes * 60 - hours * 3600
  return "#{'%02d' % hours}:#{'%02d' % minutes}:#{'%02d' % seconds}"
end 