class VideolinkToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :videolink, :text
  end

  def self.down
    remove_column :posts, :videolink
  end
end
