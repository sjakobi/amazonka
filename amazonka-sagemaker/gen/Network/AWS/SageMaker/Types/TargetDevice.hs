{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TargetDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetDevice
  ( TargetDevice
      ( ..,
        TargetDeviceAisage,
        TargetDeviceAmbaCV22,
        TargetDeviceCoreml,
        TargetDeviceDeeplens,
        TargetDeviceImx8qm,
        TargetDeviceJacintoTda4vm,
        TargetDeviceJetsonNano,
        TargetDeviceJetsonTX1,
        TargetDeviceJetsonTX2,
        TargetDeviceJetsonXavier,
        TargetDeviceLambda,
        TargetDeviceMlC4,
        TargetDeviceMlC5,
        TargetDeviceMlG4dn,
        TargetDeviceMlINF1,
        TargetDeviceMlM4,
        TargetDeviceMlM5,
        TargetDeviceMlP2,
        TargetDeviceMlP3,
        TargetDeviceQCS603,
        TargetDeviceQCS605,
        TargetDeviceRK3288,
        TargetDeviceRK3399,
        TargetDeviceRasp3b,
        TargetDeviceSbec,
        TargetDeviceSitaraAm57x,
        TargetDeviceX86WIN32,
        TargetDeviceX86WIN64
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetDevice = TargetDevice'
  { fromTargetDevice ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TargetDeviceAisage :: TargetDevice
pattern TargetDeviceAisage = TargetDevice' "aisage"

pattern TargetDeviceAmbaCV22 :: TargetDevice
pattern TargetDeviceAmbaCV22 = TargetDevice' "amba_cv22"

pattern TargetDeviceCoreml :: TargetDevice
pattern TargetDeviceCoreml = TargetDevice' "coreml"

pattern TargetDeviceDeeplens :: TargetDevice
pattern TargetDeviceDeeplens = TargetDevice' "deeplens"

pattern TargetDeviceImx8qm :: TargetDevice
pattern TargetDeviceImx8qm = TargetDevice' "imx8qm"

pattern TargetDeviceJacintoTda4vm :: TargetDevice
pattern TargetDeviceJacintoTda4vm = TargetDevice' "jacinto_tda4vm"

pattern TargetDeviceJetsonNano :: TargetDevice
pattern TargetDeviceJetsonNano = TargetDevice' "jetson_nano"

pattern TargetDeviceJetsonTX1 :: TargetDevice
pattern TargetDeviceJetsonTX1 = TargetDevice' "jetson_tx1"

pattern TargetDeviceJetsonTX2 :: TargetDevice
pattern TargetDeviceJetsonTX2 = TargetDevice' "jetson_tx2"

pattern TargetDeviceJetsonXavier :: TargetDevice
pattern TargetDeviceJetsonXavier = TargetDevice' "jetson_xavier"

pattern TargetDeviceLambda :: TargetDevice
pattern TargetDeviceLambda = TargetDevice' "lambda"

pattern TargetDeviceMlC4 :: TargetDevice
pattern TargetDeviceMlC4 = TargetDevice' "ml_c4"

pattern TargetDeviceMlC5 :: TargetDevice
pattern TargetDeviceMlC5 = TargetDevice' "ml_c5"

pattern TargetDeviceMlG4dn :: TargetDevice
pattern TargetDeviceMlG4dn = TargetDevice' "ml_g4dn"

pattern TargetDeviceMlINF1 :: TargetDevice
pattern TargetDeviceMlINF1 = TargetDevice' "ml_inf1"

pattern TargetDeviceMlM4 :: TargetDevice
pattern TargetDeviceMlM4 = TargetDevice' "ml_m4"

pattern TargetDeviceMlM5 :: TargetDevice
pattern TargetDeviceMlM5 = TargetDevice' "ml_m5"

pattern TargetDeviceMlP2 :: TargetDevice
pattern TargetDeviceMlP2 = TargetDevice' "ml_p2"

pattern TargetDeviceMlP3 :: TargetDevice
pattern TargetDeviceMlP3 = TargetDevice' "ml_p3"

pattern TargetDeviceQCS603 :: TargetDevice
pattern TargetDeviceQCS603 = TargetDevice' "qcs603"

pattern TargetDeviceQCS605 :: TargetDevice
pattern TargetDeviceQCS605 = TargetDevice' "qcs605"

pattern TargetDeviceRK3288 :: TargetDevice
pattern TargetDeviceRK3288 = TargetDevice' "rk3288"

pattern TargetDeviceRK3399 :: TargetDevice
pattern TargetDeviceRK3399 = TargetDevice' "rk3399"

pattern TargetDeviceRasp3b :: TargetDevice
pattern TargetDeviceRasp3b = TargetDevice' "rasp3b"

pattern TargetDeviceSbec :: TargetDevice
pattern TargetDeviceSbec = TargetDevice' "sbe_c"

pattern TargetDeviceSitaraAm57x :: TargetDevice
pattern TargetDeviceSitaraAm57x = TargetDevice' "sitara_am57x"

pattern TargetDeviceX86WIN32 :: TargetDevice
pattern TargetDeviceX86WIN32 = TargetDevice' "x86_win32"

pattern TargetDeviceX86WIN64 :: TargetDevice
pattern TargetDeviceX86WIN64 = TargetDevice' "x86_win64"

{-# COMPLETE
  TargetDeviceAisage,
  TargetDeviceAmbaCV22,
  TargetDeviceCoreml,
  TargetDeviceDeeplens,
  TargetDeviceImx8qm,
  TargetDeviceJacintoTda4vm,
  TargetDeviceJetsonNano,
  TargetDeviceJetsonTX1,
  TargetDeviceJetsonTX2,
  TargetDeviceJetsonXavier,
  TargetDeviceLambda,
  TargetDeviceMlC4,
  TargetDeviceMlC5,
  TargetDeviceMlG4dn,
  TargetDeviceMlINF1,
  TargetDeviceMlM4,
  TargetDeviceMlM5,
  TargetDeviceMlP2,
  TargetDeviceMlP3,
  TargetDeviceQCS603,
  TargetDeviceQCS605,
  TargetDeviceRK3288,
  TargetDeviceRK3399,
  TargetDeviceRasp3b,
  TargetDeviceSbec,
  TargetDeviceSitaraAm57x,
  TargetDeviceX86WIN32,
  TargetDeviceX86WIN64,
  TargetDevice'
  #-}

instance Prelude.FromText TargetDevice where
  parser = TargetDevice' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetDevice where
  toText (TargetDevice' x) = x

instance Prelude.Hashable TargetDevice

instance Prelude.NFData TargetDevice

instance Prelude.ToByteString TargetDevice

instance Prelude.ToQuery TargetDevice

instance Prelude.ToHeader TargetDevice

instance Prelude.ToJSON TargetDevice where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TargetDevice where
  parseJSON = Prelude.parseJSONText "TargetDevice"
