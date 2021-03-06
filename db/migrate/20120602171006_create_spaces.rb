class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      
      t.boolean :published, :default => false
      t.boolean :archived, :default => false

      t.string  :name
      t.string  :description
      t.string  :contact
      t.integer :capacity

      t.text :benefit
      t.text :goodwill
      t.text :long_description
      t.text :satisfaction
      t.text :formality

      t.string :address
      t.string :city, :default => "Burlington"
      t.string :state, :default => "VT"
      t.string :zip, :default => "05401"

      t.has_attached_file :photo

      t.timestamps
    end
  end
end
