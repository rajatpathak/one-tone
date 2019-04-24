

import UIKit


class ScheduleCollectionViewCell: UICollectionViewCell , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    let name = ["Alexa","Alexa","Alexa"]
    let place = ["Barcelona, Spain","London, England","Ankara, Turkey"]
    let pepoleImage = ["Girl-PNG.png","Girl-PNG.png","Girl-PNG.png"]
    let status = ["greenDot.png","","greenDot.png"]

    
    override func awakeFromNib() {
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        tableView.register(UINib(nibName: "scheduleKiNibe", bundle: nil), forCellReuseIdentifier: "scheduleKiNibe")
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleKiNibe", for: indexPath) as! scheduleKiNibe
        cell.messages.text = self.place[indexPath.row]
        cell.namee.text = self.name[indexPath.row]
        cell.images.image = UIImage(named: pepoleImage[indexPath.row])
        cell.stat.image = UIImage(named: status[indexPath.row])
        return cell
        
        
        
    }
    
   }
