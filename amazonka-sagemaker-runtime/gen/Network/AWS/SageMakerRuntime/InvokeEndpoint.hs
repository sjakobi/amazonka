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
-- Module      : Network.AWS.SageMakerRuntime.InvokeEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.
--
--
-- For an overview of Amazon SageMaker, see <https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html How It Works> .
--
-- Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.
--
-- Calls to @InvokeEndpoint@ are authenticated by using AWS Signature Version 4. For information, see <https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html Authenticating Requests (AWS Signature Version 4)> in the /Amazon S3 API Reference/ .
--
-- A customer's model containers must respond to requests within 60 seconds. The model itself can have a maximum processing time of 60 seconds before responding to invocations. If your model is going to take 50-60 seconds of processing time, the SDK socket timeout should be set to be 70 seconds.
module Network.AWS.SageMakerRuntime.InvokeEndpoint
  ( -- * Creating a Request
    invokeEndpoint,
    InvokeEndpoint,

    -- * Request Lenses
    ieTargetContainerHostname,
    ieContentType,
    ieTargetModel,
    ieAccept,
    ieCustomAttributes,
    ieInferenceId,
    ieTargetVariant,
    ieEndpointName,
    ieBody,

    -- * Destructuring the Response
    invokeEndpointResponse,
    InvokeEndpointResponse,

    -- * Response Lenses
    ierrsContentType,
    ierrsInvokedProductionVariant,
    ierrsCustomAttributes,
    ierrsResponseStatus,
    ierrsBody,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMakerRuntime.Types

-- | /See:/ 'invokeEndpoint' smart constructor.
data InvokeEndpoint = InvokeEndpoint'
  { _ieTargetContainerHostname ::
      !(Maybe Text),
    _ieContentType :: !(Maybe Text),
    _ieTargetModel :: !(Maybe Text),
    _ieAccept :: !(Maybe Text),
    _ieCustomAttributes ::
      !(Maybe (Sensitive Text)),
    _ieInferenceId :: !(Maybe Text),
    _ieTargetVariant :: !(Maybe Text),
    _ieEndpointName :: !Text,
    _ieBody :: !ByteString
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InvokeEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieTargetContainerHostname' - If the endpoint hosts multiple containers and is configured to use direct invocation, this parameter specifies the host name of the container to invoke.
--
-- * 'ieContentType' - The MIME type of the input data in the request body.
--
-- * 'ieTargetModel' - The model to request for inference when invoking a multi-model endpoint.
--
-- * 'ieAccept' - The desired MIME type of the inference in the response.
--
-- * 'ieCustomAttributes' - Provides additional information about a request for an inference submitted to a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to provide an ID that you can use to track a request or to provide other metadata that a service endpoint was programmed to process. The value must consist of no more than 1024 visible US-ASCII characters as specified in <https://tools.ietf.org/html/rfc7230#section-3.2.6 Section 3.3.6. Field Value Components> of the Hypertext Transfer Protocol (HTTP/1.1).  The code in your model is responsible for setting or updating any custom attributes in the response. If your code does not set this value in the response, an empty value is returned. For example, if a custom attribute represents the trace ID, your model can prepend the custom attribute with @Trace ID:@ in your post-processing function. This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
--
-- * 'ieInferenceId' - If you provide a value, it is added to the captured data when you enable data capture on the endpoint. For information about data capture, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html Capture Data> .
--
-- * 'ieTargetVariant' - Specify the production variant to send the inference request to when invoking an endpoint that is running two or more variants. Note that this parameter overrides the default behavior for the endpoint, which is to distribute the invocation traffic based on the variant weights. For information about how to use variant targeting to perform a/b testing, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html Test models in production>
--
-- * 'ieEndpointName' - The name of the endpoint that you specified when you created the endpoint using the <https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html CreateEndpoint> API.
--
-- * 'ieBody' - Provides input data, in the format specified in the @ContentType@ request header. Amazon SageMaker passes all of the data in the body to the model.  For information about the format of the request body, see <https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html Common Data Formats-Inference> .
invokeEndpoint ::
  -- | 'ieEndpointName'
  Text ->
  -- | 'ieBody'
  ByteString ->
  InvokeEndpoint
invokeEndpoint pEndpointName_ pBody_ =
  InvokeEndpoint'
    { _ieTargetContainerHostname =
        Nothing,
      _ieContentType = Nothing,
      _ieTargetModel = Nothing,
      _ieAccept = Nothing,
      _ieCustomAttributes = Nothing,
      _ieInferenceId = Nothing,
      _ieTargetVariant = Nothing,
      _ieEndpointName = pEndpointName_,
      _ieBody = pBody_
    }

-- | If the endpoint hosts multiple containers and is configured to use direct invocation, this parameter specifies the host name of the container to invoke.
ieTargetContainerHostname :: Lens' InvokeEndpoint (Maybe Text)
ieTargetContainerHostname = lens _ieTargetContainerHostname (\s a -> s {_ieTargetContainerHostname = a})

-- | The MIME type of the input data in the request body.
ieContentType :: Lens' InvokeEndpoint (Maybe Text)
ieContentType = lens _ieContentType (\s a -> s {_ieContentType = a})

-- | The model to request for inference when invoking a multi-model endpoint.
ieTargetModel :: Lens' InvokeEndpoint (Maybe Text)
ieTargetModel = lens _ieTargetModel (\s a -> s {_ieTargetModel = a})

-- | The desired MIME type of the inference in the response.
ieAccept :: Lens' InvokeEndpoint (Maybe Text)
ieAccept = lens _ieAccept (\s a -> s {_ieAccept = a})

-- | Provides additional information about a request for an inference submitted to a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to provide an ID that you can use to track a request or to provide other metadata that a service endpoint was programmed to process. The value must consist of no more than 1024 visible US-ASCII characters as specified in <https://tools.ietf.org/html/rfc7230#section-3.2.6 Section 3.3.6. Field Value Components> of the Hypertext Transfer Protocol (HTTP/1.1).  The code in your model is responsible for setting or updating any custom attributes in the response. If your code does not set this value in the response, an empty value is returned. For example, if a custom attribute represents the trace ID, your model can prepend the custom attribute with @Trace ID:@ in your post-processing function. This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
ieCustomAttributes :: Lens' InvokeEndpoint (Maybe Text)
ieCustomAttributes = lens _ieCustomAttributes (\s a -> s {_ieCustomAttributes = a}) . mapping _Sensitive

-- | If you provide a value, it is added to the captured data when you enable data capture on the endpoint. For information about data capture, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html Capture Data> .
ieInferenceId :: Lens' InvokeEndpoint (Maybe Text)
ieInferenceId = lens _ieInferenceId (\s a -> s {_ieInferenceId = a})

-- | Specify the production variant to send the inference request to when invoking an endpoint that is running two or more variants. Note that this parameter overrides the default behavior for the endpoint, which is to distribute the invocation traffic based on the variant weights. For information about how to use variant targeting to perform a/b testing, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html Test models in production>
ieTargetVariant :: Lens' InvokeEndpoint (Maybe Text)
ieTargetVariant = lens _ieTargetVariant (\s a -> s {_ieTargetVariant = a})

-- | The name of the endpoint that you specified when you created the endpoint using the <https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html CreateEndpoint> API.
ieEndpointName :: Lens' InvokeEndpoint Text
ieEndpointName = lens _ieEndpointName (\s a -> s {_ieEndpointName = a})

-- | Provides input data, in the format specified in the @ContentType@ request header. Amazon SageMaker passes all of the data in the body to the model.  For information about the format of the request body, see <https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html Common Data Formats-Inference> .
ieBody :: Lens' InvokeEndpoint ByteString
ieBody = lens _ieBody (\s a -> s {_ieBody = a})

instance AWSRequest InvokeEndpoint where
  type Rs InvokeEndpoint = InvokeEndpointResponse
  request = postBody sageMakerRuntime
  response =
    receiveBytes
      ( \s h x ->
          InvokeEndpointResponse'
            <$> (h .#? "Content-Type")
            <*> (h .#? "x-Amzn-Invoked-Production-Variant")
            <*> (h .#? "X-Amzn-SageMaker-Custom-Attributes")
            <*> (pure (fromEnum s))
            <*> (pure x)
      )

instance Hashable InvokeEndpoint

instance NFData InvokeEndpoint

instance ToBody InvokeEndpoint where
  toBody = toBody . _ieBody

instance ToHeaders InvokeEndpoint where
  toHeaders InvokeEndpoint' {..} =
    mconcat
      [ "X-Amzn-SageMaker-Target-Container-Hostname"
          =# _ieTargetContainerHostname,
        "Content-Type" =# _ieContentType,
        "X-Amzn-SageMaker-Target-Model" =# _ieTargetModel,
        "Accept" =# _ieAccept,
        "X-Amzn-SageMaker-Custom-Attributes"
          =# _ieCustomAttributes,
        "X-Amzn-SageMaker-Inference-Id" =# _ieInferenceId,
        "X-Amzn-SageMaker-Target-Variant"
          =# _ieTargetVariant
      ]

instance ToPath InvokeEndpoint where
  toPath InvokeEndpoint' {..} =
    mconcat
      ["/endpoints/", toBS _ieEndpointName, "/invocations"]

instance ToQuery InvokeEndpoint where
  toQuery = const mempty

-- | /See:/ 'invokeEndpointResponse' smart constructor.
data InvokeEndpointResponse = InvokeEndpointResponse'
  { _ierrsContentType ::
      !(Maybe Text),
    _ierrsInvokedProductionVariant ::
      !(Maybe Text),
    _ierrsCustomAttributes ::
      !(Maybe (Sensitive Text)),
    _ierrsResponseStatus ::
      !Int,
    _ierrsBody :: !ByteString
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InvokeEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ierrsContentType' - The MIME type of the inference returned in the response body.
--
-- * 'ierrsInvokedProductionVariant' - Identifies the production variant that was invoked.
--
-- * 'ierrsCustomAttributes' - Provides additional information in the response about the inference returned by a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to return an ID received in the @CustomAttributes@ header of a request or other metadata that a service endpoint was programmed to produce. The value must consist of no more than 1024 visible US-ASCII characters as specified in <https://tools.ietf.org/html/rfc7230#section-3.2.6 Section 3.3.6. Field Value Components> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer wants the custom attribute returned, the model must set the custom attribute to be included on the way back.  The code in your model is responsible for setting or updating any custom attributes in the response. If your code does not set this value in the response, an empty value is returned. For example, if a custom attribute represents the trace ID, your model can prepend the custom attribute with @Trace ID:@ in your post-processing function. This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
--
-- * 'ierrsResponseStatus' - -- | The response status code.
--
-- * 'ierrsBody' - Includes the inference provided by the model. For information about the format of the response body, see <https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html Common Data Formats-Inference> .
invokeEndpointResponse ::
  -- | 'ierrsResponseStatus'
  Int ->
  -- | 'ierrsBody'
  ByteString ->
  InvokeEndpointResponse
invokeEndpointResponse pResponseStatus_ pBody_ =
  InvokeEndpointResponse'
    { _ierrsContentType =
        Nothing,
      _ierrsInvokedProductionVariant = Nothing,
      _ierrsCustomAttributes = Nothing,
      _ierrsResponseStatus = pResponseStatus_,
      _ierrsBody = pBody_
    }

-- | The MIME type of the inference returned in the response body.
ierrsContentType :: Lens' InvokeEndpointResponse (Maybe Text)
ierrsContentType = lens _ierrsContentType (\s a -> s {_ierrsContentType = a})

-- | Identifies the production variant that was invoked.
ierrsInvokedProductionVariant :: Lens' InvokeEndpointResponse (Maybe Text)
ierrsInvokedProductionVariant = lens _ierrsInvokedProductionVariant (\s a -> s {_ierrsInvokedProductionVariant = a})

-- | Provides additional information in the response about the inference returned by a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to return an ID received in the @CustomAttributes@ header of a request or other metadata that a service endpoint was programmed to produce. The value must consist of no more than 1024 visible US-ASCII characters as specified in <https://tools.ietf.org/html/rfc7230#section-3.2.6 Section 3.3.6. Field Value Components> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer wants the custom attribute returned, the model must set the custom attribute to be included on the way back.  The code in your model is responsible for setting or updating any custom attributes in the response. If your code does not set this value in the response, an empty value is returned. For example, if a custom attribute represents the trace ID, your model can prepend the custom attribute with @Trace ID:@ in your post-processing function. This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.
ierrsCustomAttributes :: Lens' InvokeEndpointResponse (Maybe Text)
ierrsCustomAttributes = lens _ierrsCustomAttributes (\s a -> s {_ierrsCustomAttributes = a}) . mapping _Sensitive

-- | -- | The response status code.
ierrsResponseStatus :: Lens' InvokeEndpointResponse Int
ierrsResponseStatus = lens _ierrsResponseStatus (\s a -> s {_ierrsResponseStatus = a})

-- | Includes the inference provided by the model. For information about the format of the response body, see <https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html Common Data Formats-Inference> .
ierrsBody :: Lens' InvokeEndpointResponse ByteString
ierrsBody = lens _ierrsBody (\s a -> s {_ierrsBody = a})

instance NFData InvokeEndpointResponse
