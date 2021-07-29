class CreateApplesCategoriesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :apples, :categories do |t|
      t.index :apple_id
      t.index :category_id
    end
  end
end
