import Firebase


enum Season {
    case summer, winter
}

enum ItemType {
    case top, bottom
}


class Item {
    
    var imageName: String
    var season: Season
    
    //pass these into the init statement...
    var minTemp = 5.0
    var maxTemp = 15.0
    var type: ItemType
    
    var image: UIImage {
        return UIImage(named: imageName)!
    }
    
    init(imageName: String, season: Season, type: ItemType) {
        self.imageName = imageName
        self.season = season
        self.type = type
        
    }
    
}
