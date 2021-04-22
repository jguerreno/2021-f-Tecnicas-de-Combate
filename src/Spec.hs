module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de presionGolpe" $ do
    it "La precion del golpe es  poder del golpe / fortaleza del objetivo" $ do
      presionGolpe 200 "bolsa de entrenamiento" `shouldBe` 68
  describe "Test de gomuGomu" $ do
    it "gomu gomu ejerce una presión de 61 sobre la bolsa de entrenamiento" $ do
      gomuGomu "bolsa de entrenamiento" `shouldBe` 61
  describe "Test de normalesConsecutivos" $ do
    it "golpes normales consecutivos ejerce una presión de 81 sobre la bolsa de entrenamiento" $ do
      normalesConsecutivos "bolsa de entrenamiento" `shouldBe` 81
