class AddIndexToBuyersEmail < ActiveRecord::Migration
  def change
    add_index :buyers, :email, unique: true
  end
end
