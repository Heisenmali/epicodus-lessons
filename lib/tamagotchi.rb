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

  STOMACH_STATE = ["dead", "starving", "hungry", "sated", "full", "death"]

  def initialize
    self.state = "hungry"
    self.timestamp = Time.now
  end

  def eat
    i = STOMACH_STATE.index(state)

  return "death" if state == "death" || state == "dead"


    time_passed = Time.now - timestamp
    state = if time_passed < 10
      self.state = STOMACH_STATE[i + 1]
    elsif time_passed < 30
      self.state = STOMACH_STATE[i]
    elsif time_passed < 120
      self.state = STOMACH_STATE[i - 1]
    else
      self.state = STOMACH_STATE[0]
    end

    self.timestamp = Time.now
    state

  end

  def dead?
    return true if state == "death" || state == "dead"
  end

end


class Play
  attr_accessor :state
  attr_accessor :timestamp

  PLAY_STATE = ["dead", "depressed", "bored", "content", "fatigued", "death"]

  def initialize
    self.state = "bored"
    self.timestamp = Time.now
  end

  def delight
    i = PLAY_STATE.index(state)

  return "death" if state == "death" || state == "dead"

    time_passed = Time.now - timestamp
    state = if time_passed < 10
      self.state = PLAY_STATE[i + 1]
    elsif time_passed < 30
      self.state = PLAY_STATE[i]
    elsif time_passed < 120
      self.state = PLAY_STATE[i - 1]
    else
      self.state = PLAY_STATE[0]
    end

    self.timestamp = Time.now
    state
  end

  def dead?
    return true if state == "death" || state == "dead"
  end
end


class Rest
  attr_accessor :state
  attr_accessor :timestamp

  REST_STATE = ["dead", "deprived", "rested", "in a coma", "death"]

  def initialize
    self.state = "rested"
    self.timestamp = Time.now
  end

  def slumber
    i = REST_STATE.index(state)

    return "death" if state == "death" || state == "dead"

    time_passed = Time.now - timestamp
    state = if time_passed < 10
      self.state = REST_STATE[i + 1]
    elsif time_passed < 30
      self.state = REST_STATE[i]
    elsif time_passed < 120
      self.state = REST_STATE[i - 1]
    else
      self.state = REST_STATE[0]
    end

    self.timestamp = Time.now
    state
  end

  def dead?
    return true if state == "death" || state == "dead"
  end
end


class Age
  attr_accessor :state
  attr_accessor :timestamp
  attr_accessor :birthday

  AGE_STATE = ["child", "teen", "adult", "death"]

  def initialize
    self.state = "egg"
    self.timestamp = Time.now
  end

  def change_state
    age = Time.now - timestamp
    state = if age > 180
      "death"
    elsif age > 120
      "adult"
    elsif age > 60
      "teen"
    else
      "child"
    end
  end

end
