{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthRequestParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHTTPMethod
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthClientRequestParameters
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the OAuth request parameters to use for the connection.
--
--
--
-- /See:/ 'updateConnectionOAuthRequestParameters' smart constructor.
data UpdateConnectionOAuthRequestParameters = UpdateConnectionOAuthRequestParameters'
  { _ucoarpHTTPMethod ::
      !( Maybe
           ConnectionOAuthHTTPMethod
       ),
    _ucoarpClientParameters ::
      !( Maybe
           UpdateConnectionOAuthClientRequestParameters
       ),
    _ucoarpAuthorizationEndpoint ::
      !( Maybe
           Text
       ),
    _ucoarpOAuthHTTPParameters ::
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

-- | Creates a value of 'UpdateConnectionOAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucoarpHTTPMethod' - The method used to connect to the HTTP endpoint.
--
-- * 'ucoarpClientParameters' - A @UpdateConnectionOAuthClientRequestParameters@ object that contains the client parameters to use for the connection when OAuth is specified as the authorization type.
--
-- * 'ucoarpAuthorizationEndpoint' - The URL to the authorization endpoint when OAuth is specified as the authorization type.
--
-- * 'ucoarpOAuthHTTPParameters' - The additional HTTP parameters used for the OAuth authorization request.
updateConnectionOAuthRequestParameters ::
  UpdateConnectionOAuthRequestParameters
updateConnectionOAuthRequestParameters =
  UpdateConnectionOAuthRequestParameters'
    { _ucoarpHTTPMethod =
        Nothing,
      _ucoarpClientParameters = Nothing,
      _ucoarpAuthorizationEndpoint =
        Nothing,
      _ucoarpOAuthHTTPParameters =
        Nothing
    }

-- | The method used to connect to the HTTP endpoint.
ucoarpHTTPMethod :: Lens' UpdateConnectionOAuthRequestParameters (Maybe ConnectionOAuthHTTPMethod)
ucoarpHTTPMethod = lens _ucoarpHTTPMethod (\s a -> s {_ucoarpHTTPMethod = a})

-- | A @UpdateConnectionOAuthClientRequestParameters@ object that contains the client parameters to use for the connection when OAuth is specified as the authorization type.
ucoarpClientParameters :: Lens' UpdateConnectionOAuthRequestParameters (Maybe UpdateConnectionOAuthClientRequestParameters)
ucoarpClientParameters = lens _ucoarpClientParameters (\s a -> s {_ucoarpClientParameters = a})

-- | The URL to the authorization endpoint when OAuth is specified as the authorization type.
ucoarpAuthorizationEndpoint :: Lens' UpdateConnectionOAuthRequestParameters (Maybe Text)
ucoarpAuthorizationEndpoint = lens _ucoarpAuthorizationEndpoint (\s a -> s {_ucoarpAuthorizationEndpoint = a})

-- | The additional HTTP parameters used for the OAuth authorization request.
ucoarpOAuthHTTPParameters :: Lens' UpdateConnectionOAuthRequestParameters (Maybe ConnectionHTTPParameters)
ucoarpOAuthHTTPParameters = lens _ucoarpOAuthHTTPParameters (\s a -> s {_ucoarpOAuthHTTPParameters = a})

instance
  Hashable
    UpdateConnectionOAuthRequestParameters

instance
  NFData
    UpdateConnectionOAuthRequestParameters

instance
  ToJSON
    UpdateConnectionOAuthRequestParameters
  where
  toJSON UpdateConnectionOAuthRequestParameters' {..} =
    object
      ( catMaybes
          [ ("HttpMethod" .=) <$> _ucoarpHTTPMethod,
            ("ClientParameters" .=) <$> _ucoarpClientParameters,
            ("AuthorizationEndpoint" .=)
              <$> _ucoarpAuthorizationEndpoint,
            ("OAuthHttpParameters" .=)
              <$> _ucoarpOAuthHTTPParameters
          ]
      )
