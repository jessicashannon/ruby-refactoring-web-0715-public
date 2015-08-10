require 'pry' 

class Dog
  attr_accessor :leash, :plastic_bag, :walking, :vet

  def initialize(name, breed, owner_name)
    @name = name
    @breed = breed
    @owner = owner_name
    @leash = false
    @plastic_bag = false
    @walking = false
    @vet_checkup = false
  end

  def name
    @name
  end

  def bark
    "Woof!"
  end

  def breed
    @breed
  end

  def owner
    # binding.pry
    if @owner.class == Owner
      @owner
    else
      @owner = Owner.new(@owner, self)
    end
  end

  def walking?(owner)
    owner.dog.walking
  end

  def vet_checkup=(*)
    @vet_checkup = true
  end

  def vet_checkup?(*)
    @vet_checkup
  end

  # Refactor the following methods as methods in the Owner class!

  # def walk(owner)
  #   # REFACTOR!
  #   owner.dog.leash = true
  #   owner.dog.plastic_bag = true
  #   owner.dog.walking = true
  # end

  
end

barkster = Dog.new("Barkety", "labrador", "Owner Name")
