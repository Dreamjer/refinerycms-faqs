module Refinery
  module Faqs
    module Admin
      class FaqsController < ::Refinery::AdminController

        crudify :'refinery/faqs/faq',
                :title_attribute => 'question',
                :paging => false,
                :sortable => false,
                :include => [:category],
                :order => "refinery_faq_categories.name ASC, refinery_faqs.question ASC"

      end
    end
  end
end
