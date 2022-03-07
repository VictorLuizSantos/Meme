//  ViewController.swift
//
//  Exercício MemeMaker
//
//  Created by Victor Luiz on 04/03/22, Swift explorations - Instituto Eldorado.
//  Copyright © 2022 Victor Luiz. All rights reserved.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Oi,tudobem
        
        topSegControl.removeAllSegments()
        
        // colocar os emojis em cada index do segmento
        
        for choice in topChoice {
            topSegControl.insertSegment(withTitle: choice.emoji, at: topChoice.count, animated: false)
        }
        
        // startar os primeiros segmentos quando a imagem for carregada
        
        topSegControl.selectedSegmentIndex = 0
        bottomSegControl.selectedSegmentIndex = 0
        topMeme()
        bottomMeme()
        // Do any additional setup after loading the view.
    }	
    @IBOutlet weak var topSegControl: UISegmentedControl!
    
    @IBOutlet weak var bottomSegControl: UISegmentedControl!
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBAction func topSegController(_ sender: UISegmentedControl) {
        topMeme()
    }
    
    @IBAction func bottomSegController(_ sender: UISegmentedControl) {
        bottomMeme()
    }
    
    // Vetores com os emojis e legendas superior e inferior
    
    let topChoice: [CaptionOption] = [
        CaptionOption(emoji: "🏃🏻", legenda: "Atividade física é..."),
        CaptionOption(emoji: "🏃🏻", legenda: "Acordar cedo é assim"),
        CaptionOption(emoji: "🍽", legenda: "Lavar prato gorduroso é...")
    ]
        
    let bottomChoice = [
        CaptionOption(emoji: "😒", legenda: "Chato igual você"),
        CaptionOption(emoji: "😠", legenda: "Irritante"),
        CaptionOption(emoji: "🥵", legenda: "Uma penitência")
    ]
   
    // Função para mudar o texto conforme o segmento selecionado
    
    func topMeme () {

        if topSegControl.selectedSegmentIndex == 0 {
            topLabel.text = topChoice[0].legenda
        }
        else if topSegControl.selectedSegmentIndex == 1 {
            topLabel.text = topChoice[1].legenda
        }
        else if topSegControl.selectedSegmentIndex == 2 {
            topLabel.text = topChoice[2].legenda
        }
       else {
           topLabel.text = "error"
       }
    }
    func bottomMeme () {
        if bottomSegControl.selectedSegmentIndex == 0 {
            bottomLabel.text = bottomChoice[0].legenda
        }
        else if bottomSegControl.selectedSegmentIndex == 1 {
            bottomLabel.text = bottomChoice[1].legenda
        }
        else if bottomSegControl.selectedSegmentIndex == 2 {
            bottomLabel.text = bottomChoice[2].legenda
        }
        else {
            bottomLabel.text = "error"
        }
    }
}

/*
 switch topSegControl.selectedSegmentIndex {
     case 0:
         topLabel.text = topChoice[0].legenda
     case 1:
         topLabel.text = topChoice[1].legenda
     case 2:
         topLabel.text = topChoice[2].legenda
     default:
        topLabel.text = */
