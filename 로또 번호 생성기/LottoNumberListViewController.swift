//
//  LottoNumberListViewController.swift
//  로또 번호 생성기
//
//  Created by 김동욱 on 2022/01/29.
//

//객체 끼리 메세지를 주고받는법

import UIKit

class LottoNumberListViewController: UIViewController {
    
    @IBOutlet weak var numberListLable: UILabel!

    @IBAction func touchUpDismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
//    func listView() {
//        for index in asd.lottoData.keys {
//            guard let data = asd.lottoData[index] else { return }
//            asd.createdNumValueLable.text = "\(data)"
//        }
//    }
    
}
