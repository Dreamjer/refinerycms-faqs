require 'spec_helper'

module Refinery
  module Faqs
    describe FaqsController do

      describe "GET index" do
        it "loads categories with active faqs" do
          category = FactoryGirl.create(:category)
          FactoryGirl.create(:faq, :category => category, :hidden => false)
          get :index
          assigns(:categories).should include(category)
        end
        it "doesn't load categories with only hidden faqs" do
          category = FactoryGirl.create(:category)
          FactoryGirl.create(:faq, :category => category, :hidden => true)
          get :index
          assigns(:categories).should_not include(category)
        end
      end

    end
  end
end
