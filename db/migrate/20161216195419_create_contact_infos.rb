class CreateContactInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_infos do |t|
      t.string :phone_number
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
