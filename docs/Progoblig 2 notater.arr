include image
include color

roed = rectangle(  #Lager hele bakgrunnen rød, så legger jeg på de andre fargene etterhvert.
  220, 160, "solid", "red")

hvitt-kors = overlay-align( #Definerer det hvite korset i Norgesflagget
  "center", "middle", rectangle( #Den vannrette hvite rektangelen
    220, 40, "solid", "white"), put-image(
    rectangle( #Den loddrette hvite rektangelen
      40, 160, "solid", "white"),
      80, 80,
      empty-scene(220, 160)
    )
  )

blaa-kors = overlay-align( #Definerer det blåe korset i Norgesflagget
  "center", "middle", rectangle( #Den vannrette blåe rektangelen
      220, 20, "solid", "blue"), put-image(
      rectangle( #Den loddrette blåe rektangelen
        20, 160, "solid", "blue"),
        80, 80,
        empty-scene(220, 160)
    )
  )

norsk-flagg = overlay-align( #Benytter overlay-align til å legge sammen delene jeg har laget. Delen jeg vil ha øverst kommer først
  "center", "middle", blaa-kors, overlay-align(
    "center", "middle", hvitt-kors, roed)
  )

dansk-flagg = overlay-align(
  "center", "middle", hvitt-kors, roed)

blaa = rectangle(  #Lager hele bakgrunnen blå, så legger jeg på de andre fargene etterhvert.
  220, 137.5, "solid", "blue")

gult-kors = overlay-align( #Definerer det gule korset i det svenske flagget
  "center", "middle", rectangle( #Den vannrette gule rektangelen
    220, 27.5, "solid", "yellow"), put-image(
    rectangle( #Den loddrette gule rektangelen
      27.5, 137.5, "solid", "yellow"),
    80, 68.75,
    empty-scene(220, 137.5)
    )
  )

svensk-flagg = overlay-align(
  "center", "middle", gult-kors, blaa)

hvit = rectangle(  #Lager hele bakgrunnen hvit, så legger jeg på de andre fargene etterhvert.
  220, 160, "solid", "white")

finsk-kors = overlay-align( #Definerer det blåe korset i det finske flagget i en funksjon
  "center", "middle", rectangle( 
    220, 40, "solid", "blue"), put-image(
      rectangle(
      40, 220, "solid", "blue"),
          80, 80,
          empty-scene(220, 160)
          )
        )

finsk-flagg = overlay-align(
  "center", "middle", finsk-kors, hvit)

islandsk-blaa = rectangle(
  220, 160, "solid", "blue")

islandsk-kors = overlay-align( #Definerer det røde korset i det islandske lagget
  "center", "middle", rectangle( #Den vannrette røde rektangelen
      220, 20, "solid", "red"), put-image(
      rectangle( #Den loddrette røde rektangelen
        20, 160, "solid", "red"),
        80, 80,
        empty-scene(220, 160)
      )
    )

islandsk-flagg = overlay-align( #Benytter overlay-align til å legge sammen delene jeg har laget. Delen jeg vil ha øverst kommer først
  "center", "middle", islandsk-kors, overlay-align(
    "center", "middle", hvitt-kors, islandsk-blaa)
  )

norsk-flagg
svensk-flagg
dansk-flagg
finsk-flagg
islandsk-flagg
