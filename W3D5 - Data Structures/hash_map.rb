class Map
    def initialize
        @map = []
    end

    def exist?(k)
        @map.each_with_index {|set, i| return i if set[0] == k }; 'Not found'
    end

    def set(k,v)
        idx = exist?(k)
        idx.is_a?(Integer) ? @map[idx][1] = v : @map.push([k,v])
    end

    def get(k)
        exist?(k).is_a?(Integer) ?  "Key: #{@map[exist?(k)][0]}, Value: #{@map[exist?(k)][1]}" : "Key not found"
    end
    
    def delete(k)
        exist?(k).is_a?(Integer) ?  @map.delete_at(exist?(k)) : "Key not found"
    end

    def show
        @map.each {|set| puts "Key: #{set[0]}, Value: #{set[1]}"}
    end
    
end