require 'json'

class Roulette
    
    def self.setup_files
        file = File.read("data/buffyroulette.json")
        @episodes = JSON.parse(file)
    end
    
    def self.pull_the_trigger
        setup_files
        bullet = @episodes.to_a.sample.to_h
        puts "You should watch #{bullet}!" 
    end
end
