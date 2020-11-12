//
//  ViewController.swift
//  
//
//  Created by Mac on 11.11.2020.
//

struct Animation {
    let text: String
    let force: Float
    let duration: Float
}

extension Animation {
    static func getAnimate() -> [Animation] {
        let force = Float.random(in: 0...2)
        let duration = Float.random(in: 0...2)
        let animationTypes = ["morph","flash","squeeze","shake","fall","pop"]
        let animations = [Animation(text: animationTypes.randomElement() ?? "morph",
                                    force: force,
                                    duration: duration)]
        return animations
    }
}






    


