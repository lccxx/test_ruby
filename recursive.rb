def loop_f(n)
  collect_div_2 = []
  collect_div_3 = []
  collect_div_5 = []
  collect_div_7 = []

  div_r = n
  while true
    div_r /= 2
    if div_r == 0 || div_r == 1
      collect_div_2 << 1
      break
    end
    collect_div_2 << div_r
  end

  div_r = n
  while true
    div_r /= 3
    if div_r == 0 || div_r == 1
      collect_div_3 << 1
      break
    end
    collect_div_3 << div_r
  end

  div_r = n
  while true
    div_r /= 5
    if div_r == 0 || div_r == 1
      collect_div_5 << 1
      break
    end
    collect_div_5 << div_r
  end

  div_r = n
  while true
    div_r /= 7
    if div_r == 0 || div_r == 1
      collect_div_7 << 1
      break
    end
    collect_div_7 << div_r
  end

  sum = 0
  collect_div_2.each do |div_2|
    collect_div_3.each do |div_3|
      collect_div_5.each do |div_5|
        collect_div_7.each do |div_7|
          sum += div_2 + div_3 + div_5 + div_7
        end
      end
    end
  end
  sum
end


def loop_f_t(n)
  t = Time.new
  puts loop_f(n)
  Time.new - t
end

def gen_test_data()
  File.open("/tmp/recursive_to_loop_test_data.txt", "w") do |f|
    400000000000.times do |n|
      f.write(loop_f(n))
      f.write "\n"
    end
  end
end
