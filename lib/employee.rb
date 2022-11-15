class Employee < ActiveRecord::Base
  #The belongs_to joins the employee t the store table via foreign Key Store_id, this is equivalent to join statements in SQL
  belongs_to :store
  validates :first_name, :store_id, :last_name, presence: true
  #Put this on new line, yes you can use validates twice
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  # Belongs to


end
