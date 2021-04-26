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
-- Module      : Network.AWS.SageMaker.Types.AppInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppInstanceType
  ( AppInstanceType
      ( ..,
        AppInstanceTypeMl_C5_12xlarge,
        AppInstanceTypeMl_C5_18xlarge,
        AppInstanceTypeMl_C5_24xlarge,
        AppInstanceTypeMl_C5_2xlarge,
        AppInstanceTypeMl_C5_4xlarge,
        AppInstanceTypeMl_C5_9xlarge,
        AppInstanceTypeMl_C5_Large,
        AppInstanceTypeMl_C5_Xlarge,
        AppInstanceTypeMl_G4dn_12xlarge,
        AppInstanceTypeMl_G4dn_16xlarge,
        AppInstanceTypeMl_G4dn_2xlarge,
        AppInstanceTypeMl_G4dn_4xlarge,
        AppInstanceTypeMl_G4dn_8xlarge,
        AppInstanceTypeMl_G4dn_Xlarge,
        AppInstanceTypeMl_M5_12xlarge,
        AppInstanceTypeMl_M5_16xlarge,
        AppInstanceTypeMl_M5_24xlarge,
        AppInstanceTypeMl_M5_2xlarge,
        AppInstanceTypeMl_M5_4xlarge,
        AppInstanceTypeMl_M5_8xlarge,
        AppInstanceTypeMl_M5_Large,
        AppInstanceTypeMl_M5_Xlarge,
        AppInstanceTypeMl_P3_16xlarge,
        AppInstanceTypeMl_P3_2xlarge,
        AppInstanceTypeMl_P3_8xlarge,
        AppInstanceTypeMl_T3_2xlarge,
        AppInstanceTypeMl_T3_Large,
        AppInstanceTypeMl_T3_Medium,
        AppInstanceTypeMl_T3_Micro,
        AppInstanceTypeMl_T3_Small,
        AppInstanceTypeMl_T3_Xlarge,
        AppInstanceTypeSystem
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppInstanceType = AppInstanceType'
  { fromAppInstanceType ::
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

pattern AppInstanceTypeMl_C5_12xlarge :: AppInstanceType
pattern AppInstanceTypeMl_C5_12xlarge = AppInstanceType' "ml.c5.12xlarge"

pattern AppInstanceTypeMl_C5_18xlarge :: AppInstanceType
pattern AppInstanceTypeMl_C5_18xlarge = AppInstanceType' "ml.c5.18xlarge"

pattern AppInstanceTypeMl_C5_24xlarge :: AppInstanceType
pattern AppInstanceTypeMl_C5_24xlarge = AppInstanceType' "ml.c5.24xlarge"

pattern AppInstanceTypeMl_C5_2xlarge :: AppInstanceType
pattern AppInstanceTypeMl_C5_2xlarge = AppInstanceType' "ml.c5.2xlarge"

pattern AppInstanceTypeMl_C5_4xlarge :: AppInstanceType
pattern AppInstanceTypeMl_C5_4xlarge = AppInstanceType' "ml.c5.4xlarge"

pattern AppInstanceTypeMl_C5_9xlarge :: AppInstanceType
pattern AppInstanceTypeMl_C5_9xlarge = AppInstanceType' "ml.c5.9xlarge"

pattern AppInstanceTypeMl_C5_Large :: AppInstanceType
pattern AppInstanceTypeMl_C5_Large = AppInstanceType' "ml.c5.large"

pattern AppInstanceTypeMl_C5_Xlarge :: AppInstanceType
pattern AppInstanceTypeMl_C5_Xlarge = AppInstanceType' "ml.c5.xlarge"

pattern AppInstanceTypeMl_G4dn_12xlarge :: AppInstanceType
pattern AppInstanceTypeMl_G4dn_12xlarge = AppInstanceType' "ml.g4dn.12xlarge"

pattern AppInstanceTypeMl_G4dn_16xlarge :: AppInstanceType
pattern AppInstanceTypeMl_G4dn_16xlarge = AppInstanceType' "ml.g4dn.16xlarge"

pattern AppInstanceTypeMl_G4dn_2xlarge :: AppInstanceType
pattern AppInstanceTypeMl_G4dn_2xlarge = AppInstanceType' "ml.g4dn.2xlarge"

pattern AppInstanceTypeMl_G4dn_4xlarge :: AppInstanceType
pattern AppInstanceTypeMl_G4dn_4xlarge = AppInstanceType' "ml.g4dn.4xlarge"

pattern AppInstanceTypeMl_G4dn_8xlarge :: AppInstanceType
pattern AppInstanceTypeMl_G4dn_8xlarge = AppInstanceType' "ml.g4dn.8xlarge"

pattern AppInstanceTypeMl_G4dn_Xlarge :: AppInstanceType
pattern AppInstanceTypeMl_G4dn_Xlarge = AppInstanceType' "ml.g4dn.xlarge"

pattern AppInstanceTypeMl_M5_12xlarge :: AppInstanceType
pattern AppInstanceTypeMl_M5_12xlarge = AppInstanceType' "ml.m5.12xlarge"

pattern AppInstanceTypeMl_M5_16xlarge :: AppInstanceType
pattern AppInstanceTypeMl_M5_16xlarge = AppInstanceType' "ml.m5.16xlarge"

pattern AppInstanceTypeMl_M5_24xlarge :: AppInstanceType
pattern AppInstanceTypeMl_M5_24xlarge = AppInstanceType' "ml.m5.24xlarge"

pattern AppInstanceTypeMl_M5_2xlarge :: AppInstanceType
pattern AppInstanceTypeMl_M5_2xlarge = AppInstanceType' "ml.m5.2xlarge"

pattern AppInstanceTypeMl_M5_4xlarge :: AppInstanceType
pattern AppInstanceTypeMl_M5_4xlarge = AppInstanceType' "ml.m5.4xlarge"

pattern AppInstanceTypeMl_M5_8xlarge :: AppInstanceType
pattern AppInstanceTypeMl_M5_8xlarge = AppInstanceType' "ml.m5.8xlarge"

pattern AppInstanceTypeMl_M5_Large :: AppInstanceType
pattern AppInstanceTypeMl_M5_Large = AppInstanceType' "ml.m5.large"

pattern AppInstanceTypeMl_M5_Xlarge :: AppInstanceType
pattern AppInstanceTypeMl_M5_Xlarge = AppInstanceType' "ml.m5.xlarge"

pattern AppInstanceTypeMl_P3_16xlarge :: AppInstanceType
pattern AppInstanceTypeMl_P3_16xlarge = AppInstanceType' "ml.p3.16xlarge"

pattern AppInstanceTypeMl_P3_2xlarge :: AppInstanceType
pattern AppInstanceTypeMl_P3_2xlarge = AppInstanceType' "ml.p3.2xlarge"

pattern AppInstanceTypeMl_P3_8xlarge :: AppInstanceType
pattern AppInstanceTypeMl_P3_8xlarge = AppInstanceType' "ml.p3.8xlarge"

pattern AppInstanceTypeMl_T3_2xlarge :: AppInstanceType
pattern AppInstanceTypeMl_T3_2xlarge = AppInstanceType' "ml.t3.2xlarge"

pattern AppInstanceTypeMl_T3_Large :: AppInstanceType
pattern AppInstanceTypeMl_T3_Large = AppInstanceType' "ml.t3.large"

pattern AppInstanceTypeMl_T3_Medium :: AppInstanceType
pattern AppInstanceTypeMl_T3_Medium = AppInstanceType' "ml.t3.medium"

pattern AppInstanceTypeMl_T3_Micro :: AppInstanceType
pattern AppInstanceTypeMl_T3_Micro = AppInstanceType' "ml.t3.micro"

pattern AppInstanceTypeMl_T3_Small :: AppInstanceType
pattern AppInstanceTypeMl_T3_Small = AppInstanceType' "ml.t3.small"

pattern AppInstanceTypeMl_T3_Xlarge :: AppInstanceType
pattern AppInstanceTypeMl_T3_Xlarge = AppInstanceType' "ml.t3.xlarge"

pattern AppInstanceTypeSystem :: AppInstanceType
pattern AppInstanceTypeSystem = AppInstanceType' "system"

{-# COMPLETE
  AppInstanceTypeMl_C5_12xlarge,
  AppInstanceTypeMl_C5_18xlarge,
  AppInstanceTypeMl_C5_24xlarge,
  AppInstanceTypeMl_C5_2xlarge,
  AppInstanceTypeMl_C5_4xlarge,
  AppInstanceTypeMl_C5_9xlarge,
  AppInstanceTypeMl_C5_Large,
  AppInstanceTypeMl_C5_Xlarge,
  AppInstanceTypeMl_G4dn_12xlarge,
  AppInstanceTypeMl_G4dn_16xlarge,
  AppInstanceTypeMl_G4dn_2xlarge,
  AppInstanceTypeMl_G4dn_4xlarge,
  AppInstanceTypeMl_G4dn_8xlarge,
  AppInstanceTypeMl_G4dn_Xlarge,
  AppInstanceTypeMl_M5_12xlarge,
  AppInstanceTypeMl_M5_16xlarge,
  AppInstanceTypeMl_M5_24xlarge,
  AppInstanceTypeMl_M5_2xlarge,
  AppInstanceTypeMl_M5_4xlarge,
  AppInstanceTypeMl_M5_8xlarge,
  AppInstanceTypeMl_M5_Large,
  AppInstanceTypeMl_M5_Xlarge,
  AppInstanceTypeMl_P3_16xlarge,
  AppInstanceTypeMl_P3_2xlarge,
  AppInstanceTypeMl_P3_8xlarge,
  AppInstanceTypeMl_T3_2xlarge,
  AppInstanceTypeMl_T3_Large,
  AppInstanceTypeMl_T3_Medium,
  AppInstanceTypeMl_T3_Micro,
  AppInstanceTypeMl_T3_Small,
  AppInstanceTypeMl_T3_Xlarge,
  AppInstanceTypeSystem,
  AppInstanceType'
  #-}

instance Prelude.FromText AppInstanceType where
  parser = AppInstanceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppInstanceType where
  toText (AppInstanceType' x) = x

instance Prelude.Hashable AppInstanceType

instance Prelude.NFData AppInstanceType

instance Prelude.ToByteString AppInstanceType

instance Prelude.ToQuery AppInstanceType

instance Prelude.ToHeader AppInstanceType

instance Prelude.ToJSON AppInstanceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AppInstanceType where
  parseJSON = Prelude.parseJSONText "AppInstanceType"
