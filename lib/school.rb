# code here!

class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
end
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
end

  def grade(g)
    @roster[g]
  end
  
  def sort
    sorted_list = {}
    @roster.each do |grade, kids|
      sorted_list[grade] = kids.sort
    end
  end
end