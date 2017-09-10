//
//  TimerViewController.swift
//  FunnyNumber
//
//  Created by Sunisa Kirtsopa on 9/10/2560 BE.
//  Copyright © 2560 oramon. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    //Expllicit
    
    var numberAInt: Int = 1
    var objTimer = Timer()
    
    
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func playButtom(_ sender: Any) {
            print("Click Play")
        objTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.playTime), userInfo: nil, repeats: true)
    
    }
    
    func playTime() -> Void {
        numberAInt += 1  // java  numberAInt++
        numberLabel.text = String(numberAInt)
    }
    
    
    @IBAction func stopButtom(_ sender: Any) {
            print("Click Stop")
            objTimer.invalidate()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
