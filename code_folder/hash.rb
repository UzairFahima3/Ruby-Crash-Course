class Menu

  def initialize()
    @hash = {}
  end

  def add_item(item, price)
    @hash[item] = price
  end

  def remove_item(item)
    @hash.delete(item)
  end

  def update_item_price(item, price)
    @hash[item] = price
  end

  def get_menu()
    return @hash
  end
end

class Bill
  def initialize()
    @bill = 0
    @order = []
  end

  def insert_order(item,hash)
    if hash.keys.include? item
    @order.push(item)
    else
      puts item + " is not in Menu"  
    end
  end

  def remove_order(item)
    @order.delete(item)
  end

  def show_order()
    return @order
  end
  
  def show_bill(menu)
    for i in @order
      price = menu[i]
      @bill += price
    end
    return @bill 
  end
end

menu = Menu.new()
menu.add_item("Tea", 150)
menu.add_item("Green Tea", 200)
menu.add_item("Bologanese Pasta", 10000)
puts menu.get_menu
puts "  "

menu.remove_item("Bologanese Pasta")
menu.update_item_price("Tea", 200)
puts menu.get_menu

order = Bill.new()
order.insert_order("Tea",menu.get_menu)
order.insert_order("Bologanesh Pasta",menu.get_menu)
order.insert_order("Green Tea",menu.get_menu)
puts order.show_order

order.remove_order("Bologanesh Pasta")

puts "Total Bill " 
puts order.show_bill(menu.get_menu)
