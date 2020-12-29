//
//  DetailViewController.swift
//  Tutorial-101
//
//  Created by Supawit Ruen on 17/12/2563 BE.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var goBackButton: UIButton!
    
    @IBOutlet weak var rootButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onClickBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func onClickRoot(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
