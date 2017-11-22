//
//  ViewController.swift
//  PickerView
//
//  Created by 407-24 on 2017. 9. 27..
//  Copyright © 2017년 Jinuk Ha. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate {
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 2
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    var imageArray = [UIImage?]()
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0 ..< MAX_ARRAY_NUM{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileName[0]
        ImageView.image = imageArray[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(_ pickerView: UIPickerView!) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    func pickerView(_ pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x:0, y:0, width: 100, height: 150)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
//        lblImageFileName.text = imageFileName[row]
//        ImageView.image = imageArray[row]
        if(component == 0){
            lblImageFileName.text = imageFileName[row]
        }else{
            ImageView.image = imageArray[row]
        }
        
        //3개짜리
//        if(component == 0){
//            lblImageFileName.text = imageFileName[row]
//        }else if(component == 1){
//            ImageView.image = imageArray[row]
//        }else{
//            if(row%2 == 0){
//                view.backgroundColor = UIColor.white
//            }else{
//                view.backgroundColor = UIColor.blue
//            }
//        }
    }
    
}

