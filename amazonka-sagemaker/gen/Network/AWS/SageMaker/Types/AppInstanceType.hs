{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AITMl_C5_12XLarge,
        AITMl_C5_18XLarge,
        AITMl_C5_24XLarge,
        AITMl_C5_2XLarge,
        AITMl_C5_4XLarge,
        AITMl_C5_9XLarge,
        AITMl_C5_Large,
        AITMl_C5_XLarge,
        AITMl_G4dn_12XLarge,
        AITMl_G4dn_16XLarge,
        AITMl_G4dn_2XLarge,
        AITMl_G4dn_4XLarge,
        AITMl_G4dn_8XLarge,
        AITMl_G4dn_XLarge,
        AITMl_M5_12XLarge,
        AITMl_M5_16XLarge,
        AITMl_M5_24XLarge,
        AITMl_M5_2XLarge,
        AITMl_M5_4XLarge,
        AITMl_M5_8XLarge,
        AITMl_M5_Large,
        AITMl_M5_XLarge,
        AITMl_P3_16XLarge,
        AITMl_P3_2XLarge,
        AITMl_P3_8XLarge,
        AITMl_T3_2XLarge,
        AITMl_T3_Large,
        AITMl_T3_Medium,
        AITMl_T3_Micro,
        AITMl_T3_Small,
        AITMl_T3_XLarge,
        AITSystem
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppInstanceType = AppInstanceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AITMl_C5_12XLarge :: AppInstanceType
pattern AITMl_C5_12XLarge = AppInstanceType' "ml.c5.12xlarge"

pattern AITMl_C5_18XLarge :: AppInstanceType
pattern AITMl_C5_18XLarge = AppInstanceType' "ml.c5.18xlarge"

pattern AITMl_C5_24XLarge :: AppInstanceType
pattern AITMl_C5_24XLarge = AppInstanceType' "ml.c5.24xlarge"

pattern AITMl_C5_2XLarge :: AppInstanceType
pattern AITMl_C5_2XLarge = AppInstanceType' "ml.c5.2xlarge"

pattern AITMl_C5_4XLarge :: AppInstanceType
pattern AITMl_C5_4XLarge = AppInstanceType' "ml.c5.4xlarge"

pattern AITMl_C5_9XLarge :: AppInstanceType
pattern AITMl_C5_9XLarge = AppInstanceType' "ml.c5.9xlarge"

pattern AITMl_C5_Large :: AppInstanceType
pattern AITMl_C5_Large = AppInstanceType' "ml.c5.large"

pattern AITMl_C5_XLarge :: AppInstanceType
pattern AITMl_C5_XLarge = AppInstanceType' "ml.c5.xlarge"

pattern AITMl_G4dn_12XLarge :: AppInstanceType
pattern AITMl_G4dn_12XLarge = AppInstanceType' "ml.g4dn.12xlarge"

pattern AITMl_G4dn_16XLarge :: AppInstanceType
pattern AITMl_G4dn_16XLarge = AppInstanceType' "ml.g4dn.16xlarge"

pattern AITMl_G4dn_2XLarge :: AppInstanceType
pattern AITMl_G4dn_2XLarge = AppInstanceType' "ml.g4dn.2xlarge"

pattern AITMl_G4dn_4XLarge :: AppInstanceType
pattern AITMl_G4dn_4XLarge = AppInstanceType' "ml.g4dn.4xlarge"

pattern AITMl_G4dn_8XLarge :: AppInstanceType
pattern AITMl_G4dn_8XLarge = AppInstanceType' "ml.g4dn.8xlarge"

pattern AITMl_G4dn_XLarge :: AppInstanceType
pattern AITMl_G4dn_XLarge = AppInstanceType' "ml.g4dn.xlarge"

pattern AITMl_M5_12XLarge :: AppInstanceType
pattern AITMl_M5_12XLarge = AppInstanceType' "ml.m5.12xlarge"

pattern AITMl_M5_16XLarge :: AppInstanceType
pattern AITMl_M5_16XLarge = AppInstanceType' "ml.m5.16xlarge"

pattern AITMl_M5_24XLarge :: AppInstanceType
pattern AITMl_M5_24XLarge = AppInstanceType' "ml.m5.24xlarge"

pattern AITMl_M5_2XLarge :: AppInstanceType
pattern AITMl_M5_2XLarge = AppInstanceType' "ml.m5.2xlarge"

pattern AITMl_M5_4XLarge :: AppInstanceType
pattern AITMl_M5_4XLarge = AppInstanceType' "ml.m5.4xlarge"

pattern AITMl_M5_8XLarge :: AppInstanceType
pattern AITMl_M5_8XLarge = AppInstanceType' "ml.m5.8xlarge"

pattern AITMl_M5_Large :: AppInstanceType
pattern AITMl_M5_Large = AppInstanceType' "ml.m5.large"

pattern AITMl_M5_XLarge :: AppInstanceType
pattern AITMl_M5_XLarge = AppInstanceType' "ml.m5.xlarge"

pattern AITMl_P3_16XLarge :: AppInstanceType
pattern AITMl_P3_16XLarge = AppInstanceType' "ml.p3.16xlarge"

pattern AITMl_P3_2XLarge :: AppInstanceType
pattern AITMl_P3_2XLarge = AppInstanceType' "ml.p3.2xlarge"

pattern AITMl_P3_8XLarge :: AppInstanceType
pattern AITMl_P3_8XLarge = AppInstanceType' "ml.p3.8xlarge"

pattern AITMl_T3_2XLarge :: AppInstanceType
pattern AITMl_T3_2XLarge = AppInstanceType' "ml.t3.2xlarge"

pattern AITMl_T3_Large :: AppInstanceType
pattern AITMl_T3_Large = AppInstanceType' "ml.t3.large"

pattern AITMl_T3_Medium :: AppInstanceType
pattern AITMl_T3_Medium = AppInstanceType' "ml.t3.medium"

pattern AITMl_T3_Micro :: AppInstanceType
pattern AITMl_T3_Micro = AppInstanceType' "ml.t3.micro"

pattern AITMl_T3_Small :: AppInstanceType
pattern AITMl_T3_Small = AppInstanceType' "ml.t3.small"

pattern AITMl_T3_XLarge :: AppInstanceType
pattern AITMl_T3_XLarge = AppInstanceType' "ml.t3.xlarge"

pattern AITSystem :: AppInstanceType
pattern AITSystem = AppInstanceType' "system"

{-# COMPLETE
  AITMl_C5_12XLarge,
  AITMl_C5_18XLarge,
  AITMl_C5_24XLarge,
  AITMl_C5_2XLarge,
  AITMl_C5_4XLarge,
  AITMl_C5_9XLarge,
  AITMl_C5_Large,
  AITMl_C5_XLarge,
  AITMl_G4dn_12XLarge,
  AITMl_G4dn_16XLarge,
  AITMl_G4dn_2XLarge,
  AITMl_G4dn_4XLarge,
  AITMl_G4dn_8XLarge,
  AITMl_G4dn_XLarge,
  AITMl_M5_12XLarge,
  AITMl_M5_16XLarge,
  AITMl_M5_24XLarge,
  AITMl_M5_2XLarge,
  AITMl_M5_4XLarge,
  AITMl_M5_8XLarge,
  AITMl_M5_Large,
  AITMl_M5_XLarge,
  AITMl_P3_16XLarge,
  AITMl_P3_2XLarge,
  AITMl_P3_8XLarge,
  AITMl_T3_2XLarge,
  AITMl_T3_Large,
  AITMl_T3_Medium,
  AITMl_T3_Micro,
  AITMl_T3_Small,
  AITMl_T3_XLarge,
  AITSystem,
  AppInstanceType'
  #-}

instance FromText AppInstanceType where
  parser = (AppInstanceType' . mk) <$> takeText

instance ToText AppInstanceType where
  toText (AppInstanceType' ci) = original ci

instance Hashable AppInstanceType

instance NFData AppInstanceType

instance ToByteString AppInstanceType

instance ToQuery AppInstanceType

instance ToHeader AppInstanceType

instance ToJSON AppInstanceType where
  toJSON = toJSONText

instance FromJSON AppInstanceType where
  parseJSON = parseJSONText "AppInstanceType"
