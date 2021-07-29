class CreateApples < ActiveRecord::Migration[6.1]
  def change
    create_table :apples do |t|
      t.string :variety
      t.string :harvest
      t.string :notes
      t.string :image_url
      t.timestamps
    end
  end
end
