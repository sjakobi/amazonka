{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.VideoJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.VideoJobStatus
  ( VideoJobStatus
      ( ..,
        Failed,
        InProgress,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VideoJobStatus = VideoJobStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: VideoJobStatus
pattern Failed = VideoJobStatus' "FAILED"

pattern InProgress :: VideoJobStatus
pattern InProgress = VideoJobStatus' "IN_PROGRESS"

pattern Succeeded :: VideoJobStatus
pattern Succeeded = VideoJobStatus' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  Succeeded,
  VideoJobStatus'
  #-}

instance FromText VideoJobStatus where
  parser = (VideoJobStatus' . mk) <$> takeText

instance ToText VideoJobStatus where
  toText (VideoJobStatus' ci) = original ci

instance Hashable VideoJobStatus

instance NFData VideoJobStatus

instance ToByteString VideoJobStatus

instance ToQuery VideoJobStatus

instance ToHeader VideoJobStatus

instance FromJSON VideoJobStatus where
  parseJSON = parseJSONText "VideoJobStatus"
