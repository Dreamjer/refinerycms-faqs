require 'spec_helper'

module Refinery
  module Faqs
    describe Faq do
      describe "validations" do
        subject {
          FactoryGirl.build(:faq)
        }

        it { should be_valid }
        its(:errors) { should be_empty }
      end

      it "saves" do
        subject.save.should be_truthy
      end
    end
  end
end
