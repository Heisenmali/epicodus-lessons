require "tamagotchi"
require "rspec"
require "pry"
require "timecop"



describe "Tamagotchi" do

  describe "#alive?" do
    let(:tamagotchi) {Tamagotchi.new}

    it "returns true if the tamagotchi is alive (on initialize)" do
      expect(tamagotchi.alive?).to eq true
    end

    it "returns true if the tamagotchi is well fed" do
      tamagotchi.stomach.eat
      tamagotchi.stomach.eat
      expect(tamagotchi.alive?).to eq true
    end

    it "returns false if the tamagotchi is fed to death" do
      tamagotchi.stomach.eat
      tamagotchi.stomach.eat
      tamagotchi.stomach.eat
      expect(tamagotchi.alive?).to eq false
    end

    it "returns false if the tamagotchi is slept to death" do
      tamagotchi.rest.slumber
      tamagotchi.rest.slumber
      expect(tamagotchi.alive?).to eq false
    end

  end

  describe "#hatch" do
    let(:tamagotchi) {Tamagotchi.new}

    it "initialize child state, checking age state for child" do
      expect(tamagotchi.age.state).to eq "egg"
    end
    it "initialize child state, checking stomach state for hungry" do
      expect(tamagotchi.stomach.state).to eq "hungry"
    end
    it "initialize child state, checking play state for bored" do
      expect(tamagotchi.play.state).to eq "bored"
    end
    it "initialize child state, checking rest state for rested" do
      expect(tamagotchi.rest.state).to eq "rested"
    end

  end

  describe "#eat" do

    tamagotchi = Tamagotchi.new

    it "modify stomach state to equal sated" do
      expect(tamagotchi.stomach.eat).to eq "sated"
    end

    it "modify stomach state to equal full" do
      expect(tamagotchi.stomach.eat).to eq "full"
    end

    it "modify stomach state to equal death" do
      expect(tamagotchi.stomach.eat).to eq "death"
    end

  end

  describe "#delight" do

    tamagotchi = Tamagotchi.new

    it "modify play state to equal content" do
      expect(tamagotchi.play.delight).to eq "content"
    end

    it "modify play state to equal fatigued" do
      expect(tamagotchi.play.delight).to eq "fatigued"
    end

    it "modify play state to equal death" do
      expect(tamagotchi.play.delight).to eq "death"
    end

  end

  describe "#slumber" do

    tamagotchi = Tamagotchi.new

    it "modify play rest to equal coma" do
      expect(tamagotchi.rest.slumber).to eq "coma"
    end

    it "modify play rest to equal death" do
      expect(tamagotchi.rest.slumber).to eq "death"
    end

  end

  describe "Age" do

    describe "age" do

      before do
        Timecop.freeze(Time.new(2008, 9, 1, 10, 5, 0))
      end

      after do
        Timecop.return
      end

      it "should return a dead tamagotchi " do
        tamagotchi = Tamagotchi.new
        death_time = Time.new(2008, 9, 1, 10, 5, 0) + 181
        Timecop.travel(death_time)
        expect(tamagotchi.age.change_state).to eq "death"
      end

      it "should return a child tamagotchi " do
        tamagotchi = Tamagotchi.new
        death_time = Time.new(2008, 9, 1, 10, 5, 0) + 20
        Timecop.travel(death_time)
        expect(tamagotchi.age.change_state).to eq "child"
      end

      it "should return a teen tamagotchi " do
        tamagotchi = Tamagotchi.new
        death_time = Time.new(2008, 9, 1, 10, 5, 0) + 61
        Timecop.travel(death_time)
        expect(tamagotchi.age.change_state).to eq "teen"
      end

      it "should return a adult tamagotchi " do
        tamagotchi = Tamagotchi.new
        death_time = Time.new(2008, 9, 1, 10, 5, 0) + 121
        Timecop.travel(death_time)
        expect(tamagotchi.age.change_state).to eq "adult"
      end
    end

  end

end
