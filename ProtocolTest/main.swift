//
//  main.swift
//  ProtocolTest
//
//  Created by iFlame on 23/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import Foundation

protocol ResonseArrived {
    func resonseArrived(string : String)
}

class NetworkClass {
    
    var delegate : ResonseArrived?
    
    func retiveDataFromUrl(url : String){
        
        //Network Request
        //DidComplete
        delegate?.resonseArrived(string: "")
    }
}

class ViewController : ResonseArrived
{
    func resonseArrived(string: String) {
        print(" ==>> \(string)")
    }

    
    func MakeRequestAction()
    {

        var objNetworkClass = NetworkClass()
        objNetworkClass.delegate = self
        objNetworkClass.retiveDataFromUrl(url: "http://...")
        
    }
}



var objA  = NetworkClass()

var objController  = ViewController()

objController.MakeRequestAction()























