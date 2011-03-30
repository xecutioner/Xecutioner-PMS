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
    if @task.complete == false
      @task.comment.should == nil
    else
      if @task.complete == true
      @task.comment.should_not == nil
    end
  end
end
  it "should not be completed without a comment" do
    if @task.comment?
      @task.complete.should_not == false
    end
  end
end

