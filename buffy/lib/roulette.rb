require 'json'

class Roulette

    def self.setup_files
        file = File.read("data/buffyroulette.json")
        @episodes = JSON.parse(file)
    end

    def self.return_episode
        setup_files
        episode_hash = @episodes.to_a.sample.to_h
        episode = episode_hash["episode"]
        season = episode_hash["season"]
        name = episode_hash["name"]
        synopsis = episode_hash["synopsis"]
        puts "You should watch Season #{season}, Epsiode #{episode}: #{name} - #{synopsis}"
    end
end
