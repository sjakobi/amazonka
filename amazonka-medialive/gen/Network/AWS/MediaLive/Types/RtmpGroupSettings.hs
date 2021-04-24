{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.RtmpGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpGroupSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.AuthenticationScheme
import Network.AWS.MediaLive.Types.InputLossActionForRtmpOut
import Network.AWS.MediaLive.Types.RtmpAdMarkers
import Network.AWS.MediaLive.Types.RtmpCacheFullBehavior
import Network.AWS.MediaLive.Types.RtmpCaptionData
import Network.AWS.Prelude

-- | Rtmp Group Settings
--
-- /See:/ 'rtmpGroupSettings' smart constructor.
data RtmpGroupSettings = RtmpGroupSettings'
  { _rgsAdMarkers ::
      !(Maybe [RtmpAdMarkers]),
    _rgsCaptionData ::
      !(Maybe RtmpCaptionData),
    _rgsCacheFullBehavior ::
      !(Maybe RtmpCacheFullBehavior),
    _rgsCacheLength :: !(Maybe Nat),
    _rgsAuthenticationScheme ::
      !(Maybe AuthenticationScheme),
    _rgsInputLossAction ::
      !(Maybe InputLossActionForRtmpOut),
    _rgsRestartDelay :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RtmpGroupSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsAdMarkers' - Choose the ad marker type for this output group. MediaLive will create a message based on the content of each SCTE-35 message, format it for that marker type, and insert it in the datastream.
--
-- * 'rgsCaptionData' - Controls the types of data that passes to onCaptionInfo outputs.  If set to 'all' then 608 and 708 carried DTVCC data will be passed.  If set to 'field1AndField2608' then DTVCC data will be stripped out, but 608 data from both fields will be passed. If set to 'field1608' then only the data carried in 608 from field 1 video will be passed.
--
-- * 'rgsCacheFullBehavior' - Controls behavior when content cache fills up. If remote origin server stalls the RTMP connection and does not accept content fast enough the 'Media Cache' will fill up. When the cache reaches the duration specified by cacheLength the cache will stop accepting new content. If set to disconnectImmediately, the RTMP output will force a disconnect. Clear the media cache, and reconnect after restartDelay seconds. If set to waitForServer, the RTMP output will wait up to 5 minutes to allow the origin server to begin accepting data again.
--
-- * 'rgsCacheLength' - Cache length, in seconds, is used to calculate buffer size.
--
-- * 'rgsAuthenticationScheme' - Authentication scheme to use when connecting with CDN
--
-- * 'rgsInputLossAction' - Controls the behavior of this RTMP group if input becomes unavailable. - emitOutput: Emit a slate until input returns. - pauseOutput: Stop transmitting data until input returns. This does not close the underlying RTMP connection.
--
-- * 'rgsRestartDelay' - If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
rtmpGroupSettings ::
  RtmpGroupSettings
rtmpGroupSettings =
  RtmpGroupSettings'
    { _rgsAdMarkers = Nothing,
      _rgsCaptionData = Nothing,
      _rgsCacheFullBehavior = Nothing,
      _rgsCacheLength = Nothing,
      _rgsAuthenticationScheme = Nothing,
      _rgsInputLossAction = Nothing,
      _rgsRestartDelay = Nothing
    }

-- | Choose the ad marker type for this output group. MediaLive will create a message based on the content of each SCTE-35 message, format it for that marker type, and insert it in the datastream.
rgsAdMarkers :: Lens' RtmpGroupSettings [RtmpAdMarkers]
rgsAdMarkers = lens _rgsAdMarkers (\s a -> s {_rgsAdMarkers = a}) . _Default . _Coerce

-- | Controls the types of data that passes to onCaptionInfo outputs.  If set to 'all' then 608 and 708 carried DTVCC data will be passed.  If set to 'field1AndField2608' then DTVCC data will be stripped out, but 608 data from both fields will be passed. If set to 'field1608' then only the data carried in 608 from field 1 video will be passed.
rgsCaptionData :: Lens' RtmpGroupSettings (Maybe RtmpCaptionData)
rgsCaptionData = lens _rgsCaptionData (\s a -> s {_rgsCaptionData = a})

-- | Controls behavior when content cache fills up. If remote origin server stalls the RTMP connection and does not accept content fast enough the 'Media Cache' will fill up. When the cache reaches the duration specified by cacheLength the cache will stop accepting new content. If set to disconnectImmediately, the RTMP output will force a disconnect. Clear the media cache, and reconnect after restartDelay seconds. If set to waitForServer, the RTMP output will wait up to 5 minutes to allow the origin server to begin accepting data again.
rgsCacheFullBehavior :: Lens' RtmpGroupSettings (Maybe RtmpCacheFullBehavior)
rgsCacheFullBehavior = lens _rgsCacheFullBehavior (\s a -> s {_rgsCacheFullBehavior = a})

-- | Cache length, in seconds, is used to calculate buffer size.
rgsCacheLength :: Lens' RtmpGroupSettings (Maybe Natural)
rgsCacheLength = lens _rgsCacheLength (\s a -> s {_rgsCacheLength = a}) . mapping _Nat

-- | Authentication scheme to use when connecting with CDN
rgsAuthenticationScheme :: Lens' RtmpGroupSettings (Maybe AuthenticationScheme)
rgsAuthenticationScheme = lens _rgsAuthenticationScheme (\s a -> s {_rgsAuthenticationScheme = a})

-- | Controls the behavior of this RTMP group if input becomes unavailable. - emitOutput: Emit a slate until input returns. - pauseOutput: Stop transmitting data until input returns. This does not close the underlying RTMP connection.
rgsInputLossAction :: Lens' RtmpGroupSettings (Maybe InputLossActionForRtmpOut)
rgsInputLossAction = lens _rgsInputLossAction (\s a -> s {_rgsInputLossAction = a})

-- | If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
rgsRestartDelay :: Lens' RtmpGroupSettings (Maybe Natural)
rgsRestartDelay = lens _rgsRestartDelay (\s a -> s {_rgsRestartDelay = a}) . mapping _Nat

instance FromJSON RtmpGroupSettings where
  parseJSON =
    withObject
      "RtmpGroupSettings"
      ( \x ->
          RtmpGroupSettings'
            <$> (x .:? "adMarkers" .!= mempty)
            <*> (x .:? "captionData")
            <*> (x .:? "cacheFullBehavior")
            <*> (x .:? "cacheLength")
            <*> (x .:? "authenticationScheme")
            <*> (x .:? "inputLossAction")
            <*> (x .:? "restartDelay")
      )

instance Hashable RtmpGroupSettings

instance NFData RtmpGroupSettings

instance ToJSON RtmpGroupSettings where
  toJSON RtmpGroupSettings' {..} =
    object
      ( catMaybes
          [ ("adMarkers" .=) <$> _rgsAdMarkers,
            ("captionData" .=) <$> _rgsCaptionData,
            ("cacheFullBehavior" .=) <$> _rgsCacheFullBehavior,
            ("cacheLength" .=) <$> _rgsCacheLength,
            ("authenticationScheme" .=)
              <$> _rgsAuthenticationScheme,
            ("inputLossAction" .=) <$> _rgsInputLossAction,
            ("restartDelay" .=) <$> _rgsRestartDelay
          ]
      )
