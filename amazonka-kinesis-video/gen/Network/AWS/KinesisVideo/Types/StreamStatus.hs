{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.StreamStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.StreamStatus
  ( StreamStatus
      ( ..,
        Active,
        Creating,
        Deleting,
        Updating
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

pattern Active :: StreamStatus
pattern Active = StreamStatus' "ACTIVE"

pattern Creating :: StreamStatus
pattern Creating = StreamStatus' "CREATING"

pattern Deleting :: StreamStatus
pattern Deleting = StreamStatus' "DELETING"

pattern Updating :: StreamStatus
pattern Updating = StreamStatus' "UPDATING"

{-# COMPLETE
  Active,
  Creating,
  Deleting,
  Updating,
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
