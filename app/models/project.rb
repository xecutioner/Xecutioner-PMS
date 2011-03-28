class Project < ActiveRecord::Base
  has_many TaskGroups
  has_many Tasks, :through => TaskGroups
end
