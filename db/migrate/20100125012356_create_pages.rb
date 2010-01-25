class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :meta_title
      t.string :name
      t.text :meta_keywords
      t.text :meta_description
      t.text :permalink
      t.text :header
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
