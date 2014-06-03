module Refinery
  module Faqs
    class Faq < Refinery::Core::BaseModel
      self.table_name = 'refinery_faqs'

      attr_accessible :question, :answer, :link, :hidden, :position

      validates :question, :presence => true, :uniqueness => true

      acts_as_indexed :fields => [:question, :answer]

      default_scope { order(:question) }
    end
  end
end
