{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.QueueStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.QueueStatus
  ( QueueStatus
      ( ..,
        Active,
        Paused
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause a queue continue to run until they finish or result in an error.
data QueueStatus = QueueStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: QueueStatus
pattern Active = QueueStatus' "ACTIVE"

pattern Paused :: QueueStatus
pattern Paused = QueueStatus' "PAUSED"

{-# COMPLETE
  Active,
  Paused,
  QueueStatus'
  #-}

instance FromText QueueStatus where
  parser = (QueueStatus' . mk) <$> takeText

instance ToText QueueStatus where
  toText (QueueStatus' ci) = original ci

instance Hashable QueueStatus

instance NFData QueueStatus

instance ToByteString QueueStatus

instance ToQuery QueueStatus

instance ToHeader QueueStatus

instance ToJSON QueueStatus where
  toJSON = toJSONText

instance FromJSON QueueStatus where
  parseJSON = parseJSONText "QueueStatus"
