module Refinery
  module Faqs
    module FaqsHelper

      # Get relation with only live, featured FAQs, ordered by question
      def featured_faqs
        Faq.live.featured
      end

      # Link to an FAQ by its anchor on the FAQs index
      def link_to_faq(title_or_faq, *args)
        if title_or_faq.is_a?(Faq)
          faq = title_or_faq
          title = faq.question
        else
          faq = args.delete(0)
          title = title_or_faq
        end

        link_to(title, refinery.faqs_faqs_path(:anchor => dom_id(faq)), *args)
      end

    end
  end
end
