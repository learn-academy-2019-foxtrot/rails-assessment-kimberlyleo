# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

def hello_world l
    if l.downcase == "es"
        puts "Hola Mundo"
    elsif l.downcase == "de"
        puts "Hallo Welt"
    elsif l.downcase == "ru"
        puts "Priver mir"
    elsif l.downcase == "de"
        puts "Hallo Welt"
    elsif l.downcase == "ja"
        puts "Kon'nichiwa sekai"
    else 
        puts "Hello World"
    end
end

hello_world "en"
hello_world "ja"
hello_world "ru"
hello_world "ES"




# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade num
    if num <= 100 && num >= 90
        puts "A"
    elsif num >= 80 && num < 90
        puts "B"
    elsif num >= 70 && num < 80
        puts "C"
    elsif num >= 60 && num < 70
        puts "D"
    else
        puts "F"
    end
end

assign_grade 89
assign_grade 99 
assign_grade 5
# assign_grade 67
# assign_grade 70

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade_letter num
    if num == 100 && num >= 90
        puts "A"
    elsif num >= 80 && num < 90
        puts "B"
    elsif num >= 70 && num < 80
        puts "C"
    elsif num >= 60 && num < 70
        puts "D"
    elsif num > 100
        puts "Please enter a valid percentage"
    elsif num < 0 
        puts "Please a grade percentage above 0"
    else
        puts "F"
    end
end

assign_grade_letter (-5)
assign_grade_letter 101
assign_grade_letter 33.33



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer (noun, number)
    if number == 0 || number == 1
        puts "#{number} #{noun}"
    elsif number > 1
        puts "#{number} #{noun}s"
    else 
        puts "Please enter a valid positive number"
    end
end

pluralizer("ring", 3)  
pluralizer("pig", 1)
pluralizer("foot", 0)

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

#irregular nouns to include: foot, family, person

def pluralizer_2 (noun, number)
    if noun == "foot" && number > 1
        puts "#{number} feet"
    elsif noun == "family" && number > 1
        puts "#{number} families"
    elsif noun == "person" && number > 1
        puts "#{number} people"
    elsif number == 0 || number == 1
        puts "#{number} #{noun}"
    elsif number > 1
        puts "#{number} #{noun}s"
    else 
        puts "Please enter a valid positive number and noun"
    end
end

pluralizer_2("person", 3)  
pluralizer_2("pig", 1)
pluralizer_2("foot", 2)