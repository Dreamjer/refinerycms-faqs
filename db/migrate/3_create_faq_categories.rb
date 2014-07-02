class CreateFaqCategories < ActiveRecord::Migration

  def change
    create_table :refinery_faq_categories do |t|
      t.string :name, :null => false
      t.string :slug
      t.integer :position
      t.timestamps
    end
    add_index :refinery_faq_categories, :slug
  end

end
