# frozen_string_literal: true

require './lib/walkies.rb'

describe 'ten_minute_walk?' do
  it 'returns false when the length of walk is over 10 units' do
    expect(ten_minute_walk?(%w[w s e e n n e s w w E])).to eq false
  end

  it 'returns array of just x direction coordinates' do
    expect(dir_count(%w[e w s], 'e')).to eq 1
  end

  it 'returns true when y direction coordinates ' do
    expect(dir_count(%w[n s e n n e], 'n')).to eq 3
  end

  it 'returns array of just x direction coordinates' do
    expect(dir_count(%w[e w s], 'w')).to eq 1
  end

  it 'returns array of just y direction coordinates ' do
    expect(dir_count(%w[n s e s s], 's')).to eq 3
  end

  it 'returns true when walk returns to his spot in 10 minutes' do
    expect(ten_minute_walk?(%w[w s e e n n e s w w])).to eq true
  end

  it 'returns false when walk DOES NOT return to spot in 10 minutes' do
    expect(ten_minute_walk?(%w[w s e n n e s w w w])).to eq false
  end
end
