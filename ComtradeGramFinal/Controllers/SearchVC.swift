//
//  SearchVC.swift
//  SearchVC
//
//  Created by Marija Grujic on 1/16/18.
//  Copyright © 2018 Marija Grujic. All rights reserved.
// 
import UIKit


class SearchVC: UIViewController, UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate {
    
    let posts = [1,2,3,4,5,6,7,8]
   
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        parseData()

      view.backgroundColor = UIColor.red
        
        searchBar.barTintColor = UIColor.white
        searchBar.backgroundColor = UIColor.white
        searchBar.layer.cornerRadius = 8
        searchBar.layer.borderWidth = 5
        searchBar.layer.borderColor = UIColor.red.cgColor
       
        
       
   
       
    }
    
    //func parseData (){
        
        //let url = "https://restcountries.eu/rest/v1/all"
        //var request = URLRequest(url:URL(string:url)!)
        //request.httpMethod = "GET"
        //let configuration = URLSessionConfiguration.default
        //let session = URLSession(configuration:configuration,delegate:nil,delegateQueue: OperationQueue.main)
        
       // let task = session.dataTask(with: request){(data,response,error) in
            //if (error != nil){
       // print("Error")
           // }
           // else{
                
             //   do{
                  //  let fetchedData = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! NSArray
              //  }
                //catch  {
                    
                //    print("Error2")
             //  }
          //  }
            
            
            
       // }
      //  task.resume()
   // }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SearchTableViewCell else {
            fatalError("error")
        }
        
        cell.profilePhoto.layer.cornerRadius = (cell.profilePhoto.frame.width) / 2
        cell.layer.cornerRadius = 6
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.red.cgColor
        
        cell.separatorInset = UIEdgeInsetsMake(-30, 0, 0, 0);
        cell.layer.borderWidth = 4
        cell.layer.borderColor = UIColor.red.cgColor
    return cell
        
        
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar .resignFirstResponder()
        
        }
    
  
    
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 215
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 12}
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let fView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.tableView.frame.size.width, height: 12))
        fView.backgroundColor = UIColor.clear
        
        return fView
    }
 
   
    @IBAction func openLocation(_ sender: Any) {
        print("Open location")
    }
    
    @IBAction func addFriend(_ sender: Any) {
    print("add Friend")
    }
    
   
  
    
    
}
    

    
    

