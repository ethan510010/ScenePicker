//
//  ViewController.swift
//  ScenePicker
//
//  Created by EthanLin on 2017/12/27.
//  Copyright © 2017年 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    func sceneSelected(scene: String) {
        switch scene {
        case "scene1":
            myImageView.image = UIImage(named: "scene1")
        case "scene2":
            myImageView.image = UIImage(named: "scene2")
        case "scene3":
            myImageView.image = UIImage(named: "scene3")
        case "scene4":
            myImageView.image = UIImage(named: "scene4")
        case "scene5":
            myImageView.image = UIImage(named: "scene5")
        case "scene6":
            myImageView.image = UIImage(named: "scene6")
        case "scene7":
            myImageView.image = UIImage(named: "scene7")
        case "scene8":
            myImageView.image = UIImage(named: "scene8")
        case "scene9":
            myImageView.image = UIImage(named: "scene9")
        default:
            myImageView.image = UIImage(named: "scene10")
        }
    }
    

    @IBAction func goView2(_ sender: UIButton) {
        performSegue(withIdentifier: "GoView2", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoView2"{
            if let secondViewController = segue.destination as? SecondViewController{
                secondViewController.delegate = self
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = UIImage(named: "scene1")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

