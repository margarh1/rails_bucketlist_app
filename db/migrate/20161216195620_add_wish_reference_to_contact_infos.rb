class AddWishReferenceToContactInfos < ActiveRecord::Migration[5.0]
  def change
    add_reference :contact_infos, :wish, foreign_key: true
  end
end
