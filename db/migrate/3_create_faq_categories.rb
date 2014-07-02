class CreateFaqCategories < ActiveRecord::Migration

  def change
    create_table :refinery_faq_categories do |t|
      t.string :name, :null => false
      t.integer :position
      t.timestamps
    end
  end

end
