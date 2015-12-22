//
//  ViewController.swift
//  支付宝demos
//
//  Created by 卢洋 on 15/9/6.
//  Copyright (c) 2015年 奈文摩尔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var screenObject=UIScreen.mainScreen().bounds;      //初始化屏幕对象
    var clickBtn:UIButton!;            //点击
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
        clickBtn=UIButton(frame: CGRectMake(10, 100, screenObject.width-20, 40));
        clickBtn.setTitle("链接到支付宝", forState: UIControlState.Normal);
        clickBtn.addTarget(self, action: "clickZFB", forControlEvents: UIControlEvents.TouchUpInside);
        clickBtn.backgroundColor=UIColor.redColor();
        self.view.addSubview(clickBtn);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func clickZFB(){
        print("开始打开");
        AlipayRequestConfig.alipayWithPartner(kPartnerID, seller: kSellerAccount, tradeNO: AlipayToolKit.genTradeNoWithTime(), productName: "测试", productDescription: "测试支付", amount: "0.01", notifyURL: kNotifyURL, itBPay: "30m");
    }
    
}

