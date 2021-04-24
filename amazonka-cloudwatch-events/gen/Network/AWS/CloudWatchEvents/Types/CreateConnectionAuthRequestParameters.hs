{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.CreateConnectionAuthRequestParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.CreateConnectionAuthRequestParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
import Network.AWS.CloudWatchEvents.Types.CreateConnectionAPIKeyAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.CreateConnectionBasicAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthRequestParameters
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the authorization parameters for the connection.
--
--
--
-- /See:/ 'createConnectionAuthRequestParameters' smart constructor.
data CreateConnectionAuthRequestParameters = CreateConnectionAuthRequestParameters'
  { _ccarpBasicAuthParameters ::
      !( Maybe
           CreateConnectionBasicAuthRequestParameters
       ),
    _ccarpOAuthParameters ::
      !( Maybe
           CreateConnectionOAuthRequestParameters
       ),
    _ccarpAPIKeyAuthParameters ::
      !( Maybe
           CreateConnectionAPIKeyAuthRequestParameters
       ),
    _ccarpInvocationHTTPParameters ::
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

-- | Creates a value of 'CreateConnectionAuthRequestParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccarpBasicAuthParameters' - A @CreateConnectionBasicAuthRequestParameters@ object that contains the Basic authorization parameters to use for the connection.
--
-- * 'ccarpOAuthParameters' - A @CreateConnectionOAuthRequestParameters@ object that contains the OAuth authorization parameters to use for the connection.
--
-- * 'ccarpAPIKeyAuthParameters' - A @CreateConnectionApiKeyAuthRequestParameters@ object that contains the API key authorization parameters to use for the connection.
--
-- * 'ccarpInvocationHTTPParameters' - A @ConnectionHttpParameters@ object that contains the API key authorization parameters to use for the connection. Note that if you include additional parameters for the target of a rule via @HttpParameters@ , including query strings, the parameters added for the connection take precedence.
createConnectionAuthRequestParameters ::
  CreateConnectionAuthRequestParameters
createConnectionAuthRequestParameters =
  CreateConnectionAuthRequestParameters'
    { _ccarpBasicAuthParameters =
        Nothing,
      _ccarpOAuthParameters = Nothing,
      _ccarpAPIKeyAuthParameters = Nothing,
      _ccarpInvocationHTTPParameters =
        Nothing
    }

-- | A @CreateConnectionBasicAuthRequestParameters@ object that contains the Basic authorization parameters to use for the connection.
ccarpBasicAuthParameters :: Lens' CreateConnectionAuthRequestParameters (Maybe CreateConnectionBasicAuthRequestParameters)
ccarpBasicAuthParameters = lens _ccarpBasicAuthParameters (\s a -> s {_ccarpBasicAuthParameters = a})

-- | A @CreateConnectionOAuthRequestParameters@ object that contains the OAuth authorization parameters to use for the connection.
ccarpOAuthParameters :: Lens' CreateConnectionAuthRequestParameters (Maybe CreateConnectionOAuthRequestParameters)
ccarpOAuthParameters = lens _ccarpOAuthParameters (\s a -> s {_ccarpOAuthParameters = a})

-- | A @CreateConnectionApiKeyAuthRequestParameters@ object that contains the API key authorization parameters to use for the connection.
ccarpAPIKeyAuthParameters :: Lens' CreateConnectionAuthRequestParameters (Maybe CreateConnectionAPIKeyAuthRequestParameters)
ccarpAPIKeyAuthParameters = lens _ccarpAPIKeyAuthParameters (\s a -> s {_ccarpAPIKeyAuthParameters = a})

-- | A @ConnectionHttpParameters@ object that contains the API key authorization parameters to use for the connection. Note that if you include additional parameters for the target of a rule via @HttpParameters@ , including query strings, the parameters added for the connection take precedence.
ccarpInvocationHTTPParameters :: Lens' CreateConnectionAuthRequestParameters (Maybe ConnectionHTTPParameters)
ccarpInvocationHTTPParameters = lens _ccarpInvocationHTTPParameters (\s a -> s {_ccarpInvocationHTTPParameters = a})

instance
  Hashable
    CreateConnectionAuthRequestParameters

instance NFData CreateConnectionAuthRequestParameters

instance ToJSON CreateConnectionAuthRequestParameters where
  toJSON CreateConnectionAuthRequestParameters' {..} =
    object
      ( catMaybes
          [ ("BasicAuthParameters" .=)
              <$> _ccarpBasicAuthParameters,
            ("OAuthParameters" .=) <$> _ccarpOAuthParameters,
            ("ApiKeyAuthParameters" .=)
              <$> _ccarpAPIKeyAuthParameters,
            ("InvocationHttpParameters" .=)
              <$> _ccarpInvocationHTTPParameters
          ]
      )
