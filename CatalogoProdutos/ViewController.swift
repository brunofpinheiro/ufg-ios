//
//  ViewController.swift
//  CatalogoProdutos
//
//  Created by Aluno on 06/04/2019.
//  Copyright © 2019 Aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vrImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        preencheListaMaisVendidos()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func preencheListaMaisVendidos() {
        vrImageView.image = UIImage(named: "hp1")
    }


}

