//
//  ViewController.swift
//  SetDate2
//
//  Created by Hasan Ali on 7.03.2020.
//  Copyright © 2020 Hasan Ali Şişeci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdayText: UITextField!
    
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Text field'daki yazıyı ortalıyoruz.
        birthdayText.textAlignment = .center
        
        createDatePicker()
    }
    
    func createDatePicker() {
        
        //DatePicker'da oluşan tarihi textfield'a kaydetmek için kullancağımız butonu koyacağımız barı oluşturuyoruz.
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //Barda bulunacak butonu oluşturduk.
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: #selector(doneButtonClicked))
        toolbar.setItems([doneButton], animated: true)
        
        //inputAccessoryView : Text field için sistem tarafından sunulan klavyeye aksesuar görünümü eklemek için kullanıyoruz. Bizde butonumuz için bir toolbar ekliyoruz.
        birthdayText.inputAccessoryView = toolbar
        
        //inputAccessoryView : Text field için sistem tarafından sunulan klavyenin yerini alacak bir görünüm eklemek için kullanıyoruz. Bizde klavye yerine datePicker kullanıyoruz.
        birthdayText.inputView = datePicker
        
        //DatePicker'ımızın modunu belirliyor. Tarih, saat, zamanlayıcı gibi.
        datePicker.datePickerMode = .date
    }
    
    @objc func doneButtonClicked() {
        
        //Yazdıracağımız tarihin formatını belirliyoruz.
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        //Text field'a date picker'dan gelen değeri yazdırıyoruz.
        birthdayText.text = formatter.string(from: datePicker.date)
        
        //Done butonuna bastıktan sonra klavyemizin kapanacağını söylüyruz.
        self.view.endEditing(true)
    }

}

