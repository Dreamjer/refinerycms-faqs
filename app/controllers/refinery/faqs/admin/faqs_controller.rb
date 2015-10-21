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
                
        private
          def faq_params
            params.require(:faq).permit(
              :question, :answer, :link, :featured, :hidden, :position,
              category_ids: []
            )

          end

      end
    end
  end
end
