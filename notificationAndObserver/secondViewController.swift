//
//  secondViewController.swift
//  notificationAndObserver
//
//  Created by mac on 13/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func rebelButton(_ sender: Any) {
        NotificationCenter.default.post(name: .rebel, object: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func imperialButton(_ sender: Any) {
        NotificationCenter.default.post(name: .imperial, object: nil)
        self.navigationController?.popViewController(animated: true)
    }
}
