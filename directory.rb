def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november, hobbies: :reading, country_of_birth: :India, height: :"5"}
    puts "Now we have #{students.count} students"
    #get another name from user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "----------------"
end

def print(students)
  count = 0
  while count < students.count
  
    #if students[name][0] == "a" && students[name].length < 12
    puts "#{students[count][:name]} #{students[count][:cohort]} cohort #{students[count][:hobbies]} #{students[count][:country_of_birth]} #{students[count][:height]} "
    count += 1
    end
  
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students)
