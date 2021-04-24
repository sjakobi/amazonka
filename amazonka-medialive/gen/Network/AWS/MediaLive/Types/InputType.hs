{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputType
  ( InputType
      ( ..,
        AWSCdi,
        InputDevice,
        MP4File,
        Mediaconnect,
        RtmpPull,
        RtmpPush,
        RtpPush,
        URLPull,
        UdpPush
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for InputType
data InputType = InputType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSCdi :: InputType
pattern AWSCdi = InputType' "AWS_CDI"

pattern InputDevice :: InputType
pattern InputDevice = InputType' "INPUT_DEVICE"

pattern MP4File :: InputType
pattern MP4File = InputType' "MP4_FILE"

pattern Mediaconnect :: InputType
pattern Mediaconnect = InputType' "MEDIACONNECT"

pattern RtmpPull :: InputType
pattern RtmpPull = InputType' "RTMP_PULL"

pattern RtmpPush :: InputType
pattern RtmpPush = InputType' "RTMP_PUSH"

pattern RtpPush :: InputType
pattern RtpPush = InputType' "RTP_PUSH"

pattern URLPull :: InputType
pattern URLPull = InputType' "URL_PULL"

pattern UdpPush :: InputType
pattern UdpPush = InputType' "UDP_PUSH"

{-# COMPLETE
  AWSCdi,
  InputDevice,
  MP4File,
  Mediaconnect,
  RtmpPull,
  RtmpPush,
  RtpPush,
  URLPull,
  UdpPush,
  InputType'
  #-}

instance FromText InputType where
  parser = (InputType' . mk) <$> takeText

instance ToText InputType where
  toText (InputType' ci) = original ci

instance Hashable InputType

instance NFData InputType

instance ToByteString InputType

instance ToQuery InputType

instance ToHeader InputType

instance ToJSON InputType where
  toJSON = toJSONText

instance FromJSON InputType where
  parseJSON = parseJSONText "InputType"
