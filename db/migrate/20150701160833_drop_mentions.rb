class DropMentions < ActiveRecord::Migration
  def change
    drop_table :mentions
  end
end
