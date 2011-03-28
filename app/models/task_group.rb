class TaskGroup < ActiveRecord::Base
  belongs_to :project
  has_many :tasks

  validates :title, :presence => true
  validates :objective, :presence => true
  validates :deadline, :presence => true

  after_initialize :date_today

  private

  def date_today
    self.deadline = Date.today
  end
end
