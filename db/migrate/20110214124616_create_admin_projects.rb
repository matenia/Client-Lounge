class CreateAdminProjects < ActiveRecord::Migration
  def self.up
    create_table :admin_projects do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_projects
  end
end
