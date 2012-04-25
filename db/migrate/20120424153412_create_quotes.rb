class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :author
      t.text :content
      t.datetime :written_at
      t.string :language

      t.timestamps
    end
  end
end
