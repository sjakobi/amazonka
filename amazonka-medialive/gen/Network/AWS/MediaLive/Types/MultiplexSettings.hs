{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MultiplexSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains configuration for a Multiplex event
--
-- /See:/ 'multiplexSettings' smart constructor.
data MultiplexSettings = MultiplexSettings'
  { _mulTransportStreamReservedBitrate ::
      !(Maybe Nat),
    _mulMaximumVideoBufferDelayMilliseconds ::
      !(Maybe Nat),
    _mulTransportStreamBitrate :: !Nat,
    _mulTransportStreamId :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MultiplexSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mulTransportStreamReservedBitrate' - Transport stream reserved bit rate.
--
-- * 'mulMaximumVideoBufferDelayMilliseconds' - Maximum video buffer delay in milliseconds.
--
-- * 'mulTransportStreamBitrate' - Transport stream bit rate.
--
-- * 'mulTransportStreamId' - Transport stream ID.
multiplexSettings ::
  -- | 'mulTransportStreamBitrate'
  Natural ->
  -- | 'mulTransportStreamId'
  Natural ->
  MultiplexSettings
multiplexSettings
  pTransportStreamBitrate_
  pTransportStreamId_ =
    MultiplexSettings'
      { _mulTransportStreamReservedBitrate =
          Nothing,
        _mulMaximumVideoBufferDelayMilliseconds = Nothing,
        _mulTransportStreamBitrate =
          _Nat # pTransportStreamBitrate_,
        _mulTransportStreamId = _Nat # pTransportStreamId_
      }

-- | Transport stream reserved bit rate.
mulTransportStreamReservedBitrate :: Lens' MultiplexSettings (Maybe Natural)
mulTransportStreamReservedBitrate = lens _mulTransportStreamReservedBitrate (\s a -> s {_mulTransportStreamReservedBitrate = a}) . mapping _Nat

-- | Maximum video buffer delay in milliseconds.
mulMaximumVideoBufferDelayMilliseconds :: Lens' MultiplexSettings (Maybe Natural)
mulMaximumVideoBufferDelayMilliseconds = lens _mulMaximumVideoBufferDelayMilliseconds (\s a -> s {_mulMaximumVideoBufferDelayMilliseconds = a}) . mapping _Nat

-- | Transport stream bit rate.
mulTransportStreamBitrate :: Lens' MultiplexSettings Natural
mulTransportStreamBitrate = lens _mulTransportStreamBitrate (\s a -> s {_mulTransportStreamBitrate = a}) . _Nat

-- | Transport stream ID.
mulTransportStreamId :: Lens' MultiplexSettings Natural
mulTransportStreamId = lens _mulTransportStreamId (\s a -> s {_mulTransportStreamId = a}) . _Nat

instance FromJSON MultiplexSettings where
  parseJSON =
    withObject
      "MultiplexSettings"
      ( \x ->
          MultiplexSettings'
            <$> (x .:? "transportStreamReservedBitrate")
            <*> (x .:? "maximumVideoBufferDelayMilliseconds")
            <*> (x .: "transportStreamBitrate")
            <*> (x .: "transportStreamId")
      )

instance Hashable MultiplexSettings

instance NFData MultiplexSettings

instance ToJSON MultiplexSettings where
  toJSON MultiplexSettings' {..} =
    object
      ( catMaybes
          [ ("transportStreamReservedBitrate" .=)
              <$> _mulTransportStreamReservedBitrate,
            ("maximumVideoBufferDelayMilliseconds" .=)
              <$> _mulMaximumVideoBufferDelayMilliseconds,
            Just
              ( "transportStreamBitrate"
                  .= _mulTransportStreamBitrate
              ),
            Just ("transportStreamId" .= _mulTransportStreamId)
          ]
      )
