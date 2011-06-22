class ChangeHeader2TypeToText < ActiveRecord::Migration
  def self.up
    change_column :headings, :header2, :text
  end

  def self.down
    change_column :headings, :header2, :string
  end
end
