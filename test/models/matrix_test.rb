require '../test_helper'

class MatrixTest < ActiveSupport::TestCase
  context "Matrix" do
    before(:each) do
      @matrix = Matrix.new
    end
    describe "should accept" do
      it "only 'contribution'" do  
        @matrix.contributions << Contribution.new()
        expect(@account.person_type).to eq('Legal')
      end
    end
    describe "create with physical person" do
      it "should the 'person type' equal 'physical' " do  
        @account.person = Physical.new(:cpf => "00000",:name => "maria", :born_date => Date.today)
        expect(@account.person_type).to eq('Physical')
      end
    end
    after(:each) do 
      @matrix.destroy
    end
  end
end
