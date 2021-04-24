{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionOAuthResponseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionOAuthResponseParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthClientResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHTTPMethod
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the response parameters when OAuth is specified as the authorization type.
--
--
--
-- /See:/ 'connectionOAuthResponseParameters' smart constructor.
data ConnectionOAuthResponseParameters = ConnectionOAuthResponseParameters'
  { _coarpHTTPMethod ::
      !( Maybe
           ConnectionOAuthHTTPMethod
       ),
    _coarpClientParameters ::
      !( Maybe
           ConnectionOAuthClientResponseParameters
       ),
    _coarpAuthorizationEndpoint ::
      !( Maybe
           Text
       ),
    _coarpOAuthHTTPParameters ::
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

-- | Creates a value of 'ConnectionOAuthResponseParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coarpHTTPMethod' - The method used to connect to the HTTP endpoint.
--
-- * 'coarpClientParameters' - A @ConnectionOAuthClientResponseParameters@ object that contains details about the client parameters returned when OAuth is specified as the authorization type.
--
-- * 'coarpAuthorizationEndpoint' - The URL to the HTTP endpoint that authorized the request.
--
-- * 'coarpOAuthHTTPParameters' - The additional HTTP parameters used for the OAuth authorization request.
connectionOAuthResponseParameters ::
  ConnectionOAuthResponseParameters
connectionOAuthResponseParameters =
  ConnectionOAuthResponseParameters'
    { _coarpHTTPMethod =
        Nothing,
      _coarpClientParameters = Nothing,
      _coarpAuthorizationEndpoint = Nothing,
      _coarpOAuthHTTPParameters = Nothing
    }

-- | The method used to connect to the HTTP endpoint.
coarpHTTPMethod :: Lens' ConnectionOAuthResponseParameters (Maybe ConnectionOAuthHTTPMethod)
coarpHTTPMethod = lens _coarpHTTPMethod (\s a -> s {_coarpHTTPMethod = a})

-- | A @ConnectionOAuthClientResponseParameters@ object that contains details about the client parameters returned when OAuth is specified as the authorization type.
coarpClientParameters :: Lens' ConnectionOAuthResponseParameters (Maybe ConnectionOAuthClientResponseParameters)
coarpClientParameters = lens _coarpClientParameters (\s a -> s {_coarpClientParameters = a})

-- | The URL to the HTTP endpoint that authorized the request.
coarpAuthorizationEndpoint :: Lens' ConnectionOAuthResponseParameters (Maybe Text)
coarpAuthorizationEndpoint = lens _coarpAuthorizationEndpoint (\s a -> s {_coarpAuthorizationEndpoint = a})

-- | The additional HTTP parameters used for the OAuth authorization request.
coarpOAuthHTTPParameters :: Lens' ConnectionOAuthResponseParameters (Maybe ConnectionHTTPParameters)
coarpOAuthHTTPParameters = lens _coarpOAuthHTTPParameters (\s a -> s {_coarpOAuthHTTPParameters = a})

instance FromJSON ConnectionOAuthResponseParameters where
  parseJSON =
    withObject
      "ConnectionOAuthResponseParameters"
      ( \x ->
          ConnectionOAuthResponseParameters'
            <$> (x .:? "HttpMethod")
            <*> (x .:? "ClientParameters")
            <*> (x .:? "AuthorizationEndpoint")
            <*> (x .:? "OAuthHttpParameters")
      )

instance Hashable ConnectionOAuthResponseParameters

instance NFData ConnectionOAuthResponseParameters
