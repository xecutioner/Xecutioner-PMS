class Task < ActiveRecord::Base
  belongs_to :task_group

  validates :title, :presence => true
  validates :objective, :presence => true
  validates :deadline, :presence => true
  validates_datetime :deadline, :on_or_after => DateTime.now
  after_initialize :date_today
  before_create :default_values
  before_save :check_null_comment

  private

  def date_today
    self.deadline ||= DateTime.now
  end

  def default_values
    self.complete = false
    self.comment = ''
  end

  def check_null_comment
    if self.complete == true
      if self.comment.length == 0
        self.complete = false
        return false
      end
    end
    return true
  end

end
