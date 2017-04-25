class Tamagotchi
  attr_accessor :age
  attr_accessor :stomach
  attr_accessor :play
  attr_accessor :rest
  attr_accessor :birthday


  def initialize
    self.age = Age.new
    self.stomach = Stomach.new
    self.play = Play.new
    self.rest = Rest.new

  end

  def alive?
    return false if age == "death" ||
                     stomach.dead? ||
                        play.dead? ||
                        rest.dead?
    true
  end

end


class Stomach
  attr_accessor :state
  attr_accessor :timestamp

  STOMACH_STATE = ["death", "starving", "hungry", "sated", "full", "death"]

  def initialize
    self.state = "hungry"
    self.timestamp = Time.now
  end

  def eat
    i = STOMACH_STATE.index(state)
    self.state = STOMACH_STATE[i + 1]
  end

  def dead?
    return true if state == "death"
  end
end


class Play
  attr_accessor :state
  attr_accessor :timestamp

  PLAY_STATE = ["death", "depressed", "bored", "content", "fatigued", "death"]

  def initialize
    self.state = "bored"
    self.timestamp = Time.now
  end

  def delight
    i = PLAY_STATE.index(state)
    self.state = PLAY_STATE[i + 1]
  end

  def dead?
    return true if state == "death"
  end
end


class Rest
  attr_accessor :state
  attr_accessor :timestamp

  REST_STATE = ["death", "deprived", "rested", "coma", "death"]

  def initialize
    self.state = "rested"
    self.timestamp = Time.now
  end

  def slumber
    i = REST_STATE.index(state)
    self.state = REST_STATE[i + 1]
  end

  def dead?
    return true if state == "death"
  end
end


class Age
  attr_accessor :state
  attr_accessor :timestamp

  AGE_STATE = ["child", "teen", "adult", "death"]

  def initialize
    self.state = "egg"
    self.timestamp = Time.now
  end

  def age
    "death" if Time.now - birthday > 180
  end
end
