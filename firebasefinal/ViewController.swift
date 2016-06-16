//
//  ViewController.swift
//  firebasefinal
//
//  Created by Arsalan on 14/06/2016.
//  Copyright © 2016 Arsalan. All rights reserved.
//

import UIKit
import Firebase
import SwiftyJSON





class ViewController: UIViewController {
    
    var ref : FIRDatabaseReference!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
        self.ref = FIRDatabase.database().reference()
       
        // saving value to firebase
        self.ref.child("/truimph/wins").setValue(5)
        
        
     let   refHandle = ref.observeEventType(FIRDataEventType.Value, withBlock: { (snapshot) in
            let postDict = snapshot.value as! [String : AnyObject]
        
        print(postDict)
        let json = JSON(postDict)
        
        let hil = print(json["hillary","wins"])
        
        let tru = print(json["truimph","wins"])
        print("")
        
        
        
        })
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

