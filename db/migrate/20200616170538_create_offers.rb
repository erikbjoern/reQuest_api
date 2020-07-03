# frozen_string_literal: true

class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :message
      t.belongs_to :helper, foreign_key: { to_table: :users }
      t.belongs_to :request

      t.timestamps
    end
    add_index :offers, [:request_id, :helper_id], unique: true
  end
end
