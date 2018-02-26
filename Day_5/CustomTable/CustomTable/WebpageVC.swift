//
//  WebpageVC.swift
//  CustomTable
//
//  Created by Sreejith Thrivikraman on 2018-02-26.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit

class WebpageVC: UIViewController
{
    
@IBOutlet weak var WebPage_view: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     // loadWebpage()
        loadManualPage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    func loadWebpage()
    {
        let url = NSURL (string: "https://www.google.com");
        let requestObj = NSURLRequest(url : url! as URL);
        WebPage_view.loadRequest(requestObj as URLRequest)
    }
    
    func loadManualPage()
    {
        let localfilePath = Bundle.main.url(forResource: "pizza", withExtension: "html");
        let myRequest = NSURLRequest(url: localfilePath!);
        WebPage_view.loadRequest(myRequest as URLRequest);
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
