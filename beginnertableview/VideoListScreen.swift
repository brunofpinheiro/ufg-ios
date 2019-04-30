import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createArray()
    }
    
    func createArray() -> Void {
        let url = "https://api.myjson.com/bins/ad054"
        let urlObj = URL(string: url)
        
        let task = URLSession.shared.dataTask(with: urlObj!, completionHandler: {
            (data, response, error) in do {
                let produtos: [Video] = try JSONDecoder().decode([Video].self, from: data!)
                self.videos = produtos
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            catch {
                print("Erro ao pegar os produtos. Favor, verificar se a url está correta.")
            }
        })
        task.resume()
    }
}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
}
