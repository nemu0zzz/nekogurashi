class CreateNekos < ActiveRecord::Migration[6.1]
  def change
    create_table :nekos do |t|
      t.string :question

      t.timestamps
    end
  end
end
