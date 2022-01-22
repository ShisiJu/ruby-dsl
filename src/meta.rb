# instance_variable_set

class Student
  attr_accessor :name
  def initialize
  end
end

student = Student.new
student.name = 'hello'
student.instance_variable_set("@sex", 'male')
student.instance_eval('puts name')

