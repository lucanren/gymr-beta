//
//  ViewController.swift
//  GYMR
//
//  Created by Isaac Liu on 9/16/22.
//

import UIKit
import AVFoundation
import AVKit

let defaults = UserDefaults.standard

class ViewController: UIViewController {
    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaults.set(0, forKey:"Points")
        defaults.set(1,forKey: "Level")
    }
    
    
    @IBAction func plus(_ sender: Any) {
        defaults.set(5, forKey:"Points")
        counter.text = "\(defaults.integer(forKey:"Points"))"
    }
    
    //I counter
    @IBOutlet weak var icounter: UILabel!
    var icount = 0
    
    //I1
    @IBOutlet weak var inter1: UIButton!
    @IBAction func switch1(_ sender: UISwitch) {
        if sender.isOn{
            icount+=25
            inter1.backgroundColor=UIColor(red: 84/255,green: 212/255, blue: 97/255,alpha: 1)        }
        else{
            icount-=25
            inter1.backgroundColor=UIColor.black
        }
        icounter.text = "\(icount)"
    }
    
    //I2
    @IBOutlet weak var inter2: UIButton!
    @IBAction func switch2(_ sender: UISwitch) {
        if sender.isOn{
            icount+=10
            inter2.backgroundColor=UIColor(red: 84/255,green: 212/255, blue: 97/255,alpha: 1)        }
        else{
            icount-=10
            inter2.backgroundColor=UIColor.black
        }
        icounter.text = "\(icount)"
    }
    //I3
    @IBOutlet weak var inter3: UIButton!
    @IBAction func switch3(_ sender: UISwitch) {
        if sender.isOn{
            icount+=10
            inter3.backgroundColor=UIColor(red: 84/255,green: 212/255, blue: 97/255,alpha: 1)        }
        else{
            icount-=10
            inter3.backgroundColor=UIColor.black
        }
        icounter.text = "\(icount)"
    }
    //I4
    @IBOutlet weak var inter4: UIButton!
    @IBAction func switch4(_ sender: UISwitch) {
        if sender.isOn{
            icount+=10
            inter4.backgroundColor=UIColor(red: 84/255,green: 212/255, blue: 97/255,alpha: 1)        }
        else{
            icount-=10
            inter4.backgroundColor=UIColor.black
        }
        icounter.text = "\(icount)"
    }
}
