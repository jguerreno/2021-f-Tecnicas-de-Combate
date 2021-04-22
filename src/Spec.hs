module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de presionGolpe" $ do
    it "La precion del golpe es  poder del golpe / fortaleza del objetivo" $ do
      presionGolpe 200 "bolsa de entrenamiento" `shouldBe` 68
-- -----------------------------------------------------------------------------------      
  describe "Test de gomuGomu" $ do
    it "gomu gomu ejerce una presión de 61 sobre la bolsa de entrenamiento" $ do
      gomuGomu "bolsa de entrenamiento" `shouldBe` 61
  describe "Test de normalesConsecutivos" $ do
    it "golpes normales consecutivos ejerce una presión de 81 sobre la bolsa de entrenamiento" $ do
      normalesConsecutivos "bolsa de entrenamiento" `shouldBe` 81
-- -----------------------------------------------------------------------------------      
  describe "Test de objetivoDificil" $ do
    it "La bolsa de entrenamiento es un objetivo difícil" $ do
      objetivoDificil "bolsa de entrenamiento" `shouldBe` True
    it "Un puf no es un objetivo dificil" $ do
      objetivoDificil "puf" `shouldBe` False
-- -----------------------------------------------------------------------------------      
  describe "Test de objetivoAccesible" $ do
    it "Una bolsa de entrenamiento es accesible" $ do
      objetivoAccesible "bolsa de entrenamiento" `shouldBe` True
    it "Un puf no es accesible." $ do
      objetivoDificil "puf" `shouldBe` False
-- -----------------------------------------------------------------------------------    
--          Tests Secundarios
  describe "Test de entre200Y400" $ do
    it "300 Cumple la condicion" $ do
      entre200Y400 300 `shouldBe` True
    it "20 no Cumple la condicion" $ do
      entre200Y400 20 `shouldBe` False
  describe "Test de focaliza" $ do
    it "Focalizar un objetivo implica quedarse con las primeras 7 letras de su nombre" $ do
      focaliza "bolsa de entrenamiento" `shouldBe` "bolsa d"
    
