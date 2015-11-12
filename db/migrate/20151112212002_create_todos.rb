class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :title
      t.text :description
      t.boolean :completed
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
