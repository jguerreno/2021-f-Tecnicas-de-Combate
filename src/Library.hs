module Library where
import PdePreludat

-- Tecnicas de Combate
type Horas = Number
type Objetivo = String
type Presion = Number

presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = redondear (poder horas / fortaleza objetivo)

redondear :: Number -> Presion
redondear = truncate

poder :: Horas -> Number
poder = (* 15)

fortaleza :: Objetivo -> Number
fortaleza = (2*) . length


type Golpe = Objetivo -> Number

gomuGomu :: Golpe
gomuGomu = presionGolpe 180

normalesConsecutivos :: Golpe 
normalesConsecutivos = presionGolpe 240
