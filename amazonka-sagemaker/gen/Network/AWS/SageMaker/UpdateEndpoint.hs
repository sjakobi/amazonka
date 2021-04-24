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
-- Module      : Network.AWS.SageMaker.UpdateEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys the new @EndpointConfig@ specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous @EndpointConfig@ (there is no availability loss).
--
--
-- When Amazon SageMaker receives the request, it sets the endpoint status to @Updating@ . After updating the endpoint, it sets the status to @InService@ . To check the status of an endpoint, use the 'DescribeEndpoint' API.
module Network.AWS.SageMaker.UpdateEndpoint
  ( -- * Creating a Request
    updateEndpoint,
    UpdateEndpoint,

    -- * Request Lenses
    ueExcludeRetainedVariantProperties,
    ueRetainAllVariantProperties,
    ueDeploymentConfig,
    ueEndpointName,
    ueEndpointConfigName,

    -- * Destructuring the Response
    updateEndpointResponse,
    UpdateEndpointResponse,

    -- * Response Lenses
    uerrsResponseStatus,
    uerrsEndpointARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateEndpoint' smart constructor.
data UpdateEndpoint = UpdateEndpoint'
  { _ueExcludeRetainedVariantProperties ::
      !(Maybe [VariantProperty]),
    _ueRetainAllVariantProperties ::
      !(Maybe Bool),
    _ueDeploymentConfig ::
      !(Maybe DeploymentConfig),
    _ueEndpointName :: !Text,
    _ueEndpointConfigName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueExcludeRetainedVariantProperties' - When you are updating endpoint resources with 'UpdateEndpointInput$RetainAllVariantProperties' , whose value is set to @true@ , @ExcludeRetainedVariantProperties@ specifies the list of type 'VariantProperty' to override with the values provided by @EndpointConfig@ . If you don't specify a value for @ExcludeAllVariantProperties@ , no variant properties are overridden.
--
-- * 'ueRetainAllVariantProperties' - When updating endpoint resources, enables or disables the retention of <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VariantProperty.html variant properties> , such as the instance count or the variant weight. To retain the variant properties of an endpoint when updating it, set @RetainAllVariantProperties@ to @true@ . To use the variant properties specified in a new @EndpointConfig@ call when updating an endpoint, set @RetainAllVariantProperties@ to @false@ . The default is @false@ .
--
-- * 'ueDeploymentConfig' - The deployment configuration for the endpoint to be updated.
--
-- * 'ueEndpointName' - The name of the endpoint whose configuration you want to update.
--
-- * 'ueEndpointConfigName' - The name of the new endpoint configuration.
updateEndpoint ::
  -- | 'ueEndpointName'
  Text ->
  -- | 'ueEndpointConfigName'
  Text ->
  UpdateEndpoint
updateEndpoint pEndpointName_ pEndpointConfigName_ =
  UpdateEndpoint'
    { _ueExcludeRetainedVariantProperties =
        Nothing,
      _ueRetainAllVariantProperties = Nothing,
      _ueDeploymentConfig = Nothing,
      _ueEndpointName = pEndpointName_,
      _ueEndpointConfigName = pEndpointConfigName_
    }

-- | When you are updating endpoint resources with 'UpdateEndpointInput$RetainAllVariantProperties' , whose value is set to @true@ , @ExcludeRetainedVariantProperties@ specifies the list of type 'VariantProperty' to override with the values provided by @EndpointConfig@ . If you don't specify a value for @ExcludeAllVariantProperties@ , no variant properties are overridden.
ueExcludeRetainedVariantProperties :: Lens' UpdateEndpoint [VariantProperty]
ueExcludeRetainedVariantProperties = lens _ueExcludeRetainedVariantProperties (\s a -> s {_ueExcludeRetainedVariantProperties = a}) . _Default . _Coerce

-- | When updating endpoint resources, enables or disables the retention of <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VariantProperty.html variant properties> , such as the instance count or the variant weight. To retain the variant properties of an endpoint when updating it, set @RetainAllVariantProperties@ to @true@ . To use the variant properties specified in a new @EndpointConfig@ call when updating an endpoint, set @RetainAllVariantProperties@ to @false@ . The default is @false@ .
ueRetainAllVariantProperties :: Lens' UpdateEndpoint (Maybe Bool)
ueRetainAllVariantProperties = lens _ueRetainAllVariantProperties (\s a -> s {_ueRetainAllVariantProperties = a})

-- | The deployment configuration for the endpoint to be updated.
ueDeploymentConfig :: Lens' UpdateEndpoint (Maybe DeploymentConfig)
ueDeploymentConfig = lens _ueDeploymentConfig (\s a -> s {_ueDeploymentConfig = a})

-- | The name of the endpoint whose configuration you want to update.
ueEndpointName :: Lens' UpdateEndpoint Text
ueEndpointName = lens _ueEndpointName (\s a -> s {_ueEndpointName = a})

-- | The name of the new endpoint configuration.
ueEndpointConfigName :: Lens' UpdateEndpoint Text
ueEndpointConfigName = lens _ueEndpointConfigName (\s a -> s {_ueEndpointConfigName = a})

instance AWSRequest UpdateEndpoint where
  type Rs UpdateEndpoint = UpdateEndpointResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateEndpointResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "EndpointArn")
      )

instance Hashable UpdateEndpoint

instance NFData UpdateEndpoint

instance ToHeaders UpdateEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateEndpoint" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateEndpoint where
  toJSON UpdateEndpoint' {..} =
    object
      ( catMaybes
          [ ("ExcludeRetainedVariantProperties" .=)
              <$> _ueExcludeRetainedVariantProperties,
            ("RetainAllVariantProperties" .=)
              <$> _ueRetainAllVariantProperties,
            ("DeploymentConfig" .=) <$> _ueDeploymentConfig,
            Just ("EndpointName" .= _ueEndpointName),
            Just
              ("EndpointConfigName" .= _ueEndpointConfigName)
          ]
      )

instance ToPath UpdateEndpoint where
  toPath = const "/"

instance ToQuery UpdateEndpoint where
  toQuery = const mempty

-- | /See:/ 'updateEndpointResponse' smart constructor.
data UpdateEndpointResponse = UpdateEndpointResponse'
  { _uerrsResponseStatus ::
      !Int,
    _uerrsEndpointARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uerrsResponseStatus' - -- | The response status code.
--
-- * 'uerrsEndpointARN' - The Amazon Resource Name (ARN) of the endpoint.
updateEndpointResponse ::
  -- | 'uerrsResponseStatus'
  Int ->
  -- | 'uerrsEndpointARN'
  Text ->
  UpdateEndpointResponse
updateEndpointResponse pResponseStatus_ pEndpointARN_ =
  UpdateEndpointResponse'
    { _uerrsResponseStatus =
        pResponseStatus_,
      _uerrsEndpointARN = pEndpointARN_
    }

-- | -- | The response status code.
uerrsResponseStatus :: Lens' UpdateEndpointResponse Int
uerrsResponseStatus = lens _uerrsResponseStatus (\s a -> s {_uerrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the endpoint.
uerrsEndpointARN :: Lens' UpdateEndpointResponse Text
uerrsEndpointARN = lens _uerrsEndpointARN (\s a -> s {_uerrsEndpointARN = a})

instance NFData UpdateEndpointResponse
