require 'player'

describe Player do

  subject(:player) { Player.new }

  # it 'has options when created' do
  #   expect(player.selection).not_to be_empty
  # end
  #
  # it 'has 3 options to choose from' do
  #   expect(player.selection).to eq ["rock", "paper", "scissors" ]
  # end

  it { is_expected.to respond_to(:choose).with(1).argument }

    describe '#choice' do

      it 'can choose rock as an option' do
        expect(player.choose("rock")).to eq "rock"
      end

      it 'can choose paper as an option' do
        expect(player.choose("paper")).to eq "paper"
      end

      it 'can choose scissors as an option' do
        expect(player.choose("scissors")).to eq "scissors"
      end

      # it 'raises error if no option is chosen' do
      #   expect { player.choose("banana") }.to raise_error "You have not made a valid choice"
      # end

    end

end
