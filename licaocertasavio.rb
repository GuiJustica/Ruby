require "rspec/autorun"
class Economia
    attr_reader :ct_perde,:tr_perde


    def initialize
        @ct_perde = 1
        @tr_perde = 1  
    end 

    def ctganha
        @ct_perde -= 1
        @tr_perde += 1
        if @tr_perde > 4
           @tr_perde =4             
        end
        
    end

    def trganha
        @tr_perde -= 1
        @ct_perde += 1
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
        if @ct_perde == 0
             1400
        end
        if @ct_perde == 1
             1900
        end    
        if @ct_perde == 2
             2400
        end    
        if @ct_perde == 3
             2900
        end    
        if @ct_perde == 4
             3400
        end        
    end

    def trdinheiro
        if @tr_perde == 0
             1400
        end
        if @tr_perde == 1
             1900
        end    
        if @tr_perde == 2
             2400
        end    
        if @tr_perde == 3
             2900
        end    
        if @tr_perde == 4
             3400
        end        
    end

end





describe Economia do

    it "Ct ganha pistol" do

        economia = Economia.new

        economia.ctganha


        expect(economia.ct_perde).to eq 0
        expect(economia.tr_perde).to eq 2

        


    end

    it "Tr ganha pistol" do

        economia = Economia.new

        economia.trganha

        expect(economia.ct_perde).to eq 2
        expect(economia.tr_perde).to eq 0



    end


    it "ct ganha" do

        economia = Economia.new

        economia.ctganha
        economia.ctganha
        economia.ctganha


        expect(economia.ct_perde).to eq 0
        expect(economia.tr_perde).to eq 3
         
        economia.bonus
      
    end

    it "tem q aparecer o dinheiro" do

        economia = Economia.new

        economia.ctganha
        economia.ctganha
        economia.ctganha
        economia.bonus

        expect(economia.ct_perde.to eq 0)
        expect(economia.tr_perde.to eq 4)

      
      
    end





end  