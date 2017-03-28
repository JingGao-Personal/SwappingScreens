//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Jing Gao on 28/3/17.
//  Copyright © 2017 Jing Gao. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        
        let sontTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: sontTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song
                
            }
        }
    }
    
}
