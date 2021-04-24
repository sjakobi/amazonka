{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ReplicationRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ReplicationRuleStatus
  ( ReplicationRuleStatus
      ( ..,
        RRSDisabled,
        RRSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data ReplicationRuleStatus
  = ReplicationRuleStatus'
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

pattern RRSDisabled :: ReplicationRuleStatus
pattern RRSDisabled = ReplicationRuleStatus' "Disabled"

pattern RRSEnabled :: ReplicationRuleStatus
pattern RRSEnabled = ReplicationRuleStatus' "Enabled"

{-# COMPLETE
  RRSDisabled,
  RRSEnabled,
  ReplicationRuleStatus'
  #-}

instance FromText ReplicationRuleStatus where
  parser = (ReplicationRuleStatus' . mk) <$> takeText

instance ToText ReplicationRuleStatus where
  toText (ReplicationRuleStatus' ci) = original ci

instance Hashable ReplicationRuleStatus

instance NFData ReplicationRuleStatus

instance ToByteString ReplicationRuleStatus

instance ToQuery ReplicationRuleStatus

instance ToHeader ReplicationRuleStatus

instance FromXML ReplicationRuleStatus where
  parseXML = parseXMLText "ReplicationRuleStatus"

instance ToXML ReplicationRuleStatus where
  toXML = toXMLText
