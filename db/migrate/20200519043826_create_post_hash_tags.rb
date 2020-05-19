class CreatePostHashTags < ActiveRecord::Migration[6.0]
  def change
    create_table :post_hash_tags do |t|

      t.timestamps
    end
  end
end
