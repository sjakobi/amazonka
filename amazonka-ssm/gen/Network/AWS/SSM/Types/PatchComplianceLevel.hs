{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchComplianceLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchComplianceLevel
  ( PatchComplianceLevel
      ( ..,
        PCLCritical,
        PCLHigh,
        PCLInformational,
        PCLLow,
        PCLMedium,
        PCLUnspecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PatchComplianceLevel
  = PatchComplianceLevel'
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

pattern PCLCritical :: PatchComplianceLevel
pattern PCLCritical = PatchComplianceLevel' "CRITICAL"

pattern PCLHigh :: PatchComplianceLevel
pattern PCLHigh = PatchComplianceLevel' "HIGH"

pattern PCLInformational :: PatchComplianceLevel
pattern PCLInformational = PatchComplianceLevel' "INFORMATIONAL"

pattern PCLLow :: PatchComplianceLevel
pattern PCLLow = PatchComplianceLevel' "LOW"

pattern PCLMedium :: PatchComplianceLevel
pattern PCLMedium = PatchComplianceLevel' "MEDIUM"

pattern PCLUnspecified :: PatchComplianceLevel
pattern PCLUnspecified = PatchComplianceLevel' "UNSPECIFIED"

{-# COMPLETE
  PCLCritical,
  PCLHigh,
  PCLInformational,
  PCLLow,
  PCLMedium,
  PCLUnspecified,
  PatchComplianceLevel'
  #-}

instance FromText PatchComplianceLevel where
  parser = (PatchComplianceLevel' . mk) <$> takeText

instance ToText PatchComplianceLevel where
  toText (PatchComplianceLevel' ci) = original ci

instance Hashable PatchComplianceLevel

instance NFData PatchComplianceLevel

instance ToByteString PatchComplianceLevel

instance ToQuery PatchComplianceLevel

instance ToHeader PatchComplianceLevel

instance ToJSON PatchComplianceLevel where
  toJSON = toJSONText

instance FromJSON PatchComplianceLevel where
  parseJSON = parseJSONText "PatchComplianceLevel"
