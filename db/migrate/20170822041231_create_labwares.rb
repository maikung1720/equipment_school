class CreateLabwares < ActiveRecord::Migration
  def change
    create_table :labwares do |t|
      t.string :name
      t.integer :rest
      t.integer :loan
      t.string :group

      t.timestamps null: false
    end
  end
end
