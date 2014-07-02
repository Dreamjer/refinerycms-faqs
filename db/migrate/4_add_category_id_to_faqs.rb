class AddCategoryIdToFaqs < ActiveRecord::Migration

  def up
    add_column :refinery_faqs, :category_id, :integer
    add_index :refinery_faqs, :category_id
  end

  def down
    remove_column :refinery_faqs, :category_id
  end

end
