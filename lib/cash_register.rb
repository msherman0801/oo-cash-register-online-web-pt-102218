require 'pry'
class CashRegister
  
  attr_accessor :total, :discount

  def initialize(discount=nil)
    @total = 0
    if discount != nil
      @discount = discount
    end
  end 
  

  def add_item(title, price, quantity=1)
    if quantity > 1
      @total += (price*quantity)
    else
      @total += price 
    end
  end
  
  def apply_discount
    self.discount = sel.fdiscount / 100
    binding.pry
    @total = @total * @discount
    @total
  end
  
  
end