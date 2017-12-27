//
//  SecondViewController.swift
//  ScenePicker
//
//  Created by EthanLin on 2017/12/27.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit


protocol SecondViewControllerDelegate {
    func sceneSelected(scene:String)
    
}

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    //
    
    var delegate:SecondViewControllerDelegate?
    
    // Pickerview的部分
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sceneArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sceneArray[row]
    }
    
    var sceneArray = ["scene1","scene2","scene3","scene4","scene5","scene6","scene7","scene8","scene9","scene10"]

    @IBOutlet weak var myPickerView: UIPickerView!
    
    
    @IBAction func backtoView1(_ sender: UIButton) {
//        print("did tap back")
//        self.navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        let sceneNumber = myPickerView.selectedRow(inComponent: 0)
        let sceneTitle = sceneArray[sceneNumber]
        
        delegate?.sceneSelected(scene: sceneTitle)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.delegate = self
        myPickerView.dataSource = self
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
