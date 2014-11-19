# Any live cell with less than two live neighbours dies, as if caused by under-population.

describe "Rule one" do
  it '1 is less than 2' do
    expect(1 < 2).to be true
  end
  it '0 is less then 2' do
    expect(0 < 2).to be true
  end
  it '2 is not less then 2' do
    expect(2 < 2).not_to be true
  end

  it 'one will die' do
    death = true
    expect(1 < 2).to eq death
  end
  it 'one will die because it has less than 2 live neighbours' do
    live_neighbours = 2
    death = true
    expect(1 < live_neighbours).to eq death
  end
  it 'one cell will die because it has less than 2 live neighbours' do
    live_neighbours = 2
    death = true
    cell = 1
    expect(cell < live_neighbours).to eq death
  end
  it 'when we apply rule one on one cell with less than two neighbours it will die' do
    live_neighbours = 2
    death = true
    cell = 1
    apply_rule_one = cell < live_neighbours
    expect(apply_rule_one).to eq death
  end
  it 'when we apply rule one on two cells with less than two neighbours they will live' do
    live_neighbours = 2
    death = true
    live = false
    cell = 2
    apply_rule_one = cell < live_neighbours
    expect(apply_rule_one).to eq live
  end
  
  it 'can apply rule one' do
    cell = Cell.new
    expect(cell).class.to be cell
  end
end
