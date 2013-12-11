class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :text
      t.date :post_on

      t.timestamps
    end
  end
end
