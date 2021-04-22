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


objetivoDificil :: Objetivo -> Bool
objetivoDificil = (<100) . gomuGomu

objetivoAccesible :: Objetivo -> Bool
objetivoAccesible = entre200Y400 . normalesConsecutivos . focaliza

entre200Y400 :: Number -> Bool
entre200Y400 = between 200 400

between :: Ord a => a -> a -> a -> Bool
between bajo alto medio = bajo <= medio && medio <= alto

type ObjetivoFocalizado = String
focaliza :: Objetivo -> ObjetivoFocalizado
focaliza = take 7