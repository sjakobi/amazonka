{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupEventStopBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupEventStopBehavior
  ( SmoothGroupEventStopBehavior
      ( ..,
        SGESBNone,
        SGESBSendEos
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Smooth Group Event Stop Behavior
data SmoothGroupEventStopBehavior
  = SmoothGroupEventStopBehavior'
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

pattern SGESBNone :: SmoothGroupEventStopBehavior
pattern SGESBNone = SmoothGroupEventStopBehavior' "NONE"

pattern SGESBSendEos :: SmoothGroupEventStopBehavior
pattern SGESBSendEos = SmoothGroupEventStopBehavior' "SEND_EOS"

{-# COMPLETE
  SGESBNone,
  SGESBSendEos,
  SmoothGroupEventStopBehavior'
  #-}

instance FromText SmoothGroupEventStopBehavior where
  parser = (SmoothGroupEventStopBehavior' . mk) <$> takeText

instance ToText SmoothGroupEventStopBehavior where
  toText (SmoothGroupEventStopBehavior' ci) = original ci

instance Hashable SmoothGroupEventStopBehavior

instance NFData SmoothGroupEventStopBehavior

instance ToByteString SmoothGroupEventStopBehavior

instance ToQuery SmoothGroupEventStopBehavior

instance ToHeader SmoothGroupEventStopBehavior

instance ToJSON SmoothGroupEventStopBehavior where
  toJSON = toJSONText

instance FromJSON SmoothGroupEventStopBehavior where
  parseJSON = parseJSONText "SmoothGroupEventStopBehavior"
