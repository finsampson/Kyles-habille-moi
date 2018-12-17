import Foundation

class ItemManager {
    
    var items = [Item]()
    
    init(){
    
        let a = Item(imageName: "SummerTop-1.jpg", season: .winter, type: .top)
        items.append(a)
        
        let b = Item(imageName: "SummerTop-1.jpg", season: .winter, type: .bottom)
        items.append(b)
        
        
    }
    
    
    
    func filer(type: ItemType, season: Season) -> Item {
        var filteredList = items
        
        filteredList = filteredList.filter { item -> Bool in
            item.type == type && item.season == season
        }
        
        return filteredList.randomElement()!
        
    }
    
}
