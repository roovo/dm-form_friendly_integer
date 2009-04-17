require File.dirname(__FILE__) + '/../spec_helper.rb'

describe DataMapper::Types::FormFriendlyInteger do
  before(:all) do
    class ::FormFriendlyIntegerTest
      include DataMapper::Resource

      property :id,           Serial
      property :some_number,  FormFriendlyInteger
    end
    FormFriendlyIntegerTest.auto_migrate!
  end

  before(:each) do
    FormFriendlyIntegerTest.all.destroy!
  end

  it 'should immediately typecast positive integer string values' do
    FormFriendlyIntegerTest.new(:some_number => '345').some_number.should == 345
  end

  it 'should immediately typecast negative integer string values' do
    FormFriendlyIntegerTest.new(:some_number => '-345').some_number.should == -345
  end

  it 'should NOT typecast decimal string values' do
    FormFriendlyIntegerTest.new(:some_number => '345.1').some_number.should == '345.1'
  end

  it 'should NOT typecast non-numeric string values' do
    FormFriendlyIntegerTest.new(:some_number => 'not a number').some_number.should == 'not a number'
  end

  it 'should raise an error for a non-string value' do
    lambda { FormFriendlyIntegerTest.new(:some_number => []) }.should raise_error(ArgumentError, '+value+ must be nil or a String')
  end

  it "should save the number to the db with a positive integer string value" do
    repository(:default) do
      FormFriendlyIntegerTest.create(:some_number => '345')
    end

    FormFriendlyIntegerTest.first.some_number.should == 345
  end

  it "should save the number to the db with a negative integer string value" do
    repository(:default) do
      FormFriendlyIntegerTest.create(:some_number => '-345')
    end

    FormFriendlyIntegerTest.first.some_number.should == -345
  end

  it "should save the integer part of the string to the db with a decimal input string value" do
    repository(:default) do
      FormFriendlyIntegerTest.create(:some_number => '345.9')
    end

    FormFriendlyIntegerTest.first.some_number.should == 345
  end

  it "should save 0 to the db with a non-numeric input string value" do
    repository(:default) do
      FormFriendlyIntegerTest.create(:some_number => 'not a number')
    end
    FormFriendlyIntegerTest.first.some_number.should be_zero
  end
end
