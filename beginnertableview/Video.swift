import Foundation
import UIKit

class Video : Decodable {
    
    var thumbnail: String
    var title: String
    
    init(image: String, title: String) {
        self.thumbnail = image
        self.title = title
    }
    
    func setImage(url: String) -> UIImage {
        let url = URL(string: url)
        let data = try? Data(contentsOf: url!)
        return UIImage(data: data!)!
    }
}
