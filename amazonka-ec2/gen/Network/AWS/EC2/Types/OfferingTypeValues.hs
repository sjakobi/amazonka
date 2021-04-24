{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.OfferingTypeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OfferingTypeValues
  ( OfferingTypeValues
      ( ..,
        OTVAllUpfront,
        OTVHeavyUtilization,
        OTVLightUtilization,
        OTVMediumUtilization,
        OTVNoUpfront,
        OTVPartialUpfront
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data OfferingTypeValues
  = OfferingTypeValues'
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

pattern OTVAllUpfront :: OfferingTypeValues
pattern OTVAllUpfront = OfferingTypeValues' "All Upfront"

pattern OTVHeavyUtilization :: OfferingTypeValues
pattern OTVHeavyUtilization = OfferingTypeValues' "Heavy Utilization"

pattern OTVLightUtilization :: OfferingTypeValues
pattern OTVLightUtilization = OfferingTypeValues' "Light Utilization"

pattern OTVMediumUtilization :: OfferingTypeValues
pattern OTVMediumUtilization = OfferingTypeValues' "Medium Utilization"

pattern OTVNoUpfront :: OfferingTypeValues
pattern OTVNoUpfront = OfferingTypeValues' "No Upfront"

pattern OTVPartialUpfront :: OfferingTypeValues
pattern OTVPartialUpfront = OfferingTypeValues' "Partial Upfront"

{-# COMPLETE
  OTVAllUpfront,
  OTVHeavyUtilization,
  OTVLightUtilization,
  OTVMediumUtilization,
  OTVNoUpfront,
  OTVPartialUpfront,
  OfferingTypeValues'
  #-}

instance FromText OfferingTypeValues where
  parser = (OfferingTypeValues' . mk) <$> takeText

instance ToText OfferingTypeValues where
  toText (OfferingTypeValues' ci) = original ci

instance Hashable OfferingTypeValues

instance NFData OfferingTypeValues

instance ToByteString OfferingTypeValues

instance ToQuery OfferingTypeValues

instance ToHeader OfferingTypeValues

instance FromXML OfferingTypeValues where
  parseXML = parseXMLText "OfferingTypeValues"
