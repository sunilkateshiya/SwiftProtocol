//
//  main.swift
//  ProtocolTest
//
//  Created by iFlame on 23/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import Foundation

protocol getMessageDelegate {
    func getMessage(string : String)
}

class classA : getMessageDelegate{
    
    func getMessage(string: String) {
        
        print("Class A === >> \(string)")
        
    }
}

class classB
{
    var delegate : getMessageDelegate?
    
    func MakeAction()
    {
        self.delegate?.getMessage(string: "Hello from B")
    }
}

class classC
{
    var delegate : getMessageDelegate?
    
    func MakeAction()
    {
        self.delegate?.getMessage(string: "Hello from C")
    }
    
}

class classD
{
    var delegate : getMessageDelegate?
    
    func MakeAction()
    {
        self.delegate?.getMessage(string: "Hello from D")
    }
    
}
