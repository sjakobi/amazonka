{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthRequestParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHTTPMethod
import Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthClientRequestParameters
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the OAuth authorization parameters to use for the connection.
--
--
--
-- /See:/ 'createConnectionOAuthRequestParameters' smart constructor.
data CreateConnectionOAuthRequestParameters = CreateConnectionOAuthRequestParameters'
  { _ccoarpOAuthHTTPParameters ::
      !( Maybe
           ConnectionHTTPParameters
       ),
    _ccoarpClientParameters ::
      !CreateConnectionOAuthClientRequestParameters,
    _ccoarpAuthorizationEndpoint ::
      !Text,
    _ccoarpHTTPMethod ::
      !ConnectionOAuthHTTPMethod
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateConnectionOAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccoarpOAuthHTTPParameters' - A @ConnectionHttpParameters@ object that contains details about the additional parameters to use for the connection.
--
-- * 'ccoarpClientParameters' - A @CreateConnectionOAuthClientRequestParameters@ object that contains the client parameters for OAuth authorization.
--
-- * 'ccoarpAuthorizationEndpoint' - The URL to the authorization endpoint when OAuth is specified as the authorization type.
--
-- * 'ccoarpHTTPMethod' - The method to use for the authorization request.
createConnectionOAuthRequestParameters ::
  -- | 'ccoarpClientParameters'
  CreateConnectionOAuthClientRequestParameters ->
  -- | 'ccoarpAuthorizationEndpoint'
  Text ->
  -- | 'ccoarpHTTPMethod'
  ConnectionOAuthHTTPMethod ->
  CreateConnectionOAuthRequestParameters
createConnectionOAuthRequestParameters
  pClientParameters_
  pAuthorizationEndpoint_
  pHTTPMethod_ =
    CreateConnectionOAuthRequestParameters'
      { _ccoarpOAuthHTTPParameters =
          Nothing,
        _ccoarpClientParameters =
          pClientParameters_,
        _ccoarpAuthorizationEndpoint =
          pAuthorizationEndpoint_,
        _ccoarpHTTPMethod = pHTTPMethod_
      }

-- | A @ConnectionHttpParameters@ object that contains details about the additional parameters to use for the connection.
ccoarpOAuthHTTPParameters :: Lens' CreateConnectionOAuthRequestParameters (Maybe ConnectionHTTPParameters)
ccoarpOAuthHTTPParameters = lens _ccoarpOAuthHTTPParameters (\s a -> s {_ccoarpOAuthHTTPParameters = a})

-- | A @CreateConnectionOAuthClientRequestParameters@ object that contains the client parameters for OAuth authorization.
ccoarpClientParameters :: Lens' CreateConnectionOAuthRequestParameters CreateConnectionOAuthClientRequestParameters
ccoarpClientParameters = lens _ccoarpClientParameters (\s a -> s {_ccoarpClientParameters = a})

-- | The URL to the authorization endpoint when OAuth is specified as the authorization type.
ccoarpAuthorizationEndpoint :: Lens' CreateConnectionOAuthRequestParameters Text
ccoarpAuthorizationEndpoint = lens _ccoarpAuthorizationEndpoint (\s a -> s {_ccoarpAuthorizationEndpoint = a})

-- | The method to use for the authorization request.
ccoarpHTTPMethod :: Lens' CreateConnectionOAuthRequestParameters ConnectionOAuthHTTPMethod
ccoarpHTTPMethod = lens _ccoarpHTTPMethod (\s a -> s {_ccoarpHTTPMethod = a})

instance
  Hashable
    CreateConnectionOAuthRequestParameters

instance
  NFData
    CreateConnectionOAuthRequestParameters

instance
  ToJSON
    CreateConnectionOAuthRequestParameters
  where
  toJSON CreateConnectionOAuthRequestParameters' {..} =
    object
      ( catMaybes
          [ ("OAuthHttpParameters" .=)
              <$> _ccoarpOAuthHTTPParameters,
            Just ("ClientParameters" .= _ccoarpClientParameters),
            Just
              ( "AuthorizationEndpoint"
                  .= _ccoarpAuthorizationEndpoint
              ),
            Just ("HttpMethod" .= _ccoarpHTTPMethod)
          ]
      )
