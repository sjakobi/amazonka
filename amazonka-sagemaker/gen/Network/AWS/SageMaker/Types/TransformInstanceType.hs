{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TransformInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TransformInstanceType
  ( TransformInstanceType
      ( ..,
        Ml_C4_2XLarge,
        Ml_C4_4XLarge,
        Ml_C4_8XLarge,
        Ml_C4_XLarge,
        Ml_C5_18XLarge,
        Ml_C5_2XLarge,
        Ml_C5_4XLarge,
        Ml_C5_9XLarge,
        Ml_C5_XLarge,
        Ml_M4_10XLarge,
        Ml_M4_16XLarge,
        Ml_M4_2XLarge,
        Ml_M4_4XLarge,
        Ml_M4_XLarge,
        Ml_M5_12XLarge,
        Ml_M5_24XLarge,
        Ml_M5_2XLarge,
        Ml_M5_4XLarge,
        Ml_M5_Large,
        Ml_M5_XLarge,
        Ml_P2_16XLarge,
        Ml_P2_8XLarge,
        Ml_P2_XLarge,
        Ml_P3_16XLarge,
        Ml_P3_2XLarge,
        Ml_P3_8XLarge
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TransformInstanceType
  = TransformInstanceType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ml_C4_2XLarge :: TransformInstanceType
pattern Ml_C4_2XLarge = TransformInstanceType' "ml.c4.2xlarge"

pattern Ml_C4_4XLarge :: TransformInstanceType
pattern Ml_C4_4XLarge = TransformInstanceType' "ml.c4.4xlarge"

pattern Ml_C4_8XLarge :: TransformInstanceType
pattern Ml_C4_8XLarge = TransformInstanceType' "ml.c4.8xlarge"

pattern Ml_C4_XLarge :: TransformInstanceType
pattern Ml_C4_XLarge = TransformInstanceType' "ml.c4.xlarge"

pattern Ml_C5_18XLarge :: TransformInstanceType
pattern Ml_C5_18XLarge = TransformInstanceType' "ml.c5.18xlarge"

pattern Ml_C5_2XLarge :: TransformInstanceType
pattern Ml_C5_2XLarge = TransformInstanceType' "ml.c5.2xlarge"

pattern Ml_C5_4XLarge :: TransformInstanceType
pattern Ml_C5_4XLarge = TransformInstanceType' "ml.c5.4xlarge"

pattern Ml_C5_9XLarge :: TransformInstanceType
pattern Ml_C5_9XLarge = TransformInstanceType' "ml.c5.9xlarge"

pattern Ml_C5_XLarge :: TransformInstanceType
pattern Ml_C5_XLarge = TransformInstanceType' "ml.c5.xlarge"

pattern Ml_M4_10XLarge :: TransformInstanceType
pattern Ml_M4_10XLarge = TransformInstanceType' "ml.m4.10xlarge"

pattern Ml_M4_16XLarge :: TransformInstanceType
pattern Ml_M4_16XLarge = TransformInstanceType' "ml.m4.16xlarge"

pattern Ml_M4_2XLarge :: TransformInstanceType
pattern Ml_M4_2XLarge = TransformInstanceType' "ml.m4.2xlarge"

pattern Ml_M4_4XLarge :: TransformInstanceType
pattern Ml_M4_4XLarge = TransformInstanceType' "ml.m4.4xlarge"

pattern Ml_M4_XLarge :: TransformInstanceType
pattern Ml_M4_XLarge = TransformInstanceType' "ml.m4.xlarge"

pattern Ml_M5_12XLarge :: TransformInstanceType
pattern Ml_M5_12XLarge = TransformInstanceType' "ml.m5.12xlarge"

pattern Ml_M5_24XLarge :: TransformInstanceType
pattern Ml_M5_24XLarge = TransformInstanceType' "ml.m5.24xlarge"

pattern Ml_M5_2XLarge :: TransformInstanceType
pattern Ml_M5_2XLarge = TransformInstanceType' "ml.m5.2xlarge"

pattern Ml_M5_4XLarge :: TransformInstanceType
pattern Ml_M5_4XLarge = TransformInstanceType' "ml.m5.4xlarge"

pattern Ml_M5_Large :: TransformInstanceType
pattern Ml_M5_Large = TransformInstanceType' "ml.m5.large"

pattern Ml_M5_XLarge :: TransformInstanceType
pattern Ml_M5_XLarge = TransformInstanceType' "ml.m5.xlarge"

pattern Ml_P2_16XLarge :: TransformInstanceType
pattern Ml_P2_16XLarge = TransformInstanceType' "ml.p2.16xlarge"

pattern Ml_P2_8XLarge :: TransformInstanceType
pattern Ml_P2_8XLarge = TransformInstanceType' "ml.p2.8xlarge"

pattern Ml_P2_XLarge :: TransformInstanceType
pattern Ml_P2_XLarge = TransformInstanceType' "ml.p2.xlarge"

pattern Ml_P3_16XLarge :: TransformInstanceType
pattern Ml_P3_16XLarge = TransformInstanceType' "ml.p3.16xlarge"

pattern Ml_P3_2XLarge :: TransformInstanceType
pattern Ml_P3_2XLarge = TransformInstanceType' "ml.p3.2xlarge"

pattern Ml_P3_8XLarge :: TransformInstanceType
pattern Ml_P3_8XLarge = TransformInstanceType' "ml.p3.8xlarge"

{-# COMPLETE
  Ml_C4_2XLarge,
  Ml_C4_4XLarge,
  Ml_C4_8XLarge,
  Ml_C4_XLarge,
  Ml_C5_18XLarge,
  Ml_C5_2XLarge,
  Ml_C5_4XLarge,
  Ml_C5_9XLarge,
  Ml_C5_XLarge,
  Ml_M4_10XLarge,
  Ml_M4_16XLarge,
  Ml_M4_2XLarge,
  Ml_M4_4XLarge,
  Ml_M4_XLarge,
  Ml_M5_12XLarge,
  Ml_M5_24XLarge,
  Ml_M5_2XLarge,
  Ml_M5_4XLarge,
  Ml_M5_Large,
  Ml_M5_XLarge,
  Ml_P2_16XLarge,
  Ml_P2_8XLarge,
  Ml_P2_XLarge,
  Ml_P3_16XLarge,
  Ml_P3_2XLarge,
  Ml_P3_8XLarge,
  TransformInstanceType'
  #-}

instance FromText TransformInstanceType where
  parser = (TransformInstanceType' . mk) <$> takeText

instance ToText TransformInstanceType where
  toText (TransformInstanceType' ci) = original ci

instance Hashable TransformInstanceType

instance NFData TransformInstanceType

instance ToByteString TransformInstanceType

instance ToQuery TransformInstanceType

instance ToHeader TransformInstanceType

instance ToJSON TransformInstanceType where
  toJSON = toJSONText

instance FromJSON TransformInstanceType where
  parseJSON = parseJSONText "TransformInstanceType"
