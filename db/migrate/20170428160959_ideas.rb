class Ideas < ActiveRecord::Migration[5.0]
  def change
    create_table "ideas", force: :cascade do |t|
       t.string "description", null: false
       t.references "category", null:false
    end
  end
end
