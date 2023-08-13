class CreateHitos < ActiveRecord::Migration[6.1]
  def change
    create_table :hitos do |t|

      t.timestamps
    end
  end
end
