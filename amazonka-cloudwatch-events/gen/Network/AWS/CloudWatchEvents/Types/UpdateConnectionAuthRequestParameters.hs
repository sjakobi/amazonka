{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.UpdateConnectionAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.UpdateConnectionAuthRequestParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionAPIKeyAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionBasicAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthRequestParameters
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the additional parameters to use for the connection.
--
--
--
-- /See:/ 'updateConnectionAuthRequestParameters' smart constructor.
data UpdateConnectionAuthRequestParameters = UpdateConnectionAuthRequestParameters'
  { _ucarpBasicAuthParameters ::
      !( Maybe
           UpdateConnectionBasicAuthRequestParameters
       ),
    _ucarpOAuthParameters ::
      !( Maybe
           UpdateConnectionOAuthRequestParameters
       ),
    _ucarpAPIKeyAuthParameters ::
      !( Maybe
           UpdateConnectionAPIKeyAuthRequestParameters
       ),
    _ucarpInvocationHTTPParameters ::
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

-- | Creates a value of 'UpdateConnectionAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucarpBasicAuthParameters' - A @UpdateConnectionBasicAuthRequestParameters@ object that contains the authorization parameters for Basic authorization.
--
-- * 'ucarpOAuthParameters' - A @UpdateConnectionOAuthRequestParameters@ object that contains the authorization parameters for OAuth authorization.
--
-- * 'ucarpAPIKeyAuthParameters' - A @UpdateConnectionApiKeyAuthRequestParameters@ object that contains the authorization parameters for API key authorization.
--
-- * 'ucarpInvocationHTTPParameters' - A @ConnectionHttpParameters@ object that contains the additional parameters to use for the connection.
updateConnectionAuthRequestParameters ::
  UpdateConnectionAuthRequestParameters
updateConnectionAuthRequestParameters =
  UpdateConnectionAuthRequestParameters'
    { _ucarpBasicAuthParameters =
        Nothing,
      _ucarpOAuthParameters = Nothing,
      _ucarpAPIKeyAuthParameters = Nothing,
      _ucarpInvocationHTTPParameters =
        Nothing
    }

-- | A @UpdateConnectionBasicAuthRequestParameters@ object that contains the authorization parameters for Basic authorization.
ucarpBasicAuthParameters :: Lens' UpdateConnectionAuthRequestParameters (Maybe UpdateConnectionBasicAuthRequestParameters)
ucarpBasicAuthParameters = lens _ucarpBasicAuthParameters (\s a -> s {_ucarpBasicAuthParameters = a})

-- | A @UpdateConnectionOAuthRequestParameters@ object that contains the authorization parameters for OAuth authorization.
ucarpOAuthParameters :: Lens' UpdateConnectionAuthRequestParameters (Maybe UpdateConnectionOAuthRequestParameters)
ucarpOAuthParameters = lens _ucarpOAuthParameters (\s a -> s {_ucarpOAuthParameters = a})

-- | A @UpdateConnectionApiKeyAuthRequestParameters@ object that contains the authorization parameters for API key authorization.
ucarpAPIKeyAuthParameters :: Lens' UpdateConnectionAuthRequestParameters (Maybe UpdateConnectionAPIKeyAuthRequestParameters)
ucarpAPIKeyAuthParameters = lens _ucarpAPIKeyAuthParameters (\s a -> s {_ucarpAPIKeyAuthParameters = a})

-- | A @ConnectionHttpParameters@ object that contains the additional parameters to use for the connection.
ucarpInvocationHTTPParameters :: Lens' UpdateConnectionAuthRequestParameters (Maybe ConnectionHTTPParameters)
ucarpInvocationHTTPParameters = lens _ucarpInvocationHTTPParameters (\s a -> s {_ucarpInvocationHTTPParameters = a})

instance
  Hashable
    UpdateConnectionAuthRequestParameters

instance NFData UpdateConnectionAuthRequestParameters

instance ToJSON UpdateConnectionAuthRequestParameters where
  toJSON UpdateConnectionAuthRequestParameters' {..} =
    object
      ( catMaybes
          [ ("BasicAuthParameters" .=)
              <$> _ucarpBasicAuthParameters,
            ("OAuthParameters" .=) <$> _ucarpOAuthParameters,
            ("ApiKeyAuthParameters" .=)
              <$> _ucarpAPIKeyAuthParameters,
            ("InvocationHttpParameters" .=)
              <$> _ucarpInvocationHTTPParameters
          ]
      )
