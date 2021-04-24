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
-- Module      : Network.AWS.APIGateway.TestInvokeMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Simulate the execution of a 'Method' in your 'RestApi' with headers, parameters, and an incoming request body.
module Network.AWS.APIGateway.TestInvokeMethod
  ( -- * Creating a Request
    testInvokeMethod,
    TestInvokeMethod,

    -- * Request Lenses
    timHeaders,
    timStageVariables,
    timBody,
    timClientCertificateId,
    timMultiValueHeaders,
    timPathWithQueryString,
    timRestAPIId,
    timResourceId,
    timHttpMethod,

    -- * Destructuring the Response
    testInvokeMethodResponse,
    TestInvokeMethodResponse,

    -- * Response Lenses
    timrrsStatus,
    timrrsHeaders,
    timrrsBody,
    timrrsLog,
    timrrsMultiValueHeaders,
    timrrsLatency,
    timrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Make a request to simulate the execution of a 'Method' .
--
--
--
-- /See:/ 'testInvokeMethod' smart constructor.
data TestInvokeMethod = TestInvokeMethod'
  { _timHeaders ::
      !(Maybe (Map Text Text)),
    _timStageVariables ::
      !(Maybe (Map Text Text)),
    _timBody :: !(Maybe Text),
    _timClientCertificateId ::
      !(Maybe Text),
    _timMultiValueHeaders ::
      !(Maybe (Map Text [Text])),
    _timPathWithQueryString ::
      !(Maybe Text),
    _timRestAPIId :: !Text,
    _timResourceId :: !Text,
    _timHttpMethod :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestInvokeMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'timHeaders' - A key-value map of headers to simulate an incoming invocation request.
--
-- * 'timStageVariables' - A key-value map of stage variables to simulate an invocation on a deployed 'Stage' .
--
-- * 'timBody' - The simulated request body of an incoming invocation request.
--
-- * 'timClientCertificateId' - A 'ClientCertificate' identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.
--
-- * 'timMultiValueHeaders' - The headers as a map from string to list of values to simulate an incoming invocation request.
--
-- * 'timPathWithQueryString' - The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
--
-- * 'timRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'timResourceId' - [Required] Specifies a test invoke method request's resource ID.
--
-- * 'timHttpMethod' - [Required] Specifies a test invoke method request's HTTP method.
testInvokeMethod ::
  -- | 'timRestAPIId'
  Text ->
  -- | 'timResourceId'
  Text ->
  -- | 'timHttpMethod'
  Text ->
  TestInvokeMethod
testInvokeMethod
  pRestAPIId_
  pResourceId_
  pHttpMethod_ =
    TestInvokeMethod'
      { _timHeaders = Nothing,
        _timStageVariables = Nothing,
        _timBody = Nothing,
        _timClientCertificateId = Nothing,
        _timMultiValueHeaders = Nothing,
        _timPathWithQueryString = Nothing,
        _timRestAPIId = pRestAPIId_,
        _timResourceId = pResourceId_,
        _timHttpMethod = pHttpMethod_
      }

-- | A key-value map of headers to simulate an incoming invocation request.
timHeaders :: Lens' TestInvokeMethod (HashMap Text Text)
timHeaders = lens _timHeaders (\s a -> s {_timHeaders = a}) . _Default . _Map

-- | A key-value map of stage variables to simulate an invocation on a deployed 'Stage' .
timStageVariables :: Lens' TestInvokeMethod (HashMap Text Text)
timStageVariables = lens _timStageVariables (\s a -> s {_timStageVariables = a}) . _Default . _Map

-- | The simulated request body of an incoming invocation request.
timBody :: Lens' TestInvokeMethod (Maybe Text)
timBody = lens _timBody (\s a -> s {_timBody = a})

-- | A 'ClientCertificate' identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.
timClientCertificateId :: Lens' TestInvokeMethod (Maybe Text)
timClientCertificateId = lens _timClientCertificateId (\s a -> s {_timClientCertificateId = a})

-- | The headers as a map from string to list of values to simulate an incoming invocation request.
timMultiValueHeaders :: Lens' TestInvokeMethod (HashMap Text [Text])
timMultiValueHeaders = lens _timMultiValueHeaders (\s a -> s {_timMultiValueHeaders = a}) . _Default . _Map

-- | The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
timPathWithQueryString :: Lens' TestInvokeMethod (Maybe Text)
timPathWithQueryString = lens _timPathWithQueryString (\s a -> s {_timPathWithQueryString = a})

-- | [Required] The string identifier of the associated 'RestApi' .
timRestAPIId :: Lens' TestInvokeMethod Text
timRestAPIId = lens _timRestAPIId (\s a -> s {_timRestAPIId = a})

-- | [Required] Specifies a test invoke method request's resource ID.
timResourceId :: Lens' TestInvokeMethod Text
timResourceId = lens _timResourceId (\s a -> s {_timResourceId = a})

-- | [Required] Specifies a test invoke method request's HTTP method.
timHttpMethod :: Lens' TestInvokeMethod Text
timHttpMethod = lens _timHttpMethod (\s a -> s {_timHttpMethod = a})

instance AWSRequest TestInvokeMethod where
  type Rs TestInvokeMethod = TestInvokeMethodResponse
  request = postJSON apiGateway
  response =
    receiveJSON
      ( \s h x ->
          TestInvokeMethodResponse'
            <$> (x .?> "status")
            <*> (x .?> "headers" .!@ mempty)
            <*> (x .?> "body")
            <*> (x .?> "log")
            <*> (x .?> "multiValueHeaders" .!@ mempty)
            <*> (x .?> "latency")
            <*> (pure (fromEnum s))
      )

instance Hashable TestInvokeMethod

instance NFData TestInvokeMethod

instance ToHeaders TestInvokeMethod where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON TestInvokeMethod where
  toJSON TestInvokeMethod' {..} =
    object
      ( catMaybes
          [ ("headers" .=) <$> _timHeaders,
            ("stageVariables" .=) <$> _timStageVariables,
            ("body" .=) <$> _timBody,
            ("clientCertificateId" .=)
              <$> _timClientCertificateId,
            ("multiValueHeaders" .=) <$> _timMultiValueHeaders,
            ("pathWithQueryString" .=)
              <$> _timPathWithQueryString
          ]
      )

instance ToPath TestInvokeMethod where
  toPath TestInvokeMethod' {..} =
    mconcat
      [ "/restapis/",
        toBS _timRestAPIId,
        "/resources/",
        toBS _timResourceId,
        "/methods/",
        toBS _timHttpMethod
      ]

instance ToQuery TestInvokeMethod where
  toQuery = const mempty

-- | Represents the response of the test invoke request in the HTTP method.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-test-method.html#how-to-test-method-console Test API using the API Gateway console>
--
-- /See:/ 'testInvokeMethodResponse' smart constructor.
data TestInvokeMethodResponse = TestInvokeMethodResponse'
  { _timrrsStatus ::
      !(Maybe Int),
    _timrrsHeaders ::
      !( Maybe
           (Map Text Text)
       ),
    _timrrsBody ::
      !(Maybe Text),
    _timrrsLog ::
      !(Maybe Text),
    _timrrsMultiValueHeaders ::
      !( Maybe
           ( Map
               Text
               [Text]
           )
       ),
    _timrrsLatency ::
      !(Maybe Integer),
    _timrrsResponseStatus ::
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

-- | Creates a value of 'TestInvokeMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'timrrsStatus' - The HTTP status code.
--
-- * 'timrrsHeaders' - The headers of the HTTP response.
--
-- * 'timrrsBody' - The body of the HTTP response.
--
-- * 'timrrsLog' - The API Gateway execution log for the test invoke request.
--
-- * 'timrrsMultiValueHeaders' - The headers of the HTTP response as a map from string to list of values.
--
-- * 'timrrsLatency' - The execution latency of the test invoke request.
--
-- * 'timrrsResponseStatus' - -- | The response status code.
testInvokeMethodResponse ::
  -- | 'timrrsResponseStatus'
  Int ->
  TestInvokeMethodResponse
testInvokeMethodResponse pResponseStatus_ =
  TestInvokeMethodResponse'
    { _timrrsStatus = Nothing,
      _timrrsHeaders = Nothing,
      _timrrsBody = Nothing,
      _timrrsLog = Nothing,
      _timrrsMultiValueHeaders = Nothing,
      _timrrsLatency = Nothing,
      _timrrsResponseStatus = pResponseStatus_
    }

-- | The HTTP status code.
timrrsStatus :: Lens' TestInvokeMethodResponse (Maybe Int)
timrrsStatus = lens _timrrsStatus (\s a -> s {_timrrsStatus = a})

-- | The headers of the HTTP response.
timrrsHeaders :: Lens' TestInvokeMethodResponse (HashMap Text Text)
timrrsHeaders = lens _timrrsHeaders (\s a -> s {_timrrsHeaders = a}) . _Default . _Map

-- | The body of the HTTP response.
timrrsBody :: Lens' TestInvokeMethodResponse (Maybe Text)
timrrsBody = lens _timrrsBody (\s a -> s {_timrrsBody = a})

-- | The API Gateway execution log for the test invoke request.
timrrsLog :: Lens' TestInvokeMethodResponse (Maybe Text)
timrrsLog = lens _timrrsLog (\s a -> s {_timrrsLog = a})

-- | The headers of the HTTP response as a map from string to list of values.
timrrsMultiValueHeaders :: Lens' TestInvokeMethodResponse (HashMap Text [Text])
timrrsMultiValueHeaders = lens _timrrsMultiValueHeaders (\s a -> s {_timrrsMultiValueHeaders = a}) . _Default . _Map

-- | The execution latency of the test invoke request.
timrrsLatency :: Lens' TestInvokeMethodResponse (Maybe Integer)
timrrsLatency = lens _timrrsLatency (\s a -> s {_timrrsLatency = a})

-- | -- | The response status code.
timrrsResponseStatus :: Lens' TestInvokeMethodResponse Int
timrrsResponseStatus = lens _timrrsResponseStatus (\s a -> s {_timrrsResponseStatus = a})

instance NFData TestInvokeMethodResponse
