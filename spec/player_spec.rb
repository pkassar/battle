require_relative '../app.rb'

describe Player do
  it 'returns its name' do
    p1 = Player.new('Samy')
    expect(p1.name).to eq 'Samy'
  end
end
