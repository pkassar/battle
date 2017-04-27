require_relative '../app.rb'

describe Player do
  it 'returns its name' do
    subject.name = 'Samy'
    expect(subject.name).to eq 'Samy'
  end
end
