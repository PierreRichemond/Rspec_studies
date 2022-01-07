class Person
  def a(seconds)
    sleep(seconds)
    "hello"
  end
end

RSpec.describe Person do
  describe 'Regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance double' do
    it 'has the same methods as the called class' do
      # person = double(Person, a: 'Hello', b: 20)

      person = double(Person)
      allow(person).to receive(:a).with(1).and_return('Hello')
      expect(person.a(1)).to eq('Hello') # unnecessary line
    end
  end
end
