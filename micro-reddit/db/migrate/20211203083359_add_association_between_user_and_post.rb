class AddAssociationBetweenUserAndPost < ActiveRecord::Migration[6.1]
  def change
    add_column :post, "user_id", null: false, foreign_key: true
  end
end
