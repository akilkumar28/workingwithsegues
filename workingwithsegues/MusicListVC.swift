//
//  MusicListVC.swift
//  workingwithsegues
//
//  Created by AKIL KUMAR THOTA on 12/21/16.
//  Copyright © 2016 AKIL KUMAR THOTA. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    @IBOutlet weak var txtldcontSong: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red

    }

    @IBAction func backbtnPressd(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
  
    @IBAction func PlayPressd(_ sender: Any) {
        
        let SongName = txtldcontSong.text
        
        performSegue(withIdentifier:"PlaySongVC", sender: SongName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedsong = song
            }
        }
        
        
        
    }

}
