class CashRegister 
  attr_accessor :total
  
  @@items = []
  
  def initialize(apply_discount = 0)
    @total = 0
    @apply_discount = apply_discount
    
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount 
    if @apply_discount != 0
      @total -= (@total * @apply_discount)
    else
      puts "There is no discount apply."
    end
  end
  
  # def self.items
  #   @@items << 
    
  # end
  
end
