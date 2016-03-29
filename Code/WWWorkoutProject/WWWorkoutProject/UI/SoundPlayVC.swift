//
//  SoundPlayVC.swift
//  WWWorkoutProject
//
//  Created by epailive on 16/3/29.
//  Copyright © 2016年 我就是大强. All rights reserved.
//

import UIKit
import AVFoundation

class SoundPlayVC: UIViewController {

    let sysnth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func btnSoundClicked(sender: UIButton) {
        
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.3
        //设置播放的语言类型
        myUtterance.voice = AVSpeechSynthesisVoice(language: "zh-cn")
        sysnth.speakUtterance(myUtterance)
        
        
    }
}
