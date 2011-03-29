class Project < ActiveRecord::Base
  has_many :task_groups
  has_many :tasks, :through => :task_groups
  validates :title,:presence => true, :length => {:minimum =>3}
  validates :deadline,:presence =>true
  validates :description,:presence =>true

  private

  def date_today
    self.deadline ||= Date.today
  end
end
