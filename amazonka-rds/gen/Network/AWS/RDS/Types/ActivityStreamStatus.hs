{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.ActivityStreamStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ActivityStreamStatus
  ( ActivityStreamStatus
      ( ..,
        Started,
        Starting,
        Stopped,
        Stopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActivityStreamStatus
  = ActivityStreamStatus'
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

pattern Started :: ActivityStreamStatus
pattern Started = ActivityStreamStatus' "started"

pattern Starting :: ActivityStreamStatus
pattern Starting = ActivityStreamStatus' "starting"

pattern Stopped :: ActivityStreamStatus
pattern Stopped = ActivityStreamStatus' "stopped"

pattern Stopping :: ActivityStreamStatus
pattern Stopping = ActivityStreamStatus' "stopping"

{-# COMPLETE
  Started,
  Starting,
  Stopped,
  Stopping,
  ActivityStreamStatus'
  #-}

instance FromText ActivityStreamStatus where
  parser = (ActivityStreamStatus' . mk) <$> takeText

instance ToText ActivityStreamStatus where
  toText (ActivityStreamStatus' ci) = original ci

instance Hashable ActivityStreamStatus

instance NFData ActivityStreamStatus

instance ToByteString ActivityStreamStatus

instance ToQuery ActivityStreamStatus

instance ToHeader ActivityStreamStatus

instance FromXML ActivityStreamStatus where
  parseXML = parseXMLText "ActivityStreamStatus"
