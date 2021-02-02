class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { greater_than: 0 }

  
  def validate(store)
    if store.errors.any?
      puts store.errors.full_messages
    else
      puts "success!"
    end
  end

end
