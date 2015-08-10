class Owner

  attr_accessor :name, :dog, :walk, :prepare_items, :walking, :vet_checkup

  def initialize(name="unnamed", dog)
    @dog = dog
    @name = name
  end

  def name
    @name
  end

  def dog=(dog)
    @dog = dog
  end

  def dog
    @dog
  end

  def prepare_items(*)
    @dog.leash = true
    @dog.plastic_bag = true
  end

  def walk
    prepare_items
    @dog.walking = true
    @walking = true
  end

  def walking?
    @walking
  end

  def vet_checkup
    prepare_items
    @dog.vet_checkup = true
  end



end
