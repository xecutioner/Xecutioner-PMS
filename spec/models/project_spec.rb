require 'spec_helper'

describe Project do
  it { should have_many :task_groups}
  it { should have_many(:tasks).through(:task_groups) }
  it { should validate_presence_of :title}

end

