{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.Types.StreamStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.StreamStatus
  ( StreamStatus
      ( ..,
        SSActive,
        SSCreating,
        SSDeleting,
        SSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StreamStatus = StreamStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSActive :: StreamStatus
pattern SSActive = StreamStatus' "ACTIVE"

pattern SSCreating :: StreamStatus
pattern SSCreating = StreamStatus' "CREATING"

pattern SSDeleting :: StreamStatus
pattern SSDeleting = StreamStatus' "DELETING"

pattern SSUpdating :: StreamStatus
pattern SSUpdating = StreamStatus' "UPDATING"

{-# COMPLETE
  SSActive,
  SSCreating,
  SSDeleting,
  SSUpdating,
  StreamStatus'
  #-}

instance FromText StreamStatus where
  parser = (StreamStatus' . mk) <$> takeText

instance ToText StreamStatus where
  toText (StreamStatus' ci) = original ci

instance Hashable StreamStatus

instance NFData StreamStatus

instance ToByteString StreamStatus

instance ToQuery StreamStatus

instance ToHeader StreamStatus

instance FromJSON StreamStatus where
  parseJSON = parseJSONText "StreamStatus"
