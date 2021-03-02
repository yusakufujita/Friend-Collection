//
//  EditViewController.swift
//  Friend-Collection
//
//  Created by 藤田優作 on 2021/02/28.
//

import UIKit

extension UITextField {

    func cornerRodius(_ r:CGFloat) {

        self.layer.cornerRadius = r

        self.layer.borderWidth = 2.0

        self.layer.borderColor = UIColor.gray.cgColor

        self.clipsToBounds = true

    }

}

 

class EditViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textName.cornerRodius(20)
        
        title = "Friend Collection"
        self.navigationController?.navigationBar.barTintColor = .green
        // Do any additional setup after loading the view.
        
        
    }
    
   
    @IBAction func tapPhoto(_ sender: Any) {
        
        
    }
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

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
