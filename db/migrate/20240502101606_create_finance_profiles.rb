class CreateFinanceProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :finance_profiles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
