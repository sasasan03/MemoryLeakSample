//
//  ViewController.swift
//  MemoryLeakSample
//
//  Created by sako0602 on 2023/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tappedButton(_ sender: UIButton) {
        var a = A()
        var b = B()
        a.b = b
        b.a = a
//        let vc = UIViewController()
//        present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

class A {
    var b: B?
    
    deinit {
        print("Aが解放")
    }
}

class B {
    
    var a: A?
    
    deinit {
        print("Bが解放")
    }
}


//class A {
//    var b: B?
//
//    deinit {
//        print("Aが解放")
//    }
//}
//
//class B {
//
//    var a: A?
//
//    deinit {
//        print("Bが解放")
//    }
//}
