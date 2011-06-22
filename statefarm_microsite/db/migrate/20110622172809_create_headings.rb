class CreateHeadings < ActiveRecord::Migration
  def self.up
    create_table :headings do |t|
      t.string :title
      t.string :header2
      t.boolean :visible

      t.timestamps
    end
  end

  def self.down
    drop_table :headings
  end
end
