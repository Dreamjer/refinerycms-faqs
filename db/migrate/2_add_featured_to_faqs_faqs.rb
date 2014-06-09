class AddFeatureToFaqsFaqs < ActiveRecord::Migration

  def change
    add_column :refinery_faqs_faqs, :featured, :boolean, :null => false, :default => false
  end

end
