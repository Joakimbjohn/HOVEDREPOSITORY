fun draw-flagg(c1, c2, c3) -> Image:
  
  frame( #Bruker frame( fra eksempelet i kapittel 5.2
    overlay-xy(rectangle(30, 240, "solid", c3), -105, 0,
      overlay-xy(rectangle(330, 30, "solid", c3), 0, -105,
        overlay-xy(rectangle(60, 240, "solid", c2), -90, 0,
          overlay-xy(rectangle(330, 60, "solid", c2), 0, -90,
            rectangle(330, 240, "solid", c1))))))
end

Norge = draw-flagg("red", "White", "blue")
Svergie = draw-flagg("blue", "blue", "yellow")
Danmark = draw-flagg("red", "red", "white")
Finland = draw-flagg("white", "blue", "blue")
Island = draw-flagg("blue", "white", "red")
Faeroyene = draw-flagg("white", "blue", "red")
Skandinavia = frame(
  above( Norge,
    above( Svergie,
      above( Danmark,
        above( Finland,
          above( Island, Faeroyene))))))
