{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.TestInvokeAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests a custom authorization behavior by invoking a specified custom authorizer. Use this to test and debug the custom authorization behavior of devices that connect to the AWS IoT device gateway.
module Network.AWS.IoT.TestInvokeAuthorizer
  ( -- * Creating a Request
    testInvokeAuthorizer,
    TestInvokeAuthorizer,

    -- * Request Lenses
    tiaHttpContext,
    tiaMqttContext,
    tiaTokenSignature,
    tiaTlsContext,
    tiaToken,
    tiaAuthorizerName,

    -- * Destructuring the Response
    testInvokeAuthorizerResponse,
    TestInvokeAuthorizerResponse,

    -- * Response Lenses
    tiarrsDisconnectAfterInSeconds,
    tiarrsPrincipalId,
    tiarrsPolicyDocuments,
    tiarrsIsAuthenticated,
    tiarrsRefreshAfterInSeconds,
    tiarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'testInvokeAuthorizer' smart constructor.
data TestInvokeAuthorizer = TestInvokeAuthorizer'
  { _tiaHttpContext ::
      !(Maybe HTTPContext),
    _tiaMqttContext ::
      !(Maybe MqttContext),
    _tiaTokenSignature ::
      !(Maybe Text),
    _tiaTlsContext ::
      !(Maybe TLSContext),
    _tiaToken :: !(Maybe Text),
    _tiaAuthorizerName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestInvokeAuthorizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiaHttpContext' - Specifies a test HTTP authorization request.
--
-- * 'tiaMqttContext' - Specifies a test MQTT authorization request.
--
-- * 'tiaTokenSignature' - The signature made with the token and your custom authentication service's private key. This value must be Base-64-encoded.
--
-- * 'tiaTlsContext' - Specifies a test TLS authorization request.
--
-- * 'tiaToken' - The token returned by your custom authentication service.
--
-- * 'tiaAuthorizerName' - The custom authorizer name.
testInvokeAuthorizer ::
  -- | 'tiaAuthorizerName'
  Text ->
  TestInvokeAuthorizer
testInvokeAuthorizer pAuthorizerName_ =
  TestInvokeAuthorizer'
    { _tiaHttpContext = Nothing,
      _tiaMqttContext = Nothing,
      _tiaTokenSignature = Nothing,
      _tiaTlsContext = Nothing,
      _tiaToken = Nothing,
      _tiaAuthorizerName = pAuthorizerName_
    }

-- | Specifies a test HTTP authorization request.
tiaHttpContext :: Lens' TestInvokeAuthorizer (Maybe HTTPContext)
tiaHttpContext = lens _tiaHttpContext (\s a -> s {_tiaHttpContext = a})

-- | Specifies a test MQTT authorization request.
tiaMqttContext :: Lens' TestInvokeAuthorizer (Maybe MqttContext)
tiaMqttContext = lens _tiaMqttContext (\s a -> s {_tiaMqttContext = a})

-- | The signature made with the token and your custom authentication service's private key. This value must be Base-64-encoded.
tiaTokenSignature :: Lens' TestInvokeAuthorizer (Maybe Text)
tiaTokenSignature = lens _tiaTokenSignature (\s a -> s {_tiaTokenSignature = a})

-- | Specifies a test TLS authorization request.
tiaTlsContext :: Lens' TestInvokeAuthorizer (Maybe TLSContext)
tiaTlsContext = lens _tiaTlsContext (\s a -> s {_tiaTlsContext = a})

-- | The token returned by your custom authentication service.
tiaToken :: Lens' TestInvokeAuthorizer (Maybe Text)
tiaToken = lens _tiaToken (\s a -> s {_tiaToken = a})

-- | The custom authorizer name.
tiaAuthorizerName :: Lens' TestInvokeAuthorizer Text
tiaAuthorizerName = lens _tiaAuthorizerName (\s a -> s {_tiaAuthorizerName = a})

instance AWSRequest TestInvokeAuthorizer where
  type
    Rs TestInvokeAuthorizer =
      TestInvokeAuthorizerResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          TestInvokeAuthorizerResponse'
            <$> (x .?> "disconnectAfterInSeconds")
            <*> (x .?> "principalId")
            <*> (x .?> "policyDocuments" .!@ mempty)
            <*> (x .?> "isAuthenticated")
            <*> (x .?> "refreshAfterInSeconds")
            <*> (pure (fromEnum s))
      )

instance Hashable TestInvokeAuthorizer

instance NFData TestInvokeAuthorizer

instance ToHeaders TestInvokeAuthorizer where
  toHeaders = const mempty

instance ToJSON TestInvokeAuthorizer where
  toJSON TestInvokeAuthorizer' {..} =
    object
      ( catMaybes
          [ ("httpContext" .=) <$> _tiaHttpContext,
            ("mqttContext" .=) <$> _tiaMqttContext,
            ("tokenSignature" .=) <$> _tiaTokenSignature,
            ("tlsContext" .=) <$> _tiaTlsContext,
            ("token" .=) <$> _tiaToken
          ]
      )

instance ToPath TestInvokeAuthorizer where
  toPath TestInvokeAuthorizer' {..} =
    mconcat
      ["/authorizer/", toBS _tiaAuthorizerName, "/test"]

instance ToQuery TestInvokeAuthorizer where
  toQuery = const mempty

-- | /See:/ 'testInvokeAuthorizerResponse' smart constructor.
data TestInvokeAuthorizerResponse = TestInvokeAuthorizerResponse'
  { _tiarrsDisconnectAfterInSeconds ::
      !(Maybe Int),
    _tiarrsPrincipalId ::
      !(Maybe Text),
    _tiarrsPolicyDocuments ::
      !( Maybe
           [Text]
       ),
    _tiarrsIsAuthenticated ::
      !(Maybe Bool),
    _tiarrsRefreshAfterInSeconds ::
      !(Maybe Int),
    _tiarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TestInvokeAuthorizerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiarrsDisconnectAfterInSeconds' - The number of seconds after which the connection is terminated.
--
-- * 'tiarrsPrincipalId' - The principal ID.
--
-- * 'tiarrsPolicyDocuments' - IAM policy documents.
--
-- * 'tiarrsIsAuthenticated' - True if the token is authenticated, otherwise false.
--
-- * 'tiarrsRefreshAfterInSeconds' - The number of seconds after which the temporary credentials are refreshed.
--
-- * 'tiarrsResponseStatus' - -- | The response status code.
testInvokeAuthorizerResponse ::
  -- | 'tiarrsResponseStatus'
  Int ->
  TestInvokeAuthorizerResponse
testInvokeAuthorizerResponse pResponseStatus_ =
  TestInvokeAuthorizerResponse'
    { _tiarrsDisconnectAfterInSeconds =
        Nothing,
      _tiarrsPrincipalId = Nothing,
      _tiarrsPolicyDocuments = Nothing,
      _tiarrsIsAuthenticated = Nothing,
      _tiarrsRefreshAfterInSeconds = Nothing,
      _tiarrsResponseStatus = pResponseStatus_
    }

-- | The number of seconds after which the connection is terminated.
tiarrsDisconnectAfterInSeconds :: Lens' TestInvokeAuthorizerResponse (Maybe Int)
tiarrsDisconnectAfterInSeconds = lens _tiarrsDisconnectAfterInSeconds (\s a -> s {_tiarrsDisconnectAfterInSeconds = a})

-- | The principal ID.
tiarrsPrincipalId :: Lens' TestInvokeAuthorizerResponse (Maybe Text)
tiarrsPrincipalId = lens _tiarrsPrincipalId (\s a -> s {_tiarrsPrincipalId = a})

-- | IAM policy documents.
tiarrsPolicyDocuments :: Lens' TestInvokeAuthorizerResponse [Text]
tiarrsPolicyDocuments = lens _tiarrsPolicyDocuments (\s a -> s {_tiarrsPolicyDocuments = a}) . _Default . _Coerce

-- | True if the token is authenticated, otherwise false.
tiarrsIsAuthenticated :: Lens' TestInvokeAuthorizerResponse (Maybe Bool)
tiarrsIsAuthenticated = lens _tiarrsIsAuthenticated (\s a -> s {_tiarrsIsAuthenticated = a})

-- | The number of seconds after which the temporary credentials are refreshed.
tiarrsRefreshAfterInSeconds :: Lens' TestInvokeAuthorizerResponse (Maybe Int)
tiarrsRefreshAfterInSeconds = lens _tiarrsRefreshAfterInSeconds (\s a -> s {_tiarrsRefreshAfterInSeconds = a})

-- | -- | The response status code.
tiarrsResponseStatus :: Lens' TestInvokeAuthorizerResponse Int
tiarrsResponseStatus = lens _tiarrsResponseStatus (\s a -> s {_tiarrsResponseStatus = a})

instance NFData TestInvokeAuthorizerResponse
