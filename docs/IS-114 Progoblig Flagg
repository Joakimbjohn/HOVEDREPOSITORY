include image
include color

roed = rectangle(  #Lager hele bakgrunnen rød, så legger jeg på de andre fargene etterhvert.
  220, 160, "solid", "red")

hvit-vannrett = rectangle( #Definerer den vannrette hvite rektangelen
  220, 40, "solid", "white")

hvit-loddrett = rectangle( #Definerer den loddrette hvite rektangelen
  40, 160, "solid", "white")

hvitt-kors = overlay-align( #Definerer en variabel som slår sammen de hvite vannrette og loddrette rektangelene
  "center", "middle", hvit-vannrett, put-image(
    hvit-loddrett,
    80, 80,
    empty-scene(220, 160)
    )
  )

blaa-vannrett = rectangle( #Definerer den vannrette blåe rektangelen
  220, 20, "solid", "blue")

blaa-loddrett = rectangle( #Definerer den loddrette blåe rektangelen
  20, 160, "solid", "blue")

blaa-kors = overlay-align( #Definerer en variabel som slår sammen de blåe vannrette og loddrette rektangelene
  "center", "middle", blaa-vannrett, put-image(
    blaa-loddrett,
    80, 80,
    empty-scene(220, 160)
    )
  )

norsk-flagg = overlay-align( #Benytter overlay-align til å legge sammen delene jeg har laget. Delen jeg vil ha øverst kommer først
  "center", "middle", blaa-kors, overlay-align(
    "center", "middle", hvitt-kors, roed)
  )
norsk-flagg
