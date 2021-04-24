{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionAuthResponseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionAuthResponseParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionAPIKeyAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionBasicAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthResponseParameters
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the authorization parameters to use for the connection.
--
--
--
-- /See:/ 'connectionAuthResponseParameters' smart constructor.
data ConnectionAuthResponseParameters = ConnectionAuthResponseParameters'
  { _carpBasicAuthParameters ::
      !( Maybe
           ConnectionBasicAuthResponseParameters
       ),
    _carpOAuthParameters ::
      !( Maybe
           ConnectionOAuthResponseParameters
       ),
    _carpAPIKeyAuthParameters ::
      !( Maybe
           ConnectionAPIKeyAuthResponseParameters
       ),
    _carpInvocationHTTPParameters ::
      !( Maybe
           ConnectionHTTPParameters
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConnectionAuthResponseParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carpBasicAuthParameters' - The authorization parameters for Basic authorization.
--
-- * 'carpOAuthParameters' - The OAuth parameters to use for authorization.
--
-- * 'carpAPIKeyAuthParameters' - The API Key parameters to use for authorization.
--
-- * 'carpInvocationHTTPParameters' - Additional parameters for the connection that are passed through with every invocation to the HTTP endpoint.
connectionAuthResponseParameters ::
  ConnectionAuthResponseParameters
connectionAuthResponseParameters =
  ConnectionAuthResponseParameters'
    { _carpBasicAuthParameters =
        Nothing,
      _carpOAuthParameters = Nothing,
      _carpAPIKeyAuthParameters = Nothing,
      _carpInvocationHTTPParameters = Nothing
    }

-- | The authorization parameters for Basic authorization.
carpBasicAuthParameters :: Lens' ConnectionAuthResponseParameters (Maybe ConnectionBasicAuthResponseParameters)
carpBasicAuthParameters = lens _carpBasicAuthParameters (\s a -> s {_carpBasicAuthParameters = a})

-- | The OAuth parameters to use for authorization.
carpOAuthParameters :: Lens' ConnectionAuthResponseParameters (Maybe ConnectionOAuthResponseParameters)
carpOAuthParameters = lens _carpOAuthParameters (\s a -> s {_carpOAuthParameters = a})

-- | The API Key parameters to use for authorization.
carpAPIKeyAuthParameters :: Lens' ConnectionAuthResponseParameters (Maybe ConnectionAPIKeyAuthResponseParameters)
carpAPIKeyAuthParameters = lens _carpAPIKeyAuthParameters (\s a -> s {_carpAPIKeyAuthParameters = a})

-- | Additional parameters for the connection that are passed through with every invocation to the HTTP endpoint.
carpInvocationHTTPParameters :: Lens' ConnectionAuthResponseParameters (Maybe ConnectionHTTPParameters)
carpInvocationHTTPParameters = lens _carpInvocationHTTPParameters (\s a -> s {_carpInvocationHTTPParameters = a})

instance FromJSON ConnectionAuthResponseParameters where
  parseJSON =
    withObject
      "ConnectionAuthResponseParameters"
      ( \x ->
          ConnectionAuthResponseParameters'
            <$> (x .:? "BasicAuthParameters")
            <*> (x .:? "OAuthParameters")
            <*> (x .:? "ApiKeyAuthParameters")
            <*> (x .:? "InvocationHttpParameters")
      )

instance Hashable ConnectionAuthResponseParameters

instance NFData ConnectionAuthResponseParameters
