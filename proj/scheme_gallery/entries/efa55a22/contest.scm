;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Winton>
;;;
;;; Description:
;;;   <Winton>

(define lines
    (list
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#4a546d" "#242c42" "#21263c" "#282e43" "#32374e" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#252c43" "#252a3f" "#c0c1c9" "#828583" "#313547" "#30364c" "#343a4f" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#2b354c" "#242d41" "#c5c8d5" "#cfd2cf" "#7c7f7c" "#7d8087" "#1f2537" "#1f2636" "#2e344d" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")    
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#2a2e46" "#8d8d94" "#d0d3d9" "#dee1e6" "#c9cad1" "#ccd0d3" "#bbc0c0" "#494e5a" "#2b3149" "#535b69" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#525252" "#2e344b" "#7b838b" "#7a8090" "#545b69" "#535a69" "#646b84" "#424451" "#3d404a" "#41444c" "#282a3d" "#252a3f" "#575659" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#5b5b5d" "#5f5c61" "#21273c" "#8991a3" "#575a71" "#202228" "#727887" "#494b59" "#4d505c" "#1a1d21" "#555764" "#5d6071" "#282934" "#49454b" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#403f42" "#55545b" "#1f273b" "#8b91a9" "#4f556c" "#5e667c" "#8890a3" "#737b91" "#677185" "#565f70" "#6b7588" "#525b66" "#32333d" "#474148" "#aeaeae" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#48484a" "#403c47" "#403c47" "#8d99ac" "#8692aa" "#717b93" "#848ea4" "#7a8296" "#7a8699" "#777f93" "#757d8f" "#6f7984" "#151824" "#3a373a" "#9e9e9e" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#464648" "#332f37" "#282e42" "#7f889a" "#798090" "#8f93a2" "#737a8a" "#4a515e" "#1c212f" "#17192b" "#222431" "#434655" "#1a1c29" "#3d3737" "#8d8b8a" "#b1b1b1" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#a3a3a5" "#c9c9cb" "#343438" "#191e30" "#777d90" "#838da3" "#7f899e" "#656f84" "#5f677b" "#6f778b" "#575f72" "#505666" "#5a606e" "#181b23" "#322f33" "#999795" "#aaaaaa" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#b8b9b6" "#e0e0e0" "#afaeb3" "#7e7f88" "#25273d" "#7e8698" "#788094" "#747c90" "#6c7788" "#646d7f" "#585f6f" "#5a5e6f" "#181821" "#9f9ca0" "#868087" "#a8a7ac" "#b7b4b7" "#c9c8bf" "#98947f" "#c5c2b9" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#a1a19d" "#bcbdb6" "#bdbdb0" "#aeada2" "#a1a19e" "#b6b8bc" "#c2c4c6" "#888d99" "#6e7786" "#57606f" "#5b6474" "#525764" "#626570" "#202128" "#808084" "#a2a2a2" "#acacae" "#d5d5d7" "#dbdbd9" "#d0cfbf" "#b4b1a6" "#938f7f" "#c6c6c6" "#cacacc" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#b8b8ba" "#d3d6d7" "#ced0d1" "#aaa9a2" "#9f9c91" "#9e9d92" "#c6c6c9" "#d0d1d6" "#e0e4e5" "#c6c7cd" "#a2a3a9" "#6c6666" "#605f64" "#76787c" "#919093" "#c0bcc4" "#b4b6b6" "#b2b4b5" "#c7c7c7" "#dcd8d4" "#b8b1a0" "#bdb6a6" "#d8d5c9" "#d7d7d9" "#c6c6c8" "#c4c3c6" "#b6b4a2" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#a59882" "#b9b9bc" "#e0dfe2" "#d5d5d7" "#d3d3d5" "#828177" "#969487" "#a5a4a8" "#d3d5d9" "#e8ebea" "#e4e6e9" "#e2e1d1" "#dbddbd" "#d1d3b3" "#cfcab0" "#c1c3c7" "#bebfc3" "#bbbdbf" "#b1b1b3" "#8f8f93" "#949183" "#9f9784" "#a7a290" "#d6d4cb" "#dcdbde" "#cfcfd1" "#c5c4c7" "#c9c9c9" "#d7d9d9" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    
    (list "#ffffff" "#ffffff" "#b2b1b4" "#d7d6d9" "#e7e6e9" "#e4e3e6" "#c5c5c5" "#a5a5a7" "#7f8076" "#a1a3a5" "#c9cbcf" "#e4e6e7" "#cdced2" "#d5d6c3" "#d6cc67" "#d8d06e" "#b4b49b" "#a4a8ac" "#c1c3c7" "#bbbdbf" "#b0b0b0" "#b9b9bb" "#929287" "#897e6b" "#918674" "#d9d5d4" "#f0f0f0" "#e2e2e2" "#cdcccf" "#ccccce" "#d0d0d2" "#cdcdcd" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    
    (list "#ffffff" "#eaeaea" "#acabb0" "#dddddf" "#e5e5e7" "#d4d4d6" "#bdbdbe" "#b3b3b5" "#161617" "#b4b3b6" "#cdccd3" "#cdccd3" "#252a3f" "#c0c1c9" "#828583" "#b4b3b6" "#cdccd3" "#c4c6ca" "#5f5d60" "#423f44" "#818185" "#3a383a" "#342f31" "#665f52" "#7f7868" "#7f7868" "#b3b2b6" "#dedee0" "#e2e2e2" "#cdcccf" "#ccccce" "#d0d0d2" "#c4c2c4" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#9a9a9a" "#acabb0" "#e7e6ea" "#d3d3d5" "#d0d0d4" "#d0cfd2" "#bebec0" "#161618" "#353235" "#45424a" "#4a474c" "#4d4a50" "#4f4950" "#4d4a4e" "#4b464c" "#454449" "#454449" "#464349" "#434045" "#3f3c42" "#3f3c42" "#c0bdc0" "#9f9f9f" "#312c2b" "#ffffff" "#747166" "#ababaf" "#d4d4d6" "#d3d3d3" "#dfdfdf" "#d5d5d7" "#464349" "#434044" "#444144" "#ffffff")
    
    (list "#ffffff" "#b4b3b8" "#423c43" "#443f45" "#464047" "#464047" "#464047" "#464047" "#464047" "#97969b" "#cdced2" "#48444a" "#4f4952" "#4f4952" "#4a454b" "#4c464c" "#4c464c" "#4a454b" "#464349" "#434045" "#3f3c42" "#3f3c42" "#b9b9bb" "#9f9f9f" "#504e4d" "#ffffff" "#ffffff" "#a09fa2" "#b6b5b8" "#c7c7c9" "#c7c7c9" "#4d4a50" "#4d4a50" "#4d4a50" "#525252" "#ffffff")
    (list "#ffffff" "#484249" "#484249" "#473f47" "#4b4248" "#443f45" "#4a4249" "#4a4249" "#4d474e" "#433e42" "#423d3e" "#39373a" "#403f44" "#4c474d" "#4f4950" "#49444a" "#4e484f" "#444146" "#3a3338" "#3a3338" "#3a3338" "#302e2f" "#2f2d2d" "#2f2d2d" "#2f2d2d" "#ffffff" "#ffffff" "#ffffff" "#aaaaac" "#98989a" "#4d4a50" "#49464b" "#49464b" "#564916" "#49464b" "#ffffff")
    (list "#ffffff" "#484249" "#4f4935" "#473f47" "#4d4349" "#4d4349" "#4d4349" "#443f45" "#443f45" "#423d3e" "#575351" "#878576" "#36302e" "#4c474d" "#4f4950" "#49444a" "#4e484f" "#3a3338" "#4a4249" "#443f44" "#201c1b" "#201c1b" "#3e3c2f" "#7e7c6b" "#2f2d2d" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#49464b" "#4d4a50" "#49464b" "#49464b" "#564916" "#413c43" "#ffffff")
    (list "#ffffff" "#484249" "#d3c44f" "#4b4547" "#4a4249" "#4a4249" "#595752" "#4a4249" "#4a4249" "#595752" "#878576" "#555051" "#777370" "#4c474d" "#4f4950" "#49444a" "#4e484f" "#464349" "#464349" "#4f4950" "#49444a" "#4e484f" "#464349" "#464349" "#2f2d2d" "#ffffff" "#ffffff" "#ffffff" "#4d4a50" "#49464b" "#ccc8c1" "#49464b" "#49464b" "#413c43" "#564916" "#ffffff")
    (list "#ffffff" "#ad9c3b" "#504826" "#554e26" "#4d474d" "#474148" "#2a252a" "#4d474d" "#474148" "#2a252a" "#595752" "#777370" "#4d463e" "#201c1b" "#201c1b" "#4c474d" "#4f4950" "#49444a" "#4e484f" "#4f4950" "#49444a" "#4e484f" "#464349" "#464349" "#d2d3d1" "#d2d3d1" "#ffffff" "#ffffff" "#4d4a50" "#49464b" "#4d4a50" "#49464b" "#49464b" "#413c43" "#413c43" "#ffffff")
    (list "#ffffff" "#4f4129" "#453d3d" "#a08922" "#4d463e" "#504b4d" "#3b363a" "#393436" "#393436" "#393436" "#3c373b" "#1b1b1b" "#1b1b1b" "#201c1b" "#201c1b" "#201c1b" "#464349" "#49444a" "#4e484f" "#49444a" "#4e484f" "#464349" "#464349" "#bbbab3" "#c6c5c1" "#d1d2d0" "#bebec0" "#bebec0" "#b4b3ae" "#807c71" "#4d4a50" "#49464b" "#49464b" "#413c43" "#413c43" "#ffffff")
    (list "#ffffff" "#635a23" "#a58d23" "#443b3a" "#3f3a3f" "#353032" "#2d282c" "#2d282c" "#2d282c" "#2d282c" "#1a1917" "#1b1b1b" "#1b1b1b" "#201c1b" "#201c1b" "#201c1b" "#201c1b" "#1b1b1b" "#201c1b" "#201c1b" "#201c1b" "#201c1b" "#9a958c" "#cac7bd" "#dcdcd3" "#767368" "#a9a59b" "#9f9d90" "#dcdcd3" "#b4b3ae" "#4d4a50" "#49464b" "#49464b" "#413c43" "#ffffff" "#ffffff")
    (list "#ffffff" "#4f3f22" "#403935" "#685b2e" "#342f30" "#2e292b" "#292727" "#292727" "#292727" "#292727" "#252022" "#1a1917" "#1b1b1b" "#201c1b" "#201c1b" "#201c1b" "#201c1b" "#1b1b1b" "#201c1b" "#201c1b" "#201c1b" "#767368" "#a9a59b" "#9f9d90" "#dcdcd3" "#767368" "#a9a59b" "#9f9d90" "#dcdcd3" "#b4b3ae" "#4d4a50" "#49464b" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#b7b7b7" "#86712c" "#332e30" "#312c2e" "#282626" "#282626" "#282626" "#282626" "#282626" "#443d3f" "#aaa6a0" "#1d1916" "#201c1b" "#201c1b" "#201c1b" "#201c1b" "#201c1b" "#201c1b" "#3e3c2f" "#7e7c6b" "#a9a59b" "#a9a59b" "#bebab2" "#cbcbbd" "#736c63" "#888173" "#837c6f" "#837c6f" "#747162" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#332f2c" "#332f2c" "#292222" "#292222" "#292222" "#292222" "#1a1615" "#1a1615" "#231f1c" "#817a6d" "#ffffff" "#2e2a27" "#2e2a27" "#393633" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#aeaca7" "#6c6352" "#6c6352" "#bebab2" "#403b3d" "#9f9b8f" "#958e81" "#9f9b8f" "#958e81" "#9f9b8f" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#7f7e7b" "#cccbcb" "#13100a" "#655f5a" "#655f5a" "#948f83" "#a3a093" "#a3a093" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#403b3d" "#958e81" "#958e81" "#9f9b8f" "#958e81" "#958e81" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#736c63" "#888173" "#837c6f" "#837c6f" "#747162" "#787164" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#403b3d" "#736c63" "#888173" "#837c6f" "#837c6f" "#747162" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#827e6f" "#746c5c" "#746c5c" "#625c48" "#8e8d84" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#716d5d" "#655e4c" "#655e4c" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
    (list "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff" "#ffffff")
        
        
        
        
        
        
        
        )
    )

(define (pixel x y col pixelsize)
  (begin (setposition x y) (begin_fill) (color col) (right 90) (forward pixelsize) (right 90) (forward (* 1 pixelsize)) (right 90) (forward pixelsize) (right 90) (forward (* 1 pixelsize)) (end_fill))
)

(define (line x y pixels pixelsize)
  (if (null? pixels) () (begin (pixel x y (car pixels) pixelsize) (line (+ x pixelsize) y (cdr pixels) pixelsize)))
)

(define (image x y lines pixelsize)
  (if (null? lines) () (begin (line x y (car lines) pixelsize) (image x (- y (* 1 pixelsize)) (cdr lines) pixelsize)))
)

(define (draw)
  ; YOUR CODE HERE
  (begin (hideturtle) (penup) (speed 0)
  (image 0 0 lines 15
         )
  )
  (exitonclick))

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)