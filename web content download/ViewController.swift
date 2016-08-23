//
//  ViewController.swift
//  web content download
//
//  Created by 李宝明 on 16/8/23.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
      //  if let url = URL(string: "https://www.apple.com") {
            
     //       webview.loadRequest(URLRequest(url: url))
            
      //  }
        
        if let url = URL(string: "http://stackoverflow.com") {
            
            let request = URLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request) {
                data, response, error in
                
                if error != nil {
                    print(error)
                }else {
                    if let unwrappedData = data {
                        
                        let dataStr = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataStr)
                        
                        DispatchQueue.main.sync {
                            
                        }
                    }
                
                }
            }
            
            task.resume()
          
           
        }
        
        
        
    }



}

