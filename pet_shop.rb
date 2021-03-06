def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money)
  pet_shop[:admin][:total_cash] += money
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  all_pets = pet_shop[:pets]
  breed_count = []
  for pet in all_pets
    if pet[:breed] == breed
      breed_count << pet[:name]
    end
  end
  return breed_count
end

def find_pet_by_name(pet_shop, name)
  all_pets = pet_shop[:pets]
  for pet in all_pets
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  all_pets = pet_shop[:pets]
  for pet in all_pets
    if pet[:name] == name
      all_pets.delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  all_pets = pet_shop[:pets]
  all_pets.push(new_pet)
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, money)
  customer[:cash] += -money
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

##OPTIONAL

def customer_can_afford_pet(customer, new_pet)
cost_of_pet = new_pet[:price]
customer_money = customer[:cash]
  if cost_of_pet < customer_money
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  for pets in pet_shop[:pets]
    if (pets == pet) && (customer[:cash] > pet[:price])
      customer[:cash] += -pet[:price]
      pet_shop[:admin][:total_cash] += pet[:price]
      customer[:pets] << pet_shop[:pets].delete(pet)
      pet_shop[:admin][:pets_sold] += 1
    end
  end
end
