{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsAkamaiSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsAkamaiSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.HlsAkamaiHTTPTransferMode
import Network.AWS.Prelude

-- | Hls Akamai Settings
--
-- /See:/ 'hlsAkamaiSettings' smart constructor.
data HlsAkamaiSettings = HlsAkamaiSettings'
  { _hasFilecacheDuration ::
      !(Maybe Nat),
    _hasNumRetries :: !(Maybe Nat),
    _hasHTTPTransferMode ::
      !(Maybe HlsAkamaiHTTPTransferMode),
    _hasConnectionRetryInterval ::
      !(Maybe Nat),
    _hasToken :: !(Maybe Text),
    _hasRestartDelay :: !(Maybe Nat),
    _hasSalt :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HlsAkamaiSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hasFilecacheDuration' - Size in seconds of file cache for streaming outputs.
--
-- * 'hasNumRetries' - Number of retry attempts that will be made before the Live Event is put into an error state.
--
-- * 'hasHTTPTransferMode' - Specify whether or not to use chunked transfer encoding to Akamai. User should contact Akamai to enable this feature.
--
-- * 'hasConnectionRetryInterval' - Number of seconds to wait before retrying connection to the CDN if the connection is lost.
--
-- * 'hasToken' - Token parameter for authenticated akamai. If not specified, _gda_ is used.
--
-- * 'hasRestartDelay' - If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
--
-- * 'hasSalt' - Salt for authenticated Akamai.
hlsAkamaiSettings ::
  HlsAkamaiSettings
hlsAkamaiSettings =
  HlsAkamaiSettings'
    { _hasFilecacheDuration = Nothing,
      _hasNumRetries = Nothing,
      _hasHTTPTransferMode = Nothing,
      _hasConnectionRetryInterval = Nothing,
      _hasToken = Nothing,
      _hasRestartDelay = Nothing,
      _hasSalt = Nothing
    }

-- | Size in seconds of file cache for streaming outputs.
hasFilecacheDuration :: Lens' HlsAkamaiSettings (Maybe Natural)
hasFilecacheDuration = lens _hasFilecacheDuration (\s a -> s {_hasFilecacheDuration = a}) . mapping _Nat

-- | Number of retry attempts that will be made before the Live Event is put into an error state.
hasNumRetries :: Lens' HlsAkamaiSettings (Maybe Natural)
hasNumRetries = lens _hasNumRetries (\s a -> s {_hasNumRetries = a}) . mapping _Nat

-- | Specify whether or not to use chunked transfer encoding to Akamai. User should contact Akamai to enable this feature.
hasHTTPTransferMode :: Lens' HlsAkamaiSettings (Maybe HlsAkamaiHTTPTransferMode)
hasHTTPTransferMode = lens _hasHTTPTransferMode (\s a -> s {_hasHTTPTransferMode = a})

-- | Number of seconds to wait before retrying connection to the CDN if the connection is lost.
hasConnectionRetryInterval :: Lens' HlsAkamaiSettings (Maybe Natural)
hasConnectionRetryInterval = lens _hasConnectionRetryInterval (\s a -> s {_hasConnectionRetryInterval = a}) . mapping _Nat

-- | Token parameter for authenticated akamai. If not specified, _gda_ is used.
hasToken :: Lens' HlsAkamaiSettings (Maybe Text)
hasToken = lens _hasToken (\s a -> s {_hasToken = a})

-- | If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
hasRestartDelay :: Lens' HlsAkamaiSettings (Maybe Natural)
hasRestartDelay = lens _hasRestartDelay (\s a -> s {_hasRestartDelay = a}) . mapping _Nat

-- | Salt for authenticated Akamai.
hasSalt :: Lens' HlsAkamaiSettings (Maybe Text)
hasSalt = lens _hasSalt (\s a -> s {_hasSalt = a})

instance FromJSON HlsAkamaiSettings where
  parseJSON =
    withObject
      "HlsAkamaiSettings"
      ( \x ->
          HlsAkamaiSettings'
            <$> (x .:? "filecacheDuration")
            <*> (x .:? "numRetries")
            <*> (x .:? "httpTransferMode")
            <*> (x .:? "connectionRetryInterval")
            <*> (x .:? "token")
            <*> (x .:? "restartDelay")
            <*> (x .:? "salt")
      )

instance Hashable HlsAkamaiSettings

instance NFData HlsAkamaiSettings

instance ToJSON HlsAkamaiSettings where
  toJSON HlsAkamaiSettings' {..} =
    object
      ( catMaybes
          [ ("filecacheDuration" .=) <$> _hasFilecacheDuration,
            ("numRetries" .=) <$> _hasNumRetries,
            ("httpTransferMode" .=) <$> _hasHTTPTransferMode,
            ("connectionRetryInterval" .=)
              <$> _hasConnectionRetryInterval,
            ("token" .=) <$> _hasToken,
            ("restartDelay" .=) <$> _hasRestartDelay,
            ("salt" .=) <$> _hasSalt
          ]
      )
