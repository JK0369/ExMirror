//
//  ViewController.swift
//  ExMirror
//
//  Created by 김종권 on 2023/02/05.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let exampleStruct = ExampleStruct()
        let mirror = Mirror(reflecting: exampleStruct)
        print(mirror.subjectType) // ExampleStruct
        print(mirror.displayStyle) // Optional(Swift.Mirror.DisplayStyle.struct)
        print(mirror.children) // AnyCollection<(label: Optional<String>, value: Any)>
        
        mirror.children
            .forEach { child in
                print(child.label, "=", child.value)
                // Optional("name") = jake
                // Optional("innerEnum") = a
            }
    }
}

struct ExampleStruct {
    enum InnerEnum {
        case a
    }
    
    let name = "jake"
    let innerEnum = InnerEnum.a
}
