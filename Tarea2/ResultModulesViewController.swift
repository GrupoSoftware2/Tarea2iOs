//
//  ResultModulesViewController.swift
//  Tarea2
//
//  Created by Jorge Luis Limo Arispe on 12/02/17.
//  Copyright © 2017 Jose Romero Quiroz. All rights reserved.
//

import UIKit

class ResultModulesViewController: UIViewController {

    
    var result:String = ""
    var setImgResult:String = ""
    
    @IBOutlet weak var lblresult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblresult.text=result
        imgResult.image = UIImage(named: setImgResult)
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
