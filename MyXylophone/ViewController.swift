//
//  ViewController.swift
//  MyXylophone
//
//  Created by Dmitrii Nazarov on 07.04.2023.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(soundName: (sender.titleLabel?.text)!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              sender.alpha = 1.0
          }
        
    }
    
    
    
    
    
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

