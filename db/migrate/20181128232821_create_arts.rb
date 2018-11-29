class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :description
      t.string :banner
      t.string :thumbnail
      t.string :original

      t.timestamps
    end
  end
end
