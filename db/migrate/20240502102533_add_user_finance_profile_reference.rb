class AddUserFinanceProfileReference < ActiveRecord::Migration[7.1]
  def change
    add_reference :finance_profiles, :user, foreign_key: true
  end
end
