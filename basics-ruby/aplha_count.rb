class AlphaCount
  def count_alpha(name)
    if !name or name.length < 1
      puts("Please provide an input")
      return
    end
    counter = Hash.new(0)
    iterator = 0
    while iterator < name.length
      if is_alpha(name[iterator])
        counter[name[iterator]] = counter[name[iterator]] + 1
      end
      iterator = iterator + 1
    end
    if(counter.size<1)
      print(" No alphabets found. ")
    else
      print(counter)
    end
  end
  def is_alpha(letter)
    letter =~ /[A-Za-z]/
  end
end

alpha_counter = AlphaCount.new()
name = gets.chomp
alpha_counter.count_alpha(namea
