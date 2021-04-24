{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConformancePackComplianceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConformancePackComplianceType
  ( ConformancePackComplianceType
      ( ..,
        CPCTCompliant,
        CPCTInsufficientData,
        CPCTNonCompliant
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConformancePackComplianceType
  = ConformancePackComplianceType'
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

pattern CPCTCompliant :: ConformancePackComplianceType
pattern CPCTCompliant = ConformancePackComplianceType' "COMPLIANT"

pattern CPCTInsufficientData :: ConformancePackComplianceType
pattern CPCTInsufficientData = ConformancePackComplianceType' "INSUFFICIENT_DATA"

pattern CPCTNonCompliant :: ConformancePackComplianceType
pattern CPCTNonCompliant = ConformancePackComplianceType' "NON_COMPLIANT"

{-# COMPLETE
  CPCTCompliant,
  CPCTInsufficientData,
  CPCTNonCompliant,
  ConformancePackComplianceType'
  #-}

instance FromText ConformancePackComplianceType where
  parser = (ConformancePackComplianceType' . mk) <$> takeText

instance ToText ConformancePackComplianceType where
  toText (ConformancePackComplianceType' ci) = original ci

instance Hashable ConformancePackComplianceType

instance NFData ConformancePackComplianceType

instance ToByteString ConformancePackComplianceType

instance ToQuery ConformancePackComplianceType

instance ToHeader ConformancePackComplianceType

instance ToJSON ConformancePackComplianceType where
  toJSON = toJSONText

instance FromJSON ConformancePackComplianceType where
  parseJSON = parseJSONText "ConformancePackComplianceType"
