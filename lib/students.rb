## Code your solution below. Note that your SQL queries should be in quotation marks. 

# def highest_student_gpa
# end

# def lowest_student_gpa
# end

# def average_student_gpa
# end

# def total_tardies_for_all_students
# end

# def average_gpa_for_9th_grade
# end



class School
  attr_accessor :roster
  attr_reader :name

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student (student, grade)

    if @roster.keys.include?(grade)
      @roster[grade].push(student)
      @roster[grade]
    else
    @roster[grade] = [student]
    end
  end

  def grade (grade)
   return  @roster[grade]
  end

  def sort
  @roster.each {|grade, students| students.sort!}
  end
end