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
-- Module      : Network.AWS.APIGateway.TestInvokeAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Simulate the execution of an 'Authorizer' in your 'RestApi' with headers, parameters, and an incoming request body.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-use-lambda-authorizer.html Use Lambda Function as Authorizer> <https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-integrate-with-cognito.html Use Cognito User Pool as Authorizer>
module Network.AWS.APIGateway.TestInvokeAuthorizer
  ( -- * Creating a Request
    testInvokeAuthorizer,
    TestInvokeAuthorizer,

    -- * Request Lenses
    tiaHeaders,
    tiaStageVariables,
    tiaAdditionalContext,
    tiaBody,
    tiaMultiValueHeaders,
    tiaPathWithQueryString,
    tiaRestAPIId,
    tiaAuthorizerId,

    -- * Destructuring the Response
    testInvokeAuthorizerResponse,
    TestInvokeAuthorizerResponse,

    -- * Response Lenses
    tiarrsClaims,
    tiarrsClientStatus,
    tiarrsPrincipalId,
    tiarrsLog,
    tiarrsAuthorization,
    tiarrsPolicy,
    tiarrsLatency,
    tiarrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Make a request to simulate the execution of an 'Authorizer' .
--
--
--
-- /See:/ 'testInvokeAuthorizer' smart constructor.
data TestInvokeAuthorizer = TestInvokeAuthorizer'
  { _tiaHeaders ::
      !(Maybe (Map Text Text)),
    _tiaStageVariables ::
      !(Maybe (Map Text Text)),
    _tiaAdditionalContext ::
      !(Maybe (Map Text Text)),
    _tiaBody :: !(Maybe Text),
    _tiaMultiValueHeaders ::
      !(Maybe (Map Text [Text])),
    _tiaPathWithQueryString ::
      !(Maybe Text),
    _tiaRestAPIId :: !Text,
    _tiaAuthorizerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestInvokeAuthorizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiaHeaders' - [Required] A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.
--
-- * 'tiaStageVariables' - A key-value map of stage variables to simulate an invocation on a deployed 'Stage' .
--
-- * 'tiaAdditionalContext' - [Optional] A key-value map of additional context variables.
--
-- * 'tiaBody' - [Optional] The simulated request body of an incoming invocation request.
--
-- * 'tiaMultiValueHeaders' - [Optional] The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.
--
-- * 'tiaPathWithQueryString' - [Optional] The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
--
-- * 'tiaRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'tiaAuthorizerId' - [Required] Specifies a test invoke authorizer request's 'Authorizer' ID.
testInvokeAuthorizer ::
  -- | 'tiaRestAPIId'
  Text ->
  -- | 'tiaAuthorizerId'
  Text ->
  TestInvokeAuthorizer
testInvokeAuthorizer pRestAPIId_ pAuthorizerId_ =
  TestInvokeAuthorizer'
    { _tiaHeaders = Nothing,
      _tiaStageVariables = Nothing,
      _tiaAdditionalContext = Nothing,
      _tiaBody = Nothing,
      _tiaMultiValueHeaders = Nothing,
      _tiaPathWithQueryString = Nothing,
      _tiaRestAPIId = pRestAPIId_,
      _tiaAuthorizerId = pAuthorizerId_
    }

-- | [Required] A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.
tiaHeaders :: Lens' TestInvokeAuthorizer (HashMap Text Text)
tiaHeaders = lens _tiaHeaders (\s a -> s {_tiaHeaders = a}) . _Default . _Map

-- | A key-value map of stage variables to simulate an invocation on a deployed 'Stage' .
tiaStageVariables :: Lens' TestInvokeAuthorizer (HashMap Text Text)
tiaStageVariables = lens _tiaStageVariables (\s a -> s {_tiaStageVariables = a}) . _Default . _Map

-- | [Optional] A key-value map of additional context variables.
tiaAdditionalContext :: Lens' TestInvokeAuthorizer (HashMap Text Text)
tiaAdditionalContext = lens _tiaAdditionalContext (\s a -> s {_tiaAdditionalContext = a}) . _Default . _Map

-- | [Optional] The simulated request body of an incoming invocation request.
tiaBody :: Lens' TestInvokeAuthorizer (Maybe Text)
tiaBody = lens _tiaBody (\s a -> s {_tiaBody = a})

-- | [Optional] The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.
tiaMultiValueHeaders :: Lens' TestInvokeAuthorizer (HashMap Text [Text])
tiaMultiValueHeaders = lens _tiaMultiValueHeaders (\s a -> s {_tiaMultiValueHeaders = a}) . _Default . _Map

-- | [Optional] The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
tiaPathWithQueryString :: Lens' TestInvokeAuthorizer (Maybe Text)
tiaPathWithQueryString = lens _tiaPathWithQueryString (\s a -> s {_tiaPathWithQueryString = a})

-- | [Required] The string identifier of the associated 'RestApi' .
tiaRestAPIId :: Lens' TestInvokeAuthorizer Text
tiaRestAPIId = lens _tiaRestAPIId (\s a -> s {_tiaRestAPIId = a})

-- | [Required] Specifies a test invoke authorizer request's 'Authorizer' ID.
tiaAuthorizerId :: Lens' TestInvokeAuthorizer Text
tiaAuthorizerId = lens _tiaAuthorizerId (\s a -> s {_tiaAuthorizerId = a})

instance AWSRequest TestInvokeAuthorizer where
  type
    Rs TestInvokeAuthorizer =
      TestInvokeAuthorizerResponse
  request = postJSON apiGateway
  response =
    receiveJSON
      ( \s h x ->
          TestInvokeAuthorizerResponse'
            <$> (x .?> "claims" .!@ mempty)
            <*> (x .?> "clientStatus")
            <*> (x .?> "principalId")
            <*> (x .?> "log")
            <*> (x .?> "authorization" .!@ mempty)
            <*> (x .?> "policy")
            <*> (x .?> "latency")
            <*> (pure (fromEnum s))
      )

instance Hashable TestInvokeAuthorizer

instance NFData TestInvokeAuthorizer

instance ToHeaders TestInvokeAuthorizer where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON TestInvokeAuthorizer where
  toJSON TestInvokeAuthorizer' {..} =
    object
      ( catMaybes
          [ ("headers" .=) <$> _tiaHeaders,
            ("stageVariables" .=) <$> _tiaStageVariables,
            ("additionalContext" .=) <$> _tiaAdditionalContext,
            ("body" .=) <$> _tiaBody,
            ("multiValueHeaders" .=) <$> _tiaMultiValueHeaders,
            ("pathWithQueryString" .=)
              <$> _tiaPathWithQueryString
          ]
      )

instance ToPath TestInvokeAuthorizer where
  toPath TestInvokeAuthorizer' {..} =
    mconcat
      [ "/restapis/",
        toBS _tiaRestAPIId,
        "/authorizers/",
        toBS _tiaAuthorizerId
      ]

instance ToQuery TestInvokeAuthorizer where
  toQuery = const mempty

-- | Represents the response of the test invoke request for a custom 'Authorizer'
--
--
--
-- /See:/ 'testInvokeAuthorizerResponse' smart constructor.
data TestInvokeAuthorizerResponse = TestInvokeAuthorizerResponse'
  { _tiarrsClaims ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _tiarrsClientStatus ::
      !(Maybe Int),
    _tiarrsPrincipalId ::
      !(Maybe Text),
    _tiarrsLog ::
      !(Maybe Text),
    _tiarrsAuthorization ::
      !( Maybe
           ( Map
               Text
               [Text]
           )
       ),
    _tiarrsPolicy ::
      !(Maybe Text),
    _tiarrsLatency ::
      !( Maybe
           Integer
       ),
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
-- * 'tiarrsClaims' - The <https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims open identity claims> , with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.
--
-- * 'tiarrsClientStatus' - The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.
--
-- * 'tiarrsPrincipalId' - The principal identity returned by the 'Authorizer'
--
-- * 'tiarrsLog' - The API Gateway execution log for the test authorizer request.
--
-- * 'tiarrsAuthorization' - Undocumented member.
--
-- * 'tiarrsPolicy' - The JSON policy document returned by the 'Authorizer'
--
-- * 'tiarrsLatency' - The execution latency of the test authorizer request.
--
-- * 'tiarrsResponseStatus' - -- | The response status code.
testInvokeAuthorizerResponse ::
  -- | 'tiarrsResponseStatus'
  Int ->
  TestInvokeAuthorizerResponse
testInvokeAuthorizerResponse pResponseStatus_ =
  TestInvokeAuthorizerResponse'
    { _tiarrsClaims =
        Nothing,
      _tiarrsClientStatus = Nothing,
      _tiarrsPrincipalId = Nothing,
      _tiarrsLog = Nothing,
      _tiarrsAuthorization = Nothing,
      _tiarrsPolicy = Nothing,
      _tiarrsLatency = Nothing,
      _tiarrsResponseStatus = pResponseStatus_
    }

-- | The <https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims open identity claims> , with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.
tiarrsClaims :: Lens' TestInvokeAuthorizerResponse (HashMap Text Text)
tiarrsClaims = lens _tiarrsClaims (\s a -> s {_tiarrsClaims = a}) . _Default . _Map

-- | The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.
tiarrsClientStatus :: Lens' TestInvokeAuthorizerResponse (Maybe Int)
tiarrsClientStatus = lens _tiarrsClientStatus (\s a -> s {_tiarrsClientStatus = a})

-- | The principal identity returned by the 'Authorizer'
tiarrsPrincipalId :: Lens' TestInvokeAuthorizerResponse (Maybe Text)
tiarrsPrincipalId = lens _tiarrsPrincipalId (\s a -> s {_tiarrsPrincipalId = a})

-- | The API Gateway execution log for the test authorizer request.
tiarrsLog :: Lens' TestInvokeAuthorizerResponse (Maybe Text)
tiarrsLog = lens _tiarrsLog (\s a -> s {_tiarrsLog = a})

-- | Undocumented member.
tiarrsAuthorization :: Lens' TestInvokeAuthorizerResponse (HashMap Text [Text])
tiarrsAuthorization = lens _tiarrsAuthorization (\s a -> s {_tiarrsAuthorization = a}) . _Default . _Map

-- | The JSON policy document returned by the 'Authorizer'
tiarrsPolicy :: Lens' TestInvokeAuthorizerResponse (Maybe Text)
tiarrsPolicy = lens _tiarrsPolicy (\s a -> s {_tiarrsPolicy = a})

-- | The execution latency of the test authorizer request.
tiarrsLatency :: Lens' TestInvokeAuthorizerResponse (Maybe Integer)
tiarrsLatency = lens _tiarrsLatency (\s a -> s {_tiarrsLatency = a})

-- | -- | The response status code.
tiarrsResponseStatus :: Lens' TestInvokeAuthorizerResponse Int
tiarrsResponseStatus = lens _tiarrsResponseStatus (\s a -> s {_tiarrsResponseStatus = a})

instance NFData TestInvokeAuthorizerResponse
