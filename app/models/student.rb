class Student < ActiveRecord::Base

  after_initialize do |student|
    student.update(active: false) if !self.active
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end
