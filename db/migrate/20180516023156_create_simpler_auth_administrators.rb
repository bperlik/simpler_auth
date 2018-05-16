class CreateSimplerAuthAdministrators < ActiveRecord::Migration[5.0]
  def change
    create_table :simpler_auth_administrators do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :simpler_auth_administrators, :email, unique: true
  end
end
