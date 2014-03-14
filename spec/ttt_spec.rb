require 'rspec'
require 'ttt'
require 'space'
require 'board'

describe Game do

  it 'will create an instance of a game' do
    new_game = Game.new
    new_game.should be_an_instance_of Game
  end

end

describe Space do
  describe 'initialize' do
    it 'will initialize a space' do
      new_space = Space.new(1)
      new_space.should be_an_instance_of Space
    end
  end

  describe '.create' do
    it 'creates a board with spaces' do
      new_space = Space.create(4)
      new_space.space_num.should eq 4
    end
  end
end

describe Board do
  describe '.create' do
    it 'creates a board with 9 spaces' do
      new_board = Board.create(9)
      Board.all.length.should eq 9
    end
  end
  describe '.players' do
    it 'creates two players: "X" and "O"' do
      new_board = Board.create(9)
      Board.players.length.should eq 2
    end
  end
end
