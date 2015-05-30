class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.references :advisor, references: :users
      t.references :advised, references: :users
      t.text :message
      t.boolean :anonymously, default: false
      t.timestamps null: false
    end
  end
end
