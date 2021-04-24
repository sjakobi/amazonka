{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.AccessAdvisorUsageGranularityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.AccessAdvisorUsageGranularityType
  ( AccessAdvisorUsageGranularityType
      ( ..,
        ActionLevel,
        ServiceLevel
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccessAdvisorUsageGranularityType
  = AccessAdvisorUsageGranularityType'
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

pattern ActionLevel :: AccessAdvisorUsageGranularityType
pattern ActionLevel = AccessAdvisorUsageGranularityType' "ACTION_LEVEL"

pattern ServiceLevel :: AccessAdvisorUsageGranularityType
pattern ServiceLevel = AccessAdvisorUsageGranularityType' "SERVICE_LEVEL"

{-# COMPLETE
  ActionLevel,
  ServiceLevel,
  AccessAdvisorUsageGranularityType'
  #-}

instance FromText AccessAdvisorUsageGranularityType where
  parser = (AccessAdvisorUsageGranularityType' . mk) <$> takeText

instance ToText AccessAdvisorUsageGranularityType where
  toText (AccessAdvisorUsageGranularityType' ci) = original ci

instance Hashable AccessAdvisorUsageGranularityType

instance NFData AccessAdvisorUsageGranularityType

instance ToByteString AccessAdvisorUsageGranularityType

instance ToQuery AccessAdvisorUsageGranularityType

instance ToHeader AccessAdvisorUsageGranularityType

instance FromXML AccessAdvisorUsageGranularityType where
  parseXML = parseXMLText "AccessAdvisorUsageGranularityType"
