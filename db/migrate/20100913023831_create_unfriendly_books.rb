class CreateUnfriendlyBooks < ActiveRecord::Migration
  def self.up
    create_table :unfriendly_books do |t|
      t.string :name
      t.integer :publisher_id
      t.integer :author_id
      t.timestamps
    end
  end

  def self.down
    drop_table :unfriendly_books
  end
end
