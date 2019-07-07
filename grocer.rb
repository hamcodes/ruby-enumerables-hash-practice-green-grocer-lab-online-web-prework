
def consolidate_cart(cart)
  updated_cart = {} 
  cart.each do |item|
    if updated_cart[item.keys[0]] 
      updated_cart[item.keys[0]][:count] += 1
    else

      updated_cart[item.keys[0]] = {
            count: 1,
            price: item.values[0][:price],
            clearance: item.values[0][:clearance]
      }
    end
  end
updated_cart
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include?(coupon[:item])
      if cart[coupon[:item]][:count] >= coupon[:num]
        discount = "#{coupon[:item]} W/COUPON"
        if cart[discount] 
          cart[discount][:count] += coupon[:num]
        else
          cart[discount] = {}
          cart[discount] = {:price => coupon[:cost]/coupon[:num], :clearance => cart[coupon[:item]][:clearance], :count => coupon[:num]}
          end
        cart[coupon[:item]][:count] -= coupon[:num]
      end    
    end
  end 
  cart
end



def apply_clearance(cart)
  cart.keys.each do |item|
    if cart[item][:clearance]
      cart[item][:price] = (cart[item][:price]*0.80).round(2)
    end
  end
  cart
end


def checkout(cart, coupons)
  consolidate_cart.keys.each do |item|
    if cart[item.keys[0]]
      cart[discount][:count] += coupon[:num]
      

end
end

