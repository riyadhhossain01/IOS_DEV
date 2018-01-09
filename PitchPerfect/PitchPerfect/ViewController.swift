//
//  ViewController.swift
//  PitchPerfect
//
//  Created by riyadh hossain on 12/29/17.
//  Copyright © 2017 udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var recordinglabel: UILabel!
    @IBOutlet var recordButton: UIButton!
    @IBOutlet var stopRecording: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecording.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear called")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

    
    @IBAction func recordaudio(_ sender: Any) {
    
    
        recordinglabel.text = "Recording in Progress"
        stopRecording.isEnabled = true
        recordButton.isEnabled = false
    
    }

    @IBAction func StopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        stopRecording.isEnabled = false
        recordinglabel.text = "Tap to Record"
        
    }
}

