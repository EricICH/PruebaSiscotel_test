class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.int :id_user
      t.int :type
      t.int :typeDoc
      t.string :doc
      t.date :dateEm
      t.date :dateExp
      t.string :name
      t.string :email
      t.string :phone
      t.string :secPhone

      t.timestamps
    end
  end
end
