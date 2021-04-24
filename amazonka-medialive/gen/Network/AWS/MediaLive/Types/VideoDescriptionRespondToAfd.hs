{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoDescriptionRespondToAfd
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoDescriptionRespondToAfd
  ( VideoDescriptionRespondToAfd
      ( ..,
        VDRTANone,
        VDRTAPassthrough,
        VDRTARespond
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Video Description Respond To Afd
data VideoDescriptionRespondToAfd
  = VideoDescriptionRespondToAfd'
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

pattern VDRTANone :: VideoDescriptionRespondToAfd
pattern VDRTANone = VideoDescriptionRespondToAfd' "NONE"

pattern VDRTAPassthrough :: VideoDescriptionRespondToAfd
pattern VDRTAPassthrough = VideoDescriptionRespondToAfd' "PASSTHROUGH"

pattern VDRTARespond :: VideoDescriptionRespondToAfd
pattern VDRTARespond = VideoDescriptionRespondToAfd' "RESPOND"

{-# COMPLETE
  VDRTANone,
  VDRTAPassthrough,
  VDRTARespond,
  VideoDescriptionRespondToAfd'
  #-}

instance FromText VideoDescriptionRespondToAfd where
  parser = (VideoDescriptionRespondToAfd' . mk) <$> takeText

instance ToText VideoDescriptionRespondToAfd where
  toText (VideoDescriptionRespondToAfd' ci) = original ci

instance Hashable VideoDescriptionRespondToAfd

instance NFData VideoDescriptionRespondToAfd

instance ToByteString VideoDescriptionRespondToAfd

instance ToQuery VideoDescriptionRespondToAfd

instance ToHeader VideoDescriptionRespondToAfd

instance ToJSON VideoDescriptionRespondToAfd where
  toJSON = toJSONText

instance FromJSON VideoDescriptionRespondToAfd where
  parseJSON = parseJSONText "VideoDescriptionRespondToAfd"
