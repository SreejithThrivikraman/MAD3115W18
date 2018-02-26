//
//  webkitVC.swift
//  CustomTable
//
//  Created by Sreejith Thrivikraman on 2018-02-26.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit
import WebKit


class webkitVC: UIViewController {

    
    
    
    @IBOutlet weak var webview_disp: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadManualPage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadManualPage()
    {
        let localfilePath = Bundle.main.url(forResource: "pizza", withExtension: "html");
        let myRequest = NSURLRequest(url: localfilePath!);
        webview_disp.load(myRequest as URLRequest);
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
