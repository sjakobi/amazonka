{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.TopicStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TopicStatus
  ( TopicStatus
      ( ..,
        TDeleted,
        TFailed,
        TRegistered,
        TTopicNotFound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TopicStatus = TopicStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TDeleted :: TopicStatus
pattern TDeleted = TopicStatus' "Deleted"

pattern TFailed :: TopicStatus
pattern TFailed = TopicStatus' "Failed"

pattern TRegistered :: TopicStatus
pattern TRegistered = TopicStatus' "Registered"

pattern TTopicNotFound :: TopicStatus
pattern TTopicNotFound = TopicStatus' "Topic not found"

{-# COMPLETE
  TDeleted,
  TFailed,
  TRegistered,
  TTopicNotFound,
  TopicStatus'
  #-}

instance FromText TopicStatus where
  parser = (TopicStatus' . mk) <$> takeText

instance ToText TopicStatus where
  toText (TopicStatus' ci) = original ci

instance Hashable TopicStatus

instance NFData TopicStatus

instance ToByteString TopicStatus

instance ToQuery TopicStatus

instance ToHeader TopicStatus

instance FromJSON TopicStatus where
  parseJSON = parseJSONText "TopicStatus"
