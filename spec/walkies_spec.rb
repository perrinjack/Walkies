# frozen_string_literal: true

require './lib/walkies.rb'

describe 'ten_minute_walk?' do
  it 'returns false when the length of walk is over 10 units' do
    expect(ten_minute_walk?(%w[w s e e n n e s w w E])).to eq false
  end

  it 'returns array of just x direction coordinates' do
    expect(eastArray(['e','w', 's'])).to eq %w[e w ]
  end

  it 'returns true when y direction coordinates ' do
    expect(northArray(['n','s','e'])).to eq ['n', 's']
  end

  it 'returns array of just x direction coordinates' do
    expect(westArray(['e','w', 's'])).to eq %w[e w ]
  end

  it 'returns array of just y direction coordinates ' do
    expect(southArray(['n','s','e'])).to eq ['n', 's']
  end
end
