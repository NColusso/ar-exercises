class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  belongs_to :store
  def validate(employee)
    if employee.errors.any?
      puts employee.errors.full_messages
    else
      puts "success!"
    end
  end
end
