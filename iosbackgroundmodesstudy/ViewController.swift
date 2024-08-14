//
//  ViewController.swift
//  iosbackgroundmodesstudy
//
//  Created by kenan on 13.08.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    @IBAction func pause(_ sender: UIButton) {
        audioPlayer.pause()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let path = Bundle.main.path(forResource: "music", ofType: ".mp3")
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: path!))
            audioPlayer.prepareToPlay()
        }catch{
            print(error.localizedDescription)
        }
    }


}

