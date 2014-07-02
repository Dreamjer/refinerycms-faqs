module Refinery
  module Faqs
    class Faq < Refinery::Core::BaseModel
      self.table_name = 'refinery_faqs'

      belongs_to :category, :class_name => 'Refinery::Faqs::Category', :inverse_of => :faqs

      attr_accessible :question, :answer, :link, :featured, :hidden, :position,
        :category_id

      validates :question, :presence => true, :uniqueness => true

      acts_as_indexed :fields => [:question, :answer]

      default_scope { order(:question) }

      def self.live
        where('not hidden')
      end

      def self.featured
        where(:featured => true)
      end

      def title
        question
      end

      delegate :name, :to => :category, :prefix => true, :allow_nil => true
    end
  end
end
