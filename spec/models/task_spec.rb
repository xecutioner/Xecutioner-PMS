require 'spec_helper'

describe Task do

  before(:each) do
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
    @task.comment = "Comment Aayo"
    @task.save
    Task.last.complete.should == true
    Task.last.comment.length.should > 0
   end

  it "should not be completed without a comment" do
    @task.complete = true
    @task.save
    Task.first.complete.should == false
  end


end

