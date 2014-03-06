require 'spec_helper'
require 'salary'

describe Salary do

  before do
    @salary = Salary.new
  end

  it "salary should not be valid if maximum salary is less than minimum salary" do
    @salary.minimum = 10000
    @salary.maximum = 5000
    @salary.should_not be_valid
    @salary.errors.messages[:maximum].should_not be_blank
  end

  it "salary should be valid if maximum salary is >= than minimum salary" do
    @salary.minimum = 10000
    @salary.maximum = 10000
    @salary.should be_valid
    @salary.maximum = 10001
    @salary.should be_valid
  end

  it "should except the maximum salary in case minimum is not prsent" do
    @salary.maximum = 10000
    @salary.should be_valid
  end

end