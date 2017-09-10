//
//  CountViewController.swift
//  FunnyNumber
//
//  Created by Sunisa Kirtsopa on 9/10/2560 BE.
//  Copyright © 2560 oramon. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {
  
    //----------
    //Expllicit
    
    var objTimer = Timer()
    var myConstant = MyConstant()
    var numberAInt: Int = 0
    
    var myConstantClass = MyConstant()
    
    func playTime() -> Void {
        //numberAInt = 1
        numberAInt += 1

        if (numberAInt == myConstantClass.numberStrings.count)
        {
            numberAInt = 0
        }
        textCount.text = myConstantClass.numberStrings[numberAInt]
    }

    //----------
    
    @IBAction func countButton(_ sender: Any) {
        print("Click Play")
        objTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.playTime), userInfo: nil, repeats: true)
        
  
    }
    
    @IBAction func stopCount(_ sender: Any) {
         objTimer.invalidate()
    }

    @IBOutlet weak var textCount: UILabel!
    
    
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
