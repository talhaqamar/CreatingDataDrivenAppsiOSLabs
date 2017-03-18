//
//  ViewController.swift
//  lab3
//
//  Created by Talha Qamar 101013261 on 18/03/17.
//  Copyright © 2017 swiny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var strArray = [String]()
    var path: String?
    var data : String?
    var printed: String = ""
    @IBOutlet weak var textview: UILabel!
    @IBOutlet weak var typelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do
        {
            path = try Bundle.main.path(forResource: "actors" , ofType: "txt")
             data = try String(contentsOfFile: path!,encoding: String.Encoding.utf8)
           // print("text \(text.components(separatedBy: NSCharacterSet.newlines))")
         strArray =  (data?.components(separatedBy: NSCharacterSet.newlines))! //as NSDictionary
           // print("sorted \(strArray.sorted())")
            
         //  print("1 ***  \(strArray.sorted { $0 < $1 })")
         // print("2 *** \(strArray.sorted { $0 > $1 })")
            
        } catch  {
            // other errors
        }

        
        
       
    }
    @IBAction func descending(_ sender: UIButton) {
        printed = ""
        for s in strArray.sorted()
        {
        printed = printed + s + "\n"
            
        }
        textview.text = "\(printed)"
        typelabel.text = "Descending"
        
    }
    @IBAction func ascending(_ sender: UIButton) {
        
        printed = ""
        for s in strArray.sorted(by: { $0 > $1 })
        {
            printed = printed + s + "\n"
            
        }
        textview.text = "\(printed)"
        typelabel.text = "Ascending"
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

