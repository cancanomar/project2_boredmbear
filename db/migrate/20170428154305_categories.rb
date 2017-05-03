class Categories < ActiveRecord::Migration[5.0]
  def change
    create_table "categories", force: :cascade do |t|
      t.string "name", null: false
      t.string "bear_img", null: false
    end
  end
end
