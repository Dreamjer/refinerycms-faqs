module Refinery
  module Faqs
    module Admin
      class FaqsController < ::Refinery::AdminController

        crudify :'refinery/faqs/faq',
                :title_attribute => 'question',
                :paging => false,
                :sortable => false

      end
    end
  end
end
