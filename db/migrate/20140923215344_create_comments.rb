class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.belongs_to :picture, index: true
      t.belongs_to :users, index: true

      t.timestamps
    end
  end
end
