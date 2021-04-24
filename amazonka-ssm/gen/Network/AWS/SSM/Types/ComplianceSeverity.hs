{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceSeverity
  ( ComplianceSeverity
      ( ..,
        CSCritical,
        CSHigh,
        CSInformational,
        CSLow,
        CSMedium,
        CSUnspecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComplianceSeverity
  = ComplianceSeverity'
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

pattern CSCritical :: ComplianceSeverity
pattern CSCritical = ComplianceSeverity' "CRITICAL"

pattern CSHigh :: ComplianceSeverity
pattern CSHigh = ComplianceSeverity' "HIGH"

pattern CSInformational :: ComplianceSeverity
pattern CSInformational = ComplianceSeverity' "INFORMATIONAL"

pattern CSLow :: ComplianceSeverity
pattern CSLow = ComplianceSeverity' "LOW"

pattern CSMedium :: ComplianceSeverity
pattern CSMedium = ComplianceSeverity' "MEDIUM"

pattern CSUnspecified :: ComplianceSeverity
pattern CSUnspecified = ComplianceSeverity' "UNSPECIFIED"

{-# COMPLETE
  CSCritical,
  CSHigh,
  CSInformational,
  CSLow,
  CSMedium,
  CSUnspecified,
  ComplianceSeverity'
  #-}

instance FromText ComplianceSeverity where
  parser = (ComplianceSeverity' . mk) <$> takeText

instance ToText ComplianceSeverity where
  toText (ComplianceSeverity' ci) = original ci

instance Hashable ComplianceSeverity

instance NFData ComplianceSeverity

instance ToByteString ComplianceSeverity

instance ToQuery ComplianceSeverity

instance ToHeader ComplianceSeverity

instance ToJSON ComplianceSeverity where
  toJSON = toJSONText

instance FromJSON ComplianceSeverity where
  parseJSON = parseJSONText "ComplianceSeverity"
