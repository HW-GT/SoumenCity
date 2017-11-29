class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :store_name
      t.string :company_name
      t.string :manager_name
      t.string :postal_code
      t.string :address
      t.string :access
      t.string :phone_number
      t.string :fax_number
      t.string :business_hours
      t.string :product_list
      t.text :description
      t.string :email
      t.string :homepage
      t.integer :user_id

      t.timestamps
    end
  end
end
