//
//  ViewController.swift
//  notificationAndObserver
//
//  Created by mac on 13/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var soulLabel: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(rebelAction(notification:)), name: .rebel, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(imperial(notification:)), name: .imperial, object: nil)
        }
    
    @objc func rebelAction(notification: Notification) {
        answerLabel.text = "Dark Awakens"
        imageView.image = #imageLiteral(resourceName: "vader")
        soulLabel.backgroundColor = .black
    }
    
    @objc func imperial(notification: Notification) {
        answerLabel.text = "Force Awakens"
        imageView.image = #imageLiteral(resourceName: "luke")
        soulLabel.backgroundColor = .cyan
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func chooseASideButton(_ sender: Any) {
        let secondViewController: secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "second") as! secondViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}

extension Notification.Name {
    static let rebel = Notification.Name("rebel")
    static let imperial = Notification.Name("imperial")
}
