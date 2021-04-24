{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types.StreamingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.StreamingStatus
  ( StreamingStatus
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StreamingStatus = StreamingStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: StreamingStatus
pattern Disabled = StreamingStatus' "DISABLED"

pattern Enabled :: StreamingStatus
pattern Enabled = StreamingStatus' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  StreamingStatus'
  #-}

instance FromText StreamingStatus where
  parser = (StreamingStatus' . mk) <$> takeText

instance ToText StreamingStatus where
  toText (StreamingStatus' ci) = original ci

instance Hashable StreamingStatus

instance NFData StreamingStatus

instance ToByteString StreamingStatus

instance ToQuery StreamingStatus

instance ToHeader StreamingStatus

instance ToJSON StreamingStatus where
  toJSON = toJSONText

instance FromJSON StreamingStatus where
  parseJSON = parseJSONText "StreamingStatus"
