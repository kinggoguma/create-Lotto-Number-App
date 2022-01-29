//
//  ViewController.swift
//  로또 번호 생성기
//
//  Created by 김동욱 on 2022/01/28.
//

import UIKit

class ViewController: UIViewController {
    var lottoData: [Int: Set<Int>] = [:]
    var winningLottoNumber: Set<Int> = Set<Int>()
    var makeRandomNumberCount: Int = 1
    var countWeekNumber: String = ""
   
    @IBOutlet weak var createdNumValueLable: UILabel!
    
    override func viewDidLoad() {
//        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    
    func reset() {
        winningLottoNumber.removeAll()
        createdNumValueLable.text = "Create LoTTo Number!"
    }
    
    @IBAction func hitRandomNumber() {
        makeRandomNumberCountUp()
        saveDictionary(key: makeRandomNumberCount, value: winningLottoNumber)
        createdNumValueLable.text = winningLottoNumber.map({ (number: Int) -> String in return "\(number)"}).joined(separator: ", ")
    }
    
    func makeRandomNum() {
        winningLottoNumber.removeAll()
        while winningLottoNumber.count < 6 {
            winningLottoNumber.insert(Int.random(in: 1...45))
        }
    }
    
    func makeRandomNumberCountUp(){
        makeRandomNum()
        makeRandomNumberCount += 1
    }
    
    func saveDictionary (key: Int, value : Set<Int> ){
        countWeekNumber = "\(makeRandomNumberCount)회차"
        lottoData.updateValue(value, forKey: key)
    }
    
}

