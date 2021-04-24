{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.TopicRuleDestinationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TopicRuleDestinationStatus
  ( TopicRuleDestinationStatus
      ( ..,
        TRDSDeleting,
        TRDSDisabled,
        TRDSEnabled,
        TRDSError',
        TRDSInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TopicRuleDestinationStatus
  = TopicRuleDestinationStatus'
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

pattern TRDSDeleting :: TopicRuleDestinationStatus
pattern TRDSDeleting = TopicRuleDestinationStatus' "DELETING"

pattern TRDSDisabled :: TopicRuleDestinationStatus
pattern TRDSDisabled = TopicRuleDestinationStatus' "DISABLED"

pattern TRDSEnabled :: TopicRuleDestinationStatus
pattern TRDSEnabled = TopicRuleDestinationStatus' "ENABLED"

pattern TRDSError' :: TopicRuleDestinationStatus
pattern TRDSError' = TopicRuleDestinationStatus' "ERROR"

pattern TRDSInProgress :: TopicRuleDestinationStatus
pattern TRDSInProgress = TopicRuleDestinationStatus' "IN_PROGRESS"

{-# COMPLETE
  TRDSDeleting,
  TRDSDisabled,
  TRDSEnabled,
  TRDSError',
  TRDSInProgress,
  TopicRuleDestinationStatus'
  #-}

instance FromText TopicRuleDestinationStatus where
  parser = (TopicRuleDestinationStatus' . mk) <$> takeText

instance ToText TopicRuleDestinationStatus where
  toText (TopicRuleDestinationStatus' ci) = original ci

instance Hashable TopicRuleDestinationStatus

instance NFData TopicRuleDestinationStatus

instance ToByteString TopicRuleDestinationStatus

instance ToQuery TopicRuleDestinationStatus

instance ToHeader TopicRuleDestinationStatus

instance ToJSON TopicRuleDestinationStatus where
  toJSON = toJSONText

instance FromJSON TopicRuleDestinationStatus where
  parseJSON = parseJSONText "TopicRuleDestinationStatus"
