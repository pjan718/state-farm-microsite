class CreateHeader2s < ActiveRecord::Migration
  def self.up
    create_table :header2s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :header2s
  end
end
