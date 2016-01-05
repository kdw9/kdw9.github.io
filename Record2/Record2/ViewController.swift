//
//  ViewController.swift
//  Record2
//
//  Created by Keron Williams on 1/3/16.
//  Copyright © 2016 Keron. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    var audioPlayer: AVAudioPlayer?
    var audioRecorder: AVAudioRecorder?
    

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    var recordSettings = [
        AVFormatIDKey: NSNumber(unsignedInt:kAudioFormatAppleLossless),
        AVEncoderAudioQualityKey : AVAudioQuality.Max.rawValue,
        AVEncoderBitRateKey : 320000,
        AVNumberOfChannelsKey: 2,
        AVSampleRateKey : 44100.0
    ]
    
    
    
    do{
    recorder = try AVAudioRecorder(URL: soundFileURL, settings: recordSettings)
    recorder.delegate = self
    recorder.meteringEnabled = true
    recorder.prepareToRecord() // creates/overwrites the file at soundFileURL
    } catch let error as NSError {
    recorder = nil
    print(error.localizedDescription)
    }

    
    @IBAction func recordAudio(sender: AnyObject) {
    }

    @IBAction func playAudio(sender: AnyObject) {
    }

    @IBAction func stopAudio(sender: AnyObject) {
    }
}

