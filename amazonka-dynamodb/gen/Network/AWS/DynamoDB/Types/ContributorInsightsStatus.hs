{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ContributorInsightsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ContributorInsightsStatus
  ( ContributorInsightsStatus
      ( ..,
        Disabled,
        Disabling,
        Enabled,
        Enabling,
        Failed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContributorInsightsStatus
  = ContributorInsightsStatus'
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

pattern Disabled :: ContributorInsightsStatus
pattern Disabled = ContributorInsightsStatus' "DISABLED"

pattern Disabling :: ContributorInsightsStatus
pattern Disabling = ContributorInsightsStatus' "DISABLING"

pattern Enabled :: ContributorInsightsStatus
pattern Enabled = ContributorInsightsStatus' "ENABLED"

pattern Enabling :: ContributorInsightsStatus
pattern Enabling = ContributorInsightsStatus' "ENABLING"

pattern Failed :: ContributorInsightsStatus
pattern Failed = ContributorInsightsStatus' "FAILED"

{-# COMPLETE
  Disabled,
  Disabling,
  Enabled,
  Enabling,
  Failed,
  ContributorInsightsStatus'
  #-}

instance FromText ContributorInsightsStatus where
  parser = (ContributorInsightsStatus' . mk) <$> takeText

instance ToText ContributorInsightsStatus where
  toText (ContributorInsightsStatus' ci) = original ci

instance Hashable ContributorInsightsStatus

instance NFData ContributorInsightsStatus

instance ToByteString ContributorInsightsStatus

instance ToQuery ContributorInsightsStatus

instance ToHeader ContributorInsightsStatus

instance FromJSON ContributorInsightsStatus where
  parseJSON = parseJSONText "ContributorInsightsStatus"
