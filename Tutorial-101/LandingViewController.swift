//
//  LandingViewController.swift
//  Tutorial-101
//
//  Created by Supawit Ruen on 17/12/2563 BE.
//

import UIKit

class LandingViewController: UIViewController {
//    username
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var detailButton: UIButton!
    @IBOutlet weak var presentDetail: UIButton!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("landing page")
        usernameLabel.text = username
    }
    
    @IBAction func onClickDetail(_ sender: Any) {
        let detailStoryboard = UIStoryboard(name: "Detail", bundle: nil)
        let detailVC = detailStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController

        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    @IBAction func onClickPresentDetail(_ sender: Any) {
        let detailStoryboard = UIStoryboard(name: "Detail", bundle: nil)
        let detailVC = detailStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController

        self.present(detailVC, animated: true, completion: nil)
    }

    @IBAction func onClickBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

