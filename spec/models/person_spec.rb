require 'spec_helper'

describe Person do
   before(:all) do
    @person = Person.make!
  end
  it {should have_many(:tasks).through(:tasklist)}
end

