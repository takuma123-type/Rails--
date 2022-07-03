class CreateFiveches < ActiveRecord::Migration[7.0]
  def change
    create_table :fiveches do |t|
      t.text :content
      t.timestamps
    end
  end
end
