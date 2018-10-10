//
//  ViewController.swift
//  InternetConnectivity
//
//  Created by AFFIXUS IMAC1 on 4/5/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit
import JSSAlertView
import TTGSnackbar

class ViewController: UIViewController {

    var reachability: Reachability?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.reachability = Reachability.init()
 
    }
    
  
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            if ((self.reachability!.connection) != .none){
                
            }else{
//                let snackbar = TTGSnackbar(message: "No Internet Connectivity",
//                                           duration: .middle,
//                                           actionText: "Retry",
//                                           actionBlock: { (snackbar) in
//                                            print("Click action!")
//                })
//                snackbar.show()
                let snackbar = TTGSnackbar(message: "TTGSnackbar !",
                                           duration: .forever,
                                           actionText: "Action",
                                           actionBlock: { (snackbar) in
                                            print("Click action!")
                                            // Dismiss manually after 3 seconds
                                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(4 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)) {
                                                snackbar.dismiss()
                                            }
                })
                snackbar.show()
            }
        
    }
    
  
}


