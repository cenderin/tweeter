class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :post
      t.datetime :tweetime

      t.timestamps
    end
  end
end
