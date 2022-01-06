class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you, baby'
  end

  def fall_off_a_ladder
    'Call my agent, No way!'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shouting
    if actor.ready?
      actor.act
      actor.fall_off_a_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

RSpec.describe Movie do
  let(:stuntman) { double('Mr. Danger', ready?: true, act: 'stringy thing', fall_off_a_ladder: 'Sure, lets do it!', light_on_fire: true) }
  subject { described_class.new(stuntman) }
  describe '#start_shouting' do
    it 'expects 3 actions from the actor' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act).at_least(2).times # twice works too
      expect(stuntman).to receive(:fall_off_a_ladder).once
      expect(stuntman).to receive(:light_on_fire).at_most(1).times
      subject.start_shouting
    end
  end
end
