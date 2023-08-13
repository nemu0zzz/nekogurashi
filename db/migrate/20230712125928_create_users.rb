class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.string :occupation

      t.timestamps
    end
  end
end
