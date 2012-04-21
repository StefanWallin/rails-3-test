class Task < ActiveRecord::Base
  validates :task, :presence => true 
  attr_accessible :task
end
