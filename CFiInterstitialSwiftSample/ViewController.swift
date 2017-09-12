//
//  ViewController.swift
//  CFiInterstitialSwiftSample
//
//  Created by Charles on 2017/9/12.
//  Copyright © 2017年 clickforce. All rights reserved.
//

import UIKit
import iMFAD

class ViewController: UIViewController {

    var fullbanner:MFInterstitialView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fullbanner = MFInterstitialView.init();
        fullbanner?.bannerId = "3790";
        fullbanner?.delegate = self;
        fullbanner?.requestFullScreenAD();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:MFInterstitialViewDelegate{
    
    func onRequestItstAdSuccess() {
        
        fullbanner?.show();
    }
}
