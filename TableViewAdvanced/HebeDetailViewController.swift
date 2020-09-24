//
//  HebeDetailViewController.swift
//  TableViewBasic
//
//  Created by Yida on 2020/9/22.
//  Copyright © 2020 Yida. All rights reserved.
//

import UIKit

class HebeDetailViewController: UIViewController {
    
    var hebeMusic:HebeMusic!
    var hebeMovie:HebeMovie!
    var type:Type!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imabeView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch type {
        case .music:
            label.text = hebeMusic.name
            imabeView.image = UIImage(named: hebeMusic.imageName)
            textView.text = hebeMusic.lyric
        case .movie:
            label.text = hebeMovie.name
            imabeView.image = UIImage(named: hebeMovie.imageName)
            textView.text = hebeMovie.intro
        case .none:
            break
        }
                                
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
