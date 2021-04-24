{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionOAuthClientResponseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionOAuthClientResponseParameters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the client response parameters for the connection when OAuth is specified as the authorization type.
--
--
--
-- /See:/ 'connectionOAuthClientResponseParameters' smart constructor.
newtype ConnectionOAuthClientResponseParameters = ConnectionOAuthClientResponseParameters'
  { _coacrpClientId ::
      Maybe
        Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConnectionOAuthClientResponseParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coacrpClientId' - The client ID associated with the response to the connection request.
connectionOAuthClientResponseParameters ::
  ConnectionOAuthClientResponseParameters
connectionOAuthClientResponseParameters =
  ConnectionOAuthClientResponseParameters'
    { _coacrpClientId =
        Nothing
    }

-- | The client ID associated with the response to the connection request.
coacrpClientId :: Lens' ConnectionOAuthClientResponseParameters (Maybe Text)
coacrpClientId = lens _coacrpClientId (\s a -> s {_coacrpClientId = a})

instance
  FromJSON
    ConnectionOAuthClientResponseParameters
  where
  parseJSON =
    withObject
      "ConnectionOAuthClientResponseParameters"
      ( \x ->
          ConnectionOAuthClientResponseParameters'
            <$> (x .:? "ClientID")
      )

instance
  Hashable
    ConnectionOAuthClientResponseParameters

instance
  NFData
    ConnectionOAuthClientResponseParameters
