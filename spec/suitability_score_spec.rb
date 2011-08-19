require 'spec_helper'

describe SuitabilityScore do

  it 'should calculate ss for even number of characters in product' do
    ss = SuitabilityScore.new('even', 'customer1')
    ss.value.should == 4.5 
  end

  it 'should calculate ss for odd number of characters in product' do
    ss = SuitabilityScore.new('odd', 'customer')
    ss.value.should == 5 
  end

  it 'should multiply score by 1.5 if there are common factors in the product and customer names' do
    ss = SuitabilityScore.new('even', 'customer')
    ss.value.should == 4.5 * 1.5
  end
end
