class Fibonacci
  def print_series(number)
    if !number or number.length < 1
      puts "Please provide an input"
    else
      begin
        number = Integer(number)
          first = 0
          second = 1
          number.times do
            yield(second)
            sum = first + second
            first = second
            second = sum
          end
      rescue
          puts("Please enter a valid Integer")
      end
    end
  end
end
number=gets.chomp
Fibonacci.new().print_series(number){ |sum| print(sum.to_s+" ")}
