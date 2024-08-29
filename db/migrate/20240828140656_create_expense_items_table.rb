class CreateExpenseItemsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :expense_items do |t|
      t.string :name
      t.text :description
      t.integer :is_mon_exp, comment: "Is monthly expense", limit: 1
      t.references :finance_profile, foreign_key: true
      t.timestamps
    end
  end
end
