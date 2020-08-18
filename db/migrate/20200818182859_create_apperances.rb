class CreateApperances < ActiveRecord::Migration[5.0]
  def change
    create_table :apperances do |t|
      t.belongs_to :guest
      t.belongs_to :episode
      t.string :rating

      t.timestamps
    end
  end
end
