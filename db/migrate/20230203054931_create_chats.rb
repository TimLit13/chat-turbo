class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.string :title, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
