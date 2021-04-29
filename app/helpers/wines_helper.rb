module WinesHelper
    def sort_strains(wine_strains)
       wine_strains.sort.map{|ws| [ws.strain.name, ws.percentage]}
                   .map {|ws| "#{ws.first} (#{ws.second}%)"}
                   .sort
                   .join( ', ')
   
    end
end
