require 'spec_helper'

describe Task do
  before(:all) do
    @task = Task.make!
  end
  it { should belong_to :task_group }
  it { should validate_presence_of :title }
  it { should validate_presence_of :objective }
  it { should validate_presence_of :deadline }

  it "should not have a deadline earlier than the created date" do
    @task.deadline.should > @task.created_at
  end

  it "should not be complete when created " do
    @task.complete.should_not == true
  end

  it "should have a comment when completed" do
    @task.complete = true
    @task.save

    if @task.complete == false
      @task.comment.length.should == 0
    else
      if @task.complete == true
        @task.comment.length.should > 0
      end
    end
  end

end

