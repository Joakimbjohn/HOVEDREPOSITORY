include image
include color

roed = rectangle(  #Lager hele bakgrunnen rød, så legger jeg på de andre fargene etterhvert.
  330, 240, "solid", "red")

hvitt-kors = overlay-align( #Definerer det hvite korset i Norgesflagget
  "center", "middle", rectangle( #Den vannrette hvite rektangelen
    330, 60, "solid", "white"), put-image(
    rectangle( #Den loddrette hvite rektangelen
      60, 240, "solid", "white"),
    120, 120,
    empty-scene(330, 240)
    )
  )

blaa-kors = overlay-align( #Definerer det blåe korset i Norgesflagget
  "center", "middle", rectangle( #Den vannrette blåe rektangelen
    330, 30, "solid", "blue"), put-image(
      rectangle( #Den loddrette blåe rektangelen
      30, 240, "solid", "blue"),
    120, 120,
    empty-scene(330, 240)
    )
  )

norsk-flagg = overlay-align( #Benytter overlay-align til å legge sammen delene jeg har laget. Delen jeg vil ha øverst kommer først
  "center", "middle", blaa-kors, overlay-align(
    "center", "middle", hvitt-kors, roed)
  )

dansk-roed = rectangle(
  340, 280, "solid", "red")
 
dansk-kors = overlay-align( #Definerer det hvite korset i det danske flagget
  "center", "middle", rectangle( #Den vannrette hvite rektangelen
    340, 40, "solid", "white"), put-image(
    rectangle( #Den loddrette hvite rektangelen
      40, 280, "solid", "white"),
    140, 140,
    empty-scene(340, 280)
    )
  )

dansk-flagg = overlay-align(
  "center", "middle", dansk-kors, dansk-roed)

blaa = rectangle(  #Lager hele bakgrunnen blå, så legger jeg på de andre fargene etterhvert.
  320, 200, "solid", "blue")

gult-kors = overlay-align( #Definerer det gule korset i det svenske flagget
  "center", "middle", rectangle( #Den vannrette gule rektangelen
    320, 40, "solid", "yellow"), put-image(
    rectangle( #Den loddrette gule rektangelen
      40, 200, "solid", "yellow"),
    120, 100,
    empty-scene(320, 200)
    )
  )

svensk-flagg = overlay-align(
  "center", "middle", gult-kors, blaa)

hvit = rectangle(  #Lager hele bakgrunnen hvit, så legger jeg på de andre fargene etterhvert.
  360, 220, "solid", "white")

finsk-kors = overlay-align( #Definerer det blåe korset i det finske flagget i en funksjon
  "center", "middle", rectangle( 
    360, 60, "solid", "blue"), put-image(
      rectangle(
      60, 220, "solid", "blue"),
    130, 110,
    empty-scene(360, 220)
          )
        )

finsk-flagg = overlay-align(
  "center", "middle", finsk-kors, hvit)

islandsk-blaa = rectangle(
  375.5, 270, "solid", "blue")

islandsk-hvit = overlay-align( #Definerer det røde korset i det islandske lagget
  "center", "middle", rectangle( #Den vannrette røde rektangelen
    375.5, 60, "solid", "white"), put-image(
      rectangle( #Den loddrette røde rektangelen
      60, 270, "solid", "white"),
    135, 135,
    empty-scene(375.5, 270)
    )
  )
  
islandsk-kors = overlay-align( #Definerer det røde korset i det islandske lagget
  "center", "middle", rectangle( #Den vannrette røde rektangelen
    375.5, 30, "solid", "red"), put-image(
      rectangle( #Den loddrette røde rektangelen
      30, 270, "solid", "red"),
    135, 135,
        empty-scene(375.5, 270)
      )
    )

islandsk-flagg = overlay-align( #Benytter overlay-align til å legge sammen delene jeg har laget. Delen jeg vil ha øverst kommer først
  "center", "middle", islandsk-kors, overlay-align(
    "center", "middle", islandsk-hvit, islandsk-blaa)
  )

faeroyene-hvit = rectangle(
  330, 240, "solid", "white")

faeroyene-blaa = overlay-align( #Definerer det blåe korset i færøyske flagget
  "center", "middle", rectangle( #Den vannrette blåe rektangelen
    330, 60, "solid", "blue"), put-image(
    rectangle( #Den loddrette blåe rektangelen
      60, 240, "solid", "blue"),
    120, 120,
    empty-scene(330, 240)
    )
  )

faeroyene-roed = overlay-align( #Definerer det røde korset i færøyske flagget
  "center", "middle", rectangle( #Den vannrette røde rektangelen
    330, 30, "solid", "red"), put-image(
    rectangle( #Den loddrette røde rektangelen
      30, 240, "solid", "red"),
    120, 120,
    empty-scene(330, 240)
    )
  )

faeroyene-flagg = overlay-align(
  "center", "middle", faeroyene-roed, overlay-align(
    "center", "middle", faeroyene-blaa, faeroyene-hvit)
  )

norskfaeroyene = overlay-xy(norsk-flagg, 395, 0, faeroyene-flagg)

svenskfinsk = overlay-xy(svensk-flagg, 365, 0, finsk-flagg)

islanskdansk = overlay-xy(islandsk-flagg, 385, 0, dansk-flagg)



flagg = overlay-xy(
  norskfaeroyene, 0, 250, overlay-xy(
    svenskfinsk, 0, 230, islanskdansk)
    )


flagg


