require 'spec_helper'

describe LanguageParser do

  before :all do
    class TestClass
      include LanguageParser
    end
    @test_class = TestClass.new
  end

  it 'should know if string sizes share common factors' do
    @test_class.share_common_factors?('1234', '123456').should be_true
  end

  it 'should know if string sizes do not share common factors' do
    @test_class.share_common_factors?('12345', '123456').should be_false
  end

  it 'should count number of vowels' do
    @test_class.number_of_vowels_in('this IS 123!').should == 2
  end

  it 'should count number of consonants' do
    @test_class.number_of_consonants_in('this IS #!@#!@').should == 4
  end
end
