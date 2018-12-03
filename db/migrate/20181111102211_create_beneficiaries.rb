class CreateBeneficiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :beneficiaries do |t|
      t.string   :name
      t.string   :unique_id 
      t.string   :email
      t.integer  :mobile      
      t.timestamps
    end
  end
end
