class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :qlabel
      t.text :answer

      t.timestamps
    end
  end
end
