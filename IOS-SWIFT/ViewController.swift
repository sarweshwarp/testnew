//
//  ViewController.swift
//  IOS-SWIFT
//
//  Created by Pro-tek on 16/05/17.
//  Copyright © 2017 Protek. All rights reserved.
//

import UIKit
import Alamofire
import MapKit

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      let location = CLLocationCoordinate2DMake(51.50007773,-0.1246402)
     let spanmake = MKCoordinateSpanMake(0.05, 0.05)
        let regaion = MKCoordinateRegion(center: location,span: spanmake)
        
        self.mapView.setRegion(regaion, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "London"
        annotation.subtitle = "statue"
        self.mapView.addAnnotation(annotation)
        
        let someints = [10, 20 ,30];
        print(someints);
        print(someints[0])
        for element in someints {
        print(element)
        print(element)
        }
        
        var dict:[Int:String] = [1:"one",2:"two",3:"three"]
        print(dict)
        let oldval = dict.updateValue("tw", forKey: 3);
        
        print(oldval)
    

//        let label = UILabel()
//        label.frame = CGRect(x:50,y:100,width:100,height:50)
//        self.view .addSubview(label)
//        label.backgroundColor = UIColor.red
//        
//        let btn  = UIButton(type:UIButtonType.custom) as UIButton
//        btn.backgroundColor = UIColor.red
//        btn.setTitle("button", for: .normal)
//        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
//        btn.frame = CGRect(x:30,y:60,width:120,height:40)
//        self.view .addSubview(btn)
        
//        
//        UIView.beginAnimations(nil, context: nil)
//        UIView.setAnimationDuration(5)
//        UIView.setAnimationCurve(UIViewAnimationCurve.easeIn)
//        let radians = CGFloat(180 * M_PI / 180)
//        self.imagview.transform = CGAffineTransform(rotationAngle: radians)
//        UIView.commitAnimations()
        let  addd  = Addon(id:1,name:"hello",desc:"world",limit:"20000",next:4,aname:"Hello",specialAddon: 1)
        print("id:\(addd.id!)")
        
      
        
        let view = UIView()
        view.backgroundColor = UIColor.red
        self.view.addSubview(view)
        
        var  heightContraints = NSLayoutConstraint(item:view, attribute:
            .height, relatedBy: .equal, toItem: nil,
                     attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0,
                     constant: 70)
        var  widthConstraints = NSLayoutConstraint(item:view,attribute:.width,relatedBy:.equal,toItem:nil,attribute:.notAnAttribute,multiplier: 1.0,
                                                  constant: 320)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([heightContraints,widthConstraints])
        
        let secondView  = UIView()
        secondView.backgroundColor = UIColor.yellow
        self.view.addSubview(secondView)
        
     heightContraints = NSLayoutConstraint(item:view, attribute:
            .height, relatedBy: .equal, toItem: nil,
                     attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0,
                     constant: 70)
        
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print(response.request )  // original URL request
            print(response.response)  // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            print(response.result)
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }

    
        
        
    }
    func clickMe(sender:UIButton!){
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

