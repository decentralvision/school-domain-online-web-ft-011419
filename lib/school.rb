# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  def grade(num)
    @roster[num]
  end
  def sort
    new_hash = {}
    @roster.collect {|grade, students| self[grade] = students.sort}
    new_hash
  end
end
