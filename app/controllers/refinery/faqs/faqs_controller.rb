module Refinery
  module Faqs
    class FaqsController < ::ApplicationController

      before_filter :find_all_categories, :find_uncategorized_faqs
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @faq in the line below:
        present(@page)
      end

      def show
        @faq = Faq.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @faq in the line below:
        present(@page)
      end

    protected

      def find_all_categories
        @categories = Category.by_name.includes(:faqs)
      end

      def find_uncategorized_faqs
        @uncategorized_faqs = Faq.live.where(:category_id => nil).by_question
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/faqs").first
      end

    end
  end
end
