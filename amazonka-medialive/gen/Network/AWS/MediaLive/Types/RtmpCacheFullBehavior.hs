{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.RtmpCacheFullBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpCacheFullBehavior
  ( RtmpCacheFullBehavior
      ( ..,
        DisconnectImmediately,
        WaitForServer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Rtmp Cache Full Behavior
data RtmpCacheFullBehavior
  = RtmpCacheFullBehavior'
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

pattern DisconnectImmediately :: RtmpCacheFullBehavior
pattern DisconnectImmediately = RtmpCacheFullBehavior' "DISCONNECT_IMMEDIATELY"

pattern WaitForServer :: RtmpCacheFullBehavior
pattern WaitForServer = RtmpCacheFullBehavior' "WAIT_FOR_SERVER"

{-# COMPLETE
  DisconnectImmediately,
  WaitForServer,
  RtmpCacheFullBehavior'
  #-}

instance FromText RtmpCacheFullBehavior where
  parser = (RtmpCacheFullBehavior' . mk) <$> takeText

instance ToText RtmpCacheFullBehavior where
  toText (RtmpCacheFullBehavior' ci) = original ci

instance Hashable RtmpCacheFullBehavior

instance NFData RtmpCacheFullBehavior

instance ToByteString RtmpCacheFullBehavior

instance ToQuery RtmpCacheFullBehavior

instance ToHeader RtmpCacheFullBehavior

instance ToJSON RtmpCacheFullBehavior where
  toJSON = toJSONText

instance FromJSON RtmpCacheFullBehavior where
  parseJSON = parseJSONText "RtmpCacheFullBehavior"
