//
//  ResultListasViewController.swift
//  Tarea2
//
//  Created by Jorge Luis Limo Arispe on 13/02/17.
//  Copyright © 2017 Jose Romero Quiroz. All rights reserved.
//

import UIKit

class ResultListasViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    var result:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text=result

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRegresarTouch(_ sender: UIButton) {
        self.dismiss(animated: true) {
            
        }    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
