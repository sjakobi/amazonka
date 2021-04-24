{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ADMChannelRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ADMChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status and settings of the ADM (Amazon Device Messaging) channel for an application.
--
--
--
-- /See:/ 'aDMChannelRequest' smart constructor.
data ADMChannelRequest = ADMChannelRequest'
  { _aEnabled ::
      !(Maybe Bool),
    _aClientSecret :: !Text,
    _aClientId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ADMChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEnabled' - Specifies whether to enable the ADM channel for the application.
--
-- * 'aClientSecret' - The Client Secret that you received from Amazon to send messages by using ADM.
--
-- * 'aClientId' - The Client ID that you received from Amazon to send messages by using ADM.
aDMChannelRequest ::
  -- | 'aClientSecret'
  Text ->
  -- | 'aClientId'
  Text ->
  ADMChannelRequest
aDMChannelRequest pClientSecret_ pClientId_ =
  ADMChannelRequest'
    { _aEnabled = Nothing,
      _aClientSecret = pClientSecret_,
      _aClientId = pClientId_
    }

-- | Specifies whether to enable the ADM channel for the application.
aEnabled :: Lens' ADMChannelRequest (Maybe Bool)
aEnabled = lens _aEnabled (\s a -> s {_aEnabled = a})

-- | The Client Secret that you received from Amazon to send messages by using ADM.
aClientSecret :: Lens' ADMChannelRequest Text
aClientSecret = lens _aClientSecret (\s a -> s {_aClientSecret = a})

-- | The Client ID that you received from Amazon to send messages by using ADM.
aClientId :: Lens' ADMChannelRequest Text
aClientId = lens _aClientId (\s a -> s {_aClientId = a})

instance Hashable ADMChannelRequest

instance NFData ADMChannelRequest

instance ToJSON ADMChannelRequest where
  toJSON ADMChannelRequest' {..} =
    object
      ( catMaybes
          [ ("Enabled" .=) <$> _aEnabled,
            Just ("ClientSecret" .= _aClientSecret),
            Just ("ClientId" .= _aClientId)
          ]
      )
