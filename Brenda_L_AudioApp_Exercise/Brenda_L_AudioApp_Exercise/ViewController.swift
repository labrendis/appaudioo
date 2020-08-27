//
//  ViewController.swift
//  Brenda_L_AudioApp_Exercise
//
//  Created by Brenda Leyva on 8/26/20.
//  Copyright © 2020 Brenda Leyva. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let sound = Bundle.main.path(forResource: "sunflowerr", ofType:"alff")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf:
                URL(fileURLWithPath: sound!))
        } catch {
            print(error)
    }
}

    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
}
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
}
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
}
    
    
    
    
}
