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
-- Module      : Network.AWS.Lambda.Invoke
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invokes a Lambda function. You can invoke a function synchronously (and wait for the response), or asynchronously. To invoke a function asynchronously, set @InvocationType@ to @Event@ .
--
--
-- For <https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html synchronous invocation> , details about the function response, including errors, are included in the response body and headers. For either invocation type, you can find more information in the <https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html execution log> and <https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html trace> .
--
-- When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type, client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an error, Lambda executes the function up to two more times. For more information, see <https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html Retry Behavior> .
--
-- For <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html asynchronous invocation> , Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple times, even if no error occurs. To retain events that were not processed, configure your function with a <https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq dead-letter queue> .
--
-- The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that prevent your function from executing, such as permissions errors, <https://docs.aws.amazon.com/lambda/latest/dg/limits.html limit errors> , or issues with your function's code and configuration. For example, Lambda returns @TooManyRequestsException@ if executing the function would cause you to exceed a concurrency limit at either the account level (@ConcurrentInvocationLimitExceeded@ ) or function level (@ReservedFunctionConcurrentInvocationLimitExceeded@ ).
--
-- For functions with a long timeout, your client might be disconnected during synchronous invocation while it waits for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long connections with timeout or keep-alive settings.
--
-- This operation requires permission for the <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html lambda:InvokeFunction> action.
module Network.AWS.Lambda.Invoke
  ( -- * Creating a Request
    invoke,
    Invoke,

    -- * Request Lenses
    iLogType,
    iInvocationType,
    iQualifier,
    iClientContext,
    iFunctionName,
    iPayload,

    -- * Destructuring the Response
    invokeResponse,
    InvokeResponse,

    -- * Response Lenses
    irrsPayload,
    irrsLogResult,
    irrsExecutedVersion,
    irrsFunctionError,
    irrsStatusCode,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'invoke' smart constructor.
data Invoke = Invoke'
  { _iLogType :: !(Maybe LogType),
    _iInvocationType :: !(Maybe InvocationType),
    _iQualifier :: !(Maybe Text),
    _iClientContext :: !(Maybe Text),
    _iFunctionName :: !Text,
    _iPayload :: !ByteString
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Invoke' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iLogType' - Set to @Tail@ to include the execution log in the response.
--
-- * 'iInvocationType' - Choose from the following options.     * @RequestResponse@ (default) - Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API response includes the function response and additional data.     * @Event@ - Invoke the function asynchronously. Send events that fail multiple times to the function's dead-letter queue (if it's configured). The API response only includes a status code.     * @DryRun@ - Validate parameter values and verify that the user or role has permission to invoke the function.
--
-- * 'iQualifier' - Specify a version or alias to invoke a published version of the function.
--
-- * 'iClientContext' - Up to 3583 bytes of base64-encoded data about the invoking client to pass to the function in the context object.
--
-- * 'iFunctionName' - The name of the Lambda function, version, or alias. __Name formats__      * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
--
-- * 'iPayload' - The JSON that you want to provide to your Lambda function as input.
invoke ::
  -- | 'iFunctionName'
  Text ->
  -- | 'iPayload'
  ByteString ->
  Invoke
invoke pFunctionName_ pPayload_ =
  Invoke'
    { _iLogType = Nothing,
      _iInvocationType = Nothing,
      _iQualifier = Nothing,
      _iClientContext = Nothing,
      _iFunctionName = pFunctionName_,
      _iPayload = pPayload_
    }

-- | Set to @Tail@ to include the execution log in the response.
iLogType :: Lens' Invoke (Maybe LogType)
iLogType = lens _iLogType (\s a -> s {_iLogType = a})

-- | Choose from the following options.     * @RequestResponse@ (default) - Invoke the function synchronously. Keep the connection open until the function returns a response or times out. The API response includes the function response and additional data.     * @Event@ - Invoke the function asynchronously. Send events that fail multiple times to the function's dead-letter queue (if it's configured). The API response only includes a status code.     * @DryRun@ - Validate parameter values and verify that the user or role has permission to invoke the function.
iInvocationType :: Lens' Invoke (Maybe InvocationType)
iInvocationType = lens _iInvocationType (\s a -> s {_iInvocationType = a})

-- | Specify a version or alias to invoke a published version of the function.
iQualifier :: Lens' Invoke (Maybe Text)
iQualifier = lens _iQualifier (\s a -> s {_iQualifier = a})

-- | Up to 3583 bytes of base64-encoded data about the invoking client to pass to the function in the context object.
iClientContext :: Lens' Invoke (Maybe Text)
iClientContext = lens _iClientContext (\s a -> s {_iClientContext = a})

-- | The name of the Lambda function, version, or alias. __Name formats__      * __Function name__ - @my-function@ (name-only), @my-function:v1@ (with alias).     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:my-function@ .     * __Partial ARN__ - @123456789012:function:my-function@ . You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
iFunctionName :: Lens' Invoke Text
iFunctionName = lens _iFunctionName (\s a -> s {_iFunctionName = a})

-- | The JSON that you want to provide to your Lambda function as input.
iPayload :: Lens' Invoke ByteString
iPayload = lens _iPayload (\s a -> s {_iPayload = a})

instance AWSRequest Invoke where
  type Rs Invoke = InvokeResponse
  request = postBody lambda
  response =
    receiveBytes
      ( \s h x ->
          InvokeResponse'
            <$> (pure (Just x))
            <*> (h .#? "X-Amz-Log-Result")
            <*> (h .#? "X-Amz-Executed-Version")
            <*> (h .#? "X-Amz-Function-Error")
            <*> (pure (fromEnum s))
      )

instance Hashable Invoke

instance NFData Invoke

instance ToBody Invoke where
  toBody = toBody . _iPayload

instance ToHeaders Invoke where
  toHeaders Invoke' {..} =
    mconcat
      [ "X-Amz-Log-Type" =# _iLogType,
        "X-Amz-Invocation-Type" =# _iInvocationType,
        "X-Amz-Client-Context" =# _iClientContext
      ]

instance ToPath Invoke where
  toPath Invoke' {..} =
    mconcat
      [ "/2015-03-31/functions/",
        toBS _iFunctionName,
        "/invocations"
      ]

instance ToQuery Invoke where
  toQuery Invoke' {..} =
    mconcat ["Qualifier" =: _iQualifier]

-- | /See:/ 'invokeResponse' smart constructor.
data InvokeResponse = InvokeResponse'
  { _irrsPayload ::
      !(Maybe ByteString),
    _irrsLogResult :: !(Maybe Text),
    _irrsExecutedVersion :: !(Maybe Text),
    _irrsFunctionError :: !(Maybe Text),
    _irrsStatusCode :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InvokeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrsPayload' - The response from the function, or an error object.
--
-- * 'irrsLogResult' - The last 4 KB of the execution log, which is base64 encoded.
--
-- * 'irrsExecutedVersion' - The version of the function that executed. When you invoke a function with an alias, this indicates which version the alias resolved to.
--
-- * 'irrsFunctionError' - If present, indicates that an error occurred during function execution. Details about the error are included in the response payload.
--
-- * 'irrsStatusCode' - The HTTP status code is in the 200 range for a successful request. For the @RequestResponse@ invocation type, this status code is 200. For the @Event@ invocation type, this status code is 202. For the @DryRun@ invocation type, the status code is 204.
invokeResponse ::
  -- | 'irrsStatusCode'
  Int ->
  InvokeResponse
invokeResponse pStatusCode_ =
  InvokeResponse'
    { _irrsPayload = Nothing,
      _irrsLogResult = Nothing,
      _irrsExecutedVersion = Nothing,
      _irrsFunctionError = Nothing,
      _irrsStatusCode = pStatusCode_
    }

-- | The response from the function, or an error object.
irrsPayload :: Lens' InvokeResponse (Maybe ByteString)
irrsPayload = lens _irrsPayload (\s a -> s {_irrsPayload = a})

-- | The last 4 KB of the execution log, which is base64 encoded.
irrsLogResult :: Lens' InvokeResponse (Maybe Text)
irrsLogResult = lens _irrsLogResult (\s a -> s {_irrsLogResult = a})

-- | The version of the function that executed. When you invoke a function with an alias, this indicates which version the alias resolved to.
irrsExecutedVersion :: Lens' InvokeResponse (Maybe Text)
irrsExecutedVersion = lens _irrsExecutedVersion (\s a -> s {_irrsExecutedVersion = a})

-- | If present, indicates that an error occurred during function execution. Details about the error are included in the response payload.
irrsFunctionError :: Lens' InvokeResponse (Maybe Text)
irrsFunctionError = lens _irrsFunctionError (\s a -> s {_irrsFunctionError = a})

-- | The HTTP status code is in the 200 range for a successful request. For the @RequestResponse@ invocation type, this status code is 200. For the @Event@ invocation type, this status code is 202. For the @DryRun@ invocation type, the status code is 204.
irrsStatusCode :: Lens' InvokeResponse Int
irrsStatusCode = lens _irrsStatusCode (\s a -> s {_irrsStatusCode = a})

instance NFData InvokeResponse
