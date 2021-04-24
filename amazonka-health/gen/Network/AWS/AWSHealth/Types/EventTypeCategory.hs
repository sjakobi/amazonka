{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types.EventTypeCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventTypeCategory
  ( EventTypeCategory
      ( ..,
        AccountNotification,
        Investigation,
        Issue,
        ScheduledChange
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventTypeCategory = EventTypeCategory' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AccountNotification :: EventTypeCategory
pattern AccountNotification = EventTypeCategory' "accountNotification"

pattern Investigation :: EventTypeCategory
pattern Investigation = EventTypeCategory' "investigation"

pattern Issue :: EventTypeCategory
pattern Issue = EventTypeCategory' "issue"

pattern ScheduledChange :: EventTypeCategory
pattern ScheduledChange = EventTypeCategory' "scheduledChange"

{-# COMPLETE
  AccountNotification,
  Investigation,
  Issue,
  ScheduledChange,
  EventTypeCategory'
  #-}

instance FromText EventTypeCategory where
  parser = (EventTypeCategory' . mk) <$> takeText

instance ToText EventTypeCategory where
  toText (EventTypeCategory' ci) = original ci

instance Hashable EventTypeCategory

instance NFData EventTypeCategory

instance ToByteString EventTypeCategory

instance ToQuery EventTypeCategory

instance ToHeader EventTypeCategory

instance ToJSON EventTypeCategory where
  toJSON = toJSONText

instance FromJSON EventTypeCategory where
  parseJSON = parseJSONText "EventTypeCategory"
