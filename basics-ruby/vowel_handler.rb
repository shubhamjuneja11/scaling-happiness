class VowelHandler
  def replace_vowel(name)
    if(!name or name.length<1)
      puts("Please provide an input")
    else
      name = name.gsub(/[aeiouAEIOU]/,'*')
      puts(name)
    end
  end
end

vowel_handler = VowelHandler.new()
name = gets.chomp
vowel_handler.replace_vowel(name)
