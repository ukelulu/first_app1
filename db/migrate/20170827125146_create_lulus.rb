class CreateLulus < ActiveRecord::Migration[5.0]
  def change
    create_table :lulus do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
