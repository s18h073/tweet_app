class AddImageNameToRetweets < ActiveRecord::Migration[5.2]
  def change
    add_column :retweets, :image_name, :string
  end
end
