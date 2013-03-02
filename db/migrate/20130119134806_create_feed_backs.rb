class CreateFeedBacks < ActiveRecord::Migration
  def change
    create_table :feed_backs do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text :message
      t.timestamps
    end
  end
end
