module InputCoin
    def input_coin(coin)
        coins << coin
    end
end

class VendingMachine
    attr_reader :name
    attr_accessor :coins
    include InputCoin
    def initialize(name)
        @name = name
        @coins = []
        puts "Vending Machine named '#{name}' has been created"
    end
end

pepsi = VendingMachine.new("Pepsi Machine")
