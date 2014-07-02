module Refinery
  module Faqs
    class Category < Refinery::Core::BaseModel
      self.table_name = 'refinery_faq_categories'

      has_many :faqs, :class_name => 'Refinery::Faqs::Faq', :inverse_of => :category,
        :dependent => :nullify

      attr_accessible :name, :position

      validates :name, :presence => true, :uniqueness => true

      acts_as_indexed :fields => [:name]

      default_scope { order(:name) }

      def title
        name
      end
    end
  end
end
