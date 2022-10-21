class AddNameToRecipients < ActiveRecord::Migration[7.0]
  def change
    add_column :recipients, :name, :string
  end
end
