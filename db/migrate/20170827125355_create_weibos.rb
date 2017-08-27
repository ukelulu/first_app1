class CreateWeibos < ActiveRecord::Migration[5.0]
  def change
    create_table :weibos do |t|
      t.text :title
      t.string :description

      t.timestamps
    end
  end
end
