//
//  ViewController.swift
//  StructPractice
//
//  Created by RYOMA ISHIZAKI on 2020/11/18.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource, setOKDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var person = Person()
    var personArray = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return personArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let userNameLabel = cell.contentView.viewWithTag(1) as! UILabel
        let userHobbyLabel = cell.contentView.viewWithTag(2) as! UILabel
        let userMovieLabel = cell.contentView.viewWithTag(3) as! UILabel
        
        
        userNameLabel.text = personArray[indexPath.row].name
        userHobbyLabel.text = personArray[indexPath.row].hobby
        userMovieLabel.text = personArray[indexPath.row].movie
        
        
        
        return cell
        
    }
    
    //numberOfSectuions always return 1
    //Automatically called numberOfSections and heightForRowAt functions once the tableView reloaded
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
    
    }
    
    
    
    @IBAction func addFavourite(_ sender: Any) {
        
        //change the screen
        performSegue(withIdentifier: "next", sender: nil)
        
        
    }
    
   
    func setOK(check: Person) {
        personArray.append(check)  //append(check) as the value goes into check
        tableView.reloadData()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next"{
            
            let nextVC = segue.destination  as! NextViewController
            nextVC.setOKDelegate = self
            
        }
        
        
    }
    
    
    
    
    


}

