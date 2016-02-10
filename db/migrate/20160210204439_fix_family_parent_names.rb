class FixFamilyParentNames < ActiveRecord::Migration
  def change
  	rename_column :families, :parent1_name, :parent1_first_name
  	rename_column :families, :parent2_name, :parent2_first_name
  	add_column :families, :parent1_last_name, :string
  	add_column :families, :parent2_last_name, :string
  	add_column :families, :parent1_email, :string
  	add_column :families, :parent2_email, :string
  end
end
