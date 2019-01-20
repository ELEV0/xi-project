//
//  ViewController.swift
//  xi project
//
//  Created by Admin on 15.01.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    

    @IBOutlet weak var contentView: MyView! {
        didSet {
            contentView.isHidden = true
        }
    }

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func alertAction(_ sender: UIButton) {
        contentView.label.text = "Свободных парковок сегодня нет, но возможно будут завтра. Если что приезжайте в наш торговый центр на метро."
        contentView.isHidden = false
        contentView.alpha = 0.7
        contentView.alertView.alpha = 1
        speak(text: "Свободных парковок сегодня нет, но возможно будут завтра. Если что приезжайте в наш торговый центр на метро.")
    }
    
    
   
    
    func speak(text: String) {
        let speechSynthesizer = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: text)
        utterance.pitchMultiplier = 1
        utterance.rate = AVSpeechUtteranceDefaultSpeechRate
        utterance.volume = 1
        utterance.voice = AVSpeechSynthesisVoice.speechVoices().randomElement() // Тут ты можешь выбрать проиграеваемый голос
        utterance.voice = AVSpeechSynthesisVoice(language: "Ru_ru")
        speechSynthesizer.speak(utterance)
    }
    
    
}

