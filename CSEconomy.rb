require "rspec/autorun"
class Economia
    attr_reader :ct_perde,:tr_perde



    def initialize
        @ct_perde = 1
        @tr_perde = 1
        @ct_dinheiro = 800
        @tr_dinheiro = 800
    end

    def ctganha
        @ct_perde -= 1
        @tr_perde += 1

        if @ct_perde < 0
            @ct_perde = 0
         end
        if @tr_perde > 4
           @tr_perde =4
        end

    end

    def trganha


        @tr_perde -= 1
        @ct_perde += 1

        if @ct_perde < 0
            @ct_perde = 0
         end


        if @ct_perde > 4
            @ct_perde =4
         end

    end

    def bonus
        bonus = {
            "TR" => trdinheiro,
            "CT" => ctdinheiro,
        }
    end



    def ctdinheiro
        puts "Bonus do ct:\n"
        if @ct_perde == 0
            puts 1400
        end
        if @ct_perde == 1
            puts 1900
        end
        if @ct_perde == 2
            puts 2400
        end
        if @ct_perde == 3
            puts 2900
        end
        if @ct_perde == 4
            puts 3400
        end
    end

    def trdinheiro
        puts "Bonus de tr:\n"
        if @tr_perde == 0
            puts 1400
        end
        if @tr_perde == 1
            puts 1900
        end
        if @tr_perde == 2
            puts 2400
        end
        if @tr_perde == 3
            puts 2900
        end
        if @tr_perde == 4
            puts 3400
        end
    end

end





describe Economia do

    it "Jogo" do
        economia = Economia.new
        puts"Quem ganhou o round? \n 1-ct \n 2-tr"
        howWon = gets.chomp

        puts howWon

        if howWon == "1"
            economia.ctganha
            puts " Economia ->" + economia.bonus.to_s
        elsif howWon == "2"
            economia.trganha
            puts "Economia ->" + economia.bonus.to_s
        else
            puts "Selecione um vencedor do round!"

            # expect(economia.ct_perde).to eq 2
            # expect(economia.tr_perde).to eq 2

        end
    end



end
