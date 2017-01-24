class Addpaymentinfotoathlete < ActiveRecord::Migration[5.0]
  def change
  	add_column :athletes, :card_number, :string
  	add_column :athletes, :card_cvc, :string
  	add_column :athletes, :card_expiration, :date
  end
end
