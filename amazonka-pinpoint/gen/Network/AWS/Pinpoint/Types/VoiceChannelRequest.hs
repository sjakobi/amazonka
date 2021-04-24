{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.VoiceChannelRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.VoiceChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status and settings of the voice channel for an application.
--
--
--
-- /See:/ 'voiceChannelRequest' smart constructor.
newtype VoiceChannelRequest = VoiceChannelRequest'
  { _vEnabled ::
      Maybe Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VoiceChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vEnabled' - Specifies whether to enable the voice channel for the application.
voiceChannelRequest ::
  VoiceChannelRequest
voiceChannelRequest =
  VoiceChannelRequest' {_vEnabled = Nothing}

-- | Specifies whether to enable the voice channel for the application.
vEnabled :: Lens' VoiceChannelRequest (Maybe Bool)
vEnabled = lens _vEnabled (\s a -> s {_vEnabled = a})

instance Hashable VoiceChannelRequest

instance NFData VoiceChannelRequest

instance ToJSON VoiceChannelRequest where
  toJSON VoiceChannelRequest' {..} =
    object (catMaybes [("Enabled" .=) <$> _vEnabled])
