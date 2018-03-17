require '../test_helper'

class ContributionTest < ActiveSupport::TestCase
  describe Contribution do
    describe "on create" do
      it "should call a method that generate new 'code'" do
        contribution = instance_double("Contribution")
        allow(contribution).to receive(:initialize).with(:value => 100).and_return(an_instance_of(Contribution))
        allow(contribution).to receive(:generate_code).and_return("xYu8kl9xba")
        allow(contribution).to receive(:code).and_return("xYu8kl9xba")
        allow(contribution).to receive(:value).and_return(100)
        expect(contribution.code).to eq("xYu8kl9xba")
        expect(contribution.value).to eq(100)
      end
    end
  end
end
