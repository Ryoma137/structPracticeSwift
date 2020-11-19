//
//  NextViewController.swift
//  StructPractice
//
//  Created by RYOMA ISHIZAKI on 2020/11/18.
//

import UIKit

protocol setOKDelegate{
    
    func setOK(check:Person)
    
}

class NextViewController: UIViewController {

    var person = Person()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    @IBOutlet weak var movieTextField: UITextField!
    
    var setOKDelegate:setOKDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
      
    }
    
    
    @IBAction func doneBtn(_ sender: Any) {
        
        person.name = nameTextField.text!
        person.hobby = hobbyTextField.text!
        person.movie = movieTextField.text!
        setOKDelegate?.setOK(check: person)
        
        //move back to view controller screen
        dismiss(animated: true, completion: nil)
        
        
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
