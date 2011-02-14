class CreateAdminPages < ActiveRecord::Migration
  def self.up
    create_table :admin_pages do |t|
      t.string :title
      t.string :link_text
      t.string :cached_slug
      t.string :meta_keywords
      t.string :meta_description
      t.text :content
      t.boolean :active
      t.boolean :members_only
      t.boolean :navigation

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_pages
  end
end
