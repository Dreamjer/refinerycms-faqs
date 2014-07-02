module Refinery
  module Faqs
    class Faq < Refinery::Core::BaseModel
      self.table_name = 'refinery_faqs'

      belongs_to :category, :class_name => 'Refinery::Faqs::Category', :inverse_of => :faqs

      attr_accessible :question, :answer, :link, :featured, :hidden, :position,
        :category_id

      validates :question, :presence => true, :uniqueness => true

      acts_as_indexed :fields => [:question, :answer]

      def self.live
        where('not hidden')
      end

      def self.featured
        where(:featured => true)
      end

      def self.by_question
        order("refinery_faqs.question")
      end

      def self.by_category_name
        includes(:category).order("refinery_faq_categories.name, refinery_faqs.question")
      end

      def title
        question
      end

      delegate :name, :to => :category, :prefix => true, :allow_nil => true
    end
  end
end
