
describe 'ten_minute_walk?' do
    it 'returns false when the length of walk is over 10 units' do
        expect(ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w','E'])).to eq false
    end
end