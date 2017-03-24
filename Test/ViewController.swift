//
//  ViewController.swift
//  Test
//
//  Created by Zzcz on 2017/3/23.
//  Copyright © 2017年 fly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cireView = FFView.init(frame: CGRect(x:10.0,y:10.0,width : 100.0,height : 100.0))//.newAutoLayoutView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
           creatCire()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func creatCire(){
        self.view.addSubview(cireView)
        self.cireView.value = 2
        self.cireView.maximumValue = 100
        self.cireView.backgroundColor = UIColor.yellow
        self.cireView.frame = CGRect(x:100, y:100, width:100,height: 100)
        wangmumu()
    }
    func wangmumu(){
        
        self.cireView.value += 2
        
        if self.cireView.value == 90 {return}
        
        self.perform(#selector(ViewController.wangmumu), with: self, afterDelay: 0.2)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

