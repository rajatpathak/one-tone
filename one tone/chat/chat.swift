//
//  chat.swift
//  one tone
//
//  Created by Love on 25/03/18.
//  Copyright © 2018 Love. All rights reserved.
//

import UIKit

class chat: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    @IBOutlet weak var chatTableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var chatData = [ChatStruct]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.chatTableView.delegate = self
        self.chatTableView.dataSource = self
        self.chatTableView.reloadData()
        chatTableView.backgroundView = UIImageView(image: UIImage(named: "chatBack.png"))
        messageTextfield.layer.masksToBounds = true
        messageTextfield.layer.cornerRadius = messageTextfield.frame.height / 2
        messageTextfield.layer.borderColor = UIColor(red: 242.0/255.0, green: 241.0/255.0, blue: 241.0/255.0, alpha: 1.0).cgColor
        messageTextfield.layer.borderWidth = 1.0

        
       
        let object1 = ChatStruct(message: "he wassup dude al good", type: "text", id: "1", imageDp: "beautiful-beauty-dandelion-160699.jpg")
        let object2 = ChatStruct(message: "65b840191f62a53b17700a7d0153aac0--gorgeous-women-beautiful-people.jpg", type: "image", id: "2", imageDp: "")
        let object3 = ChatStruct(message: "he wassup dude al good", type: "text", id: "1", imageDp: "beautiful-beauty-dandelion-160699.jpg")
        
        self.chatTableView.allowsSelection = false
      
        
    
        
        
        self.chatData.append(object1)
        
        
        self.chatData.append(object2)
        
        
        self.chatData.append(object3)
        
        
        
        
        
        print(chatData)
        
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.chatData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if chatData[indexPath.row].id == "1" {
            if chatData[indexPath.row].type == "text"{
               chatTableView.register(UINib(nibName: "ReceiverTextCell", bundle: nil), forCellReuseIdentifier: "ReceiverTextCell")
                
                let cell = chatTableView.dequeueReusableCell(withIdentifier: "ReceiverTextCell", for: indexPath) as! ReceiverTextCell
                cell.senderMessage.text = chatData[indexPath.row].message!
                return cell
            }
            else if chatData[indexPath.row].type == "image"{
                chatTableView.register(UINib(nibName: "ReceiverImageCell", bundle: nil), forCellReuseIdentifier: "reciverImage")
                let cell = chatTableView.dequeueReusableCell(withIdentifier: "reciverImage", for: indexPath) as! reciverImage
                cell.reciverImage.image = UIImage(named: chatData[indexPath.row].message!)
                cell.reciverProfilePic.image = UIImage(named: chatData[indexPath.row].message!)
                return cell
                
            }
            else if chatData[indexPath.row].type == "video"{
                chatTableView.register(UINib(nibName: "ReceiverVideoCell", bundle: nil), forCellReuseIdentifier: "ReceiverVideoCell")
                let cell = chatTableView.dequeueReusableCell(withIdentifier: "ReceiverVideoCell", for: indexPath) as! ReceiverVideoCell
                
                return cell
            }
        }
        else{
            if chatData[indexPath.row].type == "text"{
                chatTableView.register(UINib(nibName: "SenderTextCell", bundle: nil), forCellReuseIdentifier: "SenderTextCell")
                
                let cell = chatTableView.dequeueReusableCell(withIdentifier: "SenderTextCell", for: indexPath) as! SenderTextCell
                cell.recivermessage.text = chatData[indexPath.row].message!
                cell.reciverProfileImage.image = UIImage(named: chatData[indexPath.row].message!)
                return cell
                
            }
            else if chatData[indexPath.row].type == "image"{
                chatTableView.register(UINib(nibName: "SenderImageCell", bundle: nil), forCellReuseIdentifier: "SenderImageCell")
                let cell = chatTableView.dequeueReusableCell(withIdentifier: "SenderImageCell", for: indexPath) as! SenderImageCell
                cell.senderImages.image = UIImage(named: chatData[indexPath.row].message)!
                cell.senderProfilePic.image = UIImage(named: chatData[indexPath.row].message!)
                return cell
                
            }
            else if chatData[indexPath.row].type == "video"{
                chatTableView.register(UINib(nibName: "SenderVideoCell", bundle: nil), forCellReuseIdentifier: "SenderVideoCell")
                let cell = chatTableView.dequeueReusableCell(withIdentifier: "SenderVideoCell", for: indexPath) as! SenderVideoCell
                
                return cell
            }
            
        }
        chatTableView.register(UINib(nibName: "ReceiverTextCell", bundle: nil), forCellReuseIdentifier: "ReceiverTextCell")
        
        let cell = chatTableView.dequeueReusableCell(withIdentifier: "ReceiverTextCell", for: indexPath) as! ReceiverTextCell
        
        return cell
        
    }

    
    
    
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
}
