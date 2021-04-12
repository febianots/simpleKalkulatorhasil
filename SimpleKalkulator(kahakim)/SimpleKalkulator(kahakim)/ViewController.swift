//
//  ViewController.swift
//  SimpleKalkulator(kahakim)
//
//  Created by MAC on 25/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var Hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmetik: "+")
    }
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmetik: "-")
    }
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(aritmetik: "x")
    }
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(aritmetik: ":")
    }
    
    func hitung(aritmetik: String) {
        if textField1.text == "" || textField2.text == ""{
            Hasil.text = "kolom tidak boleh kosong"
        }else{
            let input1 = Double(textField1.text!)
            let input2 = Double(textField2.text!)
            var hasil : Double?
            
            switch aritmetik {
            case "+": hasil = input1! + input2!
            case "-": hasil = input1! - input2!
            case "x": hasil = input1! * input2!
            case ":": hasil = input1! / input2!
            default:
                break
            }
            Hasil.text = String(hasil!)
        }
    }
}

