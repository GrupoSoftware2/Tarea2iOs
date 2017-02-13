//
//  SelectModulesViewController.swift
//  Tarea2
//
//  Created by Jorge Luis Limo Arispe on 12/02/17.
//  Copyright © 2017 Jose Romero Quiroz. All rights reserved.
//

import UIKit

class SelectModulesViewController: UIViewController {

    @IBOutlet weak var swMod1: UISwitch!
    @IBOutlet weak var swMod2: UISwitch!
    @IBOutlet weak var swMod3: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        let swModulo1 = swMod1.isOn
        let swModulo2 = swMod2.isOn
        let swModulo3 = swMod3.isOn
        
        var outputResult:String = ""
        var outputImgResult:String = ""
        
        if( swModulo1 && swModulo2 && swModulo3){
            // 100%
            outputResult = "Curso Completado al 100%"
            outputImgResult = "aprobado"
        }else if(!swModulo1 && !swModulo2 && !swModulo3){
            //0&
            outputResult = "Curso Completado al 0%"
            outputImgResult="desaprobado"
        }else if( (swModulo1 && !swModulo2 && !swModulo3) || (swModulo2 && !swModulo1 && !swModulo3) || (swModulo3 && !swModulo1 && !swModulo2)){
         //33.33%
            outputResult = "Curso Completado al 33.33%"
            outputImgResult = "desaprobado"
        }else{
            //66,66
            outputResult = "Curso Completado al 66.66%"
            outputImgResult="aprobado"
        }
        
        let resultViewController:ResultModulesViewController = segue.destination as! ResultModulesViewController
        
        resultViewController.result = outputResult
        resultViewController.setImgResult = outputImgResult
        
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
