require '../test_helper'

class AccountTest < ActiveSupport::TestCase
  context "Account" do
    before(:each) do
      @account = Account.create(:name => 'conta x', :creation => Date.today)
    end
    describe "create with legal person" do
      it "should the 'person type' equal 'legal' " do  
        @account.person = Legal.new(:cnpj => "00000",:social_name => "social", :fantasy_name => "fantasy")
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
      @account.destroy
    end
  end
end
