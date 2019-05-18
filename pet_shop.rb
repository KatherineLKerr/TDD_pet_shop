def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money)
  total_money = (pet_shop[:admin][:total_cash] += money)
  return total_money
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
  add_pets_sold = (pet_shop[:admin][:pets_sold] += pets_sold)
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  all_pets = pet_shop[:pets]
  breed_count = []
  for pet in all_pets
    if pet[:breed] == breed
      breed_count << 1
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
  return customer[:cash]
end

def remove_customer_cash(customer, money)
  return customer[:cash] += -money
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end
