//
//  ViewController.swift
//  VoiceRecording
//
//  Created by Keron Williams on 1/3/16.
//  Copyright © 2016 Keron. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate
{
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    var soundRecorder = AVAudioRecorder()
    var soundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpRecord()
    {
        var recordSettings = [AVFormatIDKey : Int(kAudioFormatAppleLossless),
            AVEncoderAudioQualityKey : AVAudioQuality.Max.rawValue,
            AVEncoderBitRateKey : 320000,
            AVNumberOfChannelsKey : 2,
            AVSampleRateKey : 4100.0 ]
        
        var error : NSError?
        
        soundRecorder = AVAudioRecorder(URL: <#T##NSURL#>, settings: <#T##[String : AnyObject]#>)
    }
    
    func getCacheDirectory() -> String{
    
        let path = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true) as! [String]
        return paths[0]
    }
    
    
    func getFileURL() -> NSURL{
        let path = getCacheDirectory().stringBYAppending(<#T##aString: String##String#>
    
    }
  
    @IBAction func recordVoice(sender: AnyObject) {
    }
    
    @IBAction func playVoice(sender: AnyObject) {
    }
    
}