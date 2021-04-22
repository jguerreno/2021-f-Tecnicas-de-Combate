module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de presionGolpe" $ do
    it "La precion del golpe es  poder del golpe / fortaleza del objetivo" $ do
      presionGolpe 200 "bolsa de entrenamiento" `shouldBe` 68

