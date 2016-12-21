//
//  PlaySongVC.swift
//  workingwithsegues
//
//  Created by AKIL KUMAR THOTA on 12/21/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var SongLbl: UILabel!
    
    
    @IBOutlet weak var lbldispsong: UILabel!
    
    var _selectedsong : String!
    
    var selectedsong : String {
        get {
            return _selectedsong
        }set {
            self._selectedsong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red
        lbldispsong.text = selectedsong

    }
    
    @IBAction func backbtnpressd(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }


}
