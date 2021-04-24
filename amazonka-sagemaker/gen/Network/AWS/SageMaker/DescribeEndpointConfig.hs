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
-- Module      : Network.AWS.SageMaker.DescribeEndpointConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of an endpoint configuration created using the @CreateEndpointConfig@ API.
module Network.AWS.SageMaker.DescribeEndpointConfig
  ( -- * Creating a Request
    describeEndpointConfig,
    DescribeEndpointConfig,

    -- * Request Lenses
    decEndpointConfigName,

    -- * Destructuring the Response
    describeEndpointConfigResponse,
    DescribeEndpointConfigResponse,

    -- * Response Lenses
    decrrsKMSKeyId,
    decrrsDataCaptureConfig,
    decrrsResponseStatus,
    decrrsEndpointConfigName,
    decrrsEndpointConfigARN,
    decrrsProductionVariants,
    decrrsCreationTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeEndpointConfig' smart constructor.
newtype DescribeEndpointConfig = DescribeEndpointConfig'
  { _decEndpointConfigName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEndpointConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decEndpointConfigName' - The name of the endpoint configuration.
describeEndpointConfig ::
  -- | 'decEndpointConfigName'
  Text ->
  DescribeEndpointConfig
describeEndpointConfig pEndpointConfigName_ =
  DescribeEndpointConfig'
    { _decEndpointConfigName =
        pEndpointConfigName_
    }

-- | The name of the endpoint configuration.
decEndpointConfigName :: Lens' DescribeEndpointConfig Text
decEndpointConfigName = lens _decEndpointConfigName (\s a -> s {_decEndpointConfigName = a})

instance AWSRequest DescribeEndpointConfig where
  type
    Rs DescribeEndpointConfig =
      DescribeEndpointConfigResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeEndpointConfigResponse'
            <$> (x .?> "KmsKeyId")
            <*> (x .?> "DataCaptureConfig")
            <*> (pure (fromEnum s))
            <*> (x .:> "EndpointConfigName")
            <*> (x .:> "EndpointConfigArn")
            <*> (x .:> "ProductionVariants")
            <*> (x .:> "CreationTime")
      )

instance Hashable DescribeEndpointConfig

instance NFData DescribeEndpointConfig

instance ToHeaders DescribeEndpointConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeEndpointConfig" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEndpointConfig where
  toJSON DescribeEndpointConfig' {..} =
    object
      ( catMaybes
          [ Just
              ("EndpointConfigName" .= _decEndpointConfigName)
          ]
      )

instance ToPath DescribeEndpointConfig where
  toPath = const "/"

instance ToQuery DescribeEndpointConfig where
  toQuery = const mempty

-- | /See:/ 'describeEndpointConfigResponse' smart constructor.
data DescribeEndpointConfigResponse = DescribeEndpointConfigResponse'
  { _decrrsKMSKeyId ::
      !( Maybe
           Text
       ),
    _decrrsDataCaptureConfig ::
      !( Maybe
           DataCaptureConfig
       ),
    _decrrsResponseStatus ::
      !Int,
    _decrrsEndpointConfigName ::
      !Text,
    _decrrsEndpointConfigARN ::
      !Text,
    _decrrsProductionVariants ::
      !( List1
           ProductionVariant
       ),
    _decrrsCreationTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEndpointConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decrrsKMSKeyId' - AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on the ML storage volume attached to the instance.
--
-- * 'decrrsDataCaptureConfig' - Undocumented member.
--
-- * 'decrrsResponseStatus' - -- | The response status code.
--
-- * 'decrrsEndpointConfigName' - Name of the Amazon SageMaker endpoint configuration.
--
-- * 'decrrsEndpointConfigARN' - The Amazon Resource Name (ARN) of the endpoint configuration.
--
-- * 'decrrsProductionVariants' - An array of @ProductionVariant@ objects, one for each model that you want to host at this endpoint.
--
-- * 'decrrsCreationTime' - A timestamp that shows when the endpoint configuration was created.
describeEndpointConfigResponse ::
  -- | 'decrrsResponseStatus'
  Int ->
  -- | 'decrrsEndpointConfigName'
  Text ->
  -- | 'decrrsEndpointConfigARN'
  Text ->
  -- | 'decrrsProductionVariants'
  NonEmpty ProductionVariant ->
  -- | 'decrrsCreationTime'
  UTCTime ->
  DescribeEndpointConfigResponse
describeEndpointConfigResponse
  pResponseStatus_
  pEndpointConfigName_
  pEndpointConfigARN_
  pProductionVariants_
  pCreationTime_ =
    DescribeEndpointConfigResponse'
      { _decrrsKMSKeyId =
          Nothing,
        _decrrsDataCaptureConfig = Nothing,
        _decrrsResponseStatus = pResponseStatus_,
        _decrrsEndpointConfigName =
          pEndpointConfigName_,
        _decrrsEndpointConfigARN =
          pEndpointConfigARN_,
        _decrrsProductionVariants =
          _List1 # pProductionVariants_,
        _decrrsCreationTime =
          _Time # pCreationTime_
      }

-- | AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on the ML storage volume attached to the instance.
decrrsKMSKeyId :: Lens' DescribeEndpointConfigResponse (Maybe Text)
decrrsKMSKeyId = lens _decrrsKMSKeyId (\s a -> s {_decrrsKMSKeyId = a})

-- | Undocumented member.
decrrsDataCaptureConfig :: Lens' DescribeEndpointConfigResponse (Maybe DataCaptureConfig)
decrrsDataCaptureConfig = lens _decrrsDataCaptureConfig (\s a -> s {_decrrsDataCaptureConfig = a})

-- | -- | The response status code.
decrrsResponseStatus :: Lens' DescribeEndpointConfigResponse Int
decrrsResponseStatus = lens _decrrsResponseStatus (\s a -> s {_decrrsResponseStatus = a})

-- | Name of the Amazon SageMaker endpoint configuration.
decrrsEndpointConfigName :: Lens' DescribeEndpointConfigResponse Text
decrrsEndpointConfigName = lens _decrrsEndpointConfigName (\s a -> s {_decrrsEndpointConfigName = a})

-- | The Amazon Resource Name (ARN) of the endpoint configuration.
decrrsEndpointConfigARN :: Lens' DescribeEndpointConfigResponse Text
decrrsEndpointConfigARN = lens _decrrsEndpointConfigARN (\s a -> s {_decrrsEndpointConfigARN = a})

-- | An array of @ProductionVariant@ objects, one for each model that you want to host at this endpoint.
decrrsProductionVariants :: Lens' DescribeEndpointConfigResponse (NonEmpty ProductionVariant)
decrrsProductionVariants = lens _decrrsProductionVariants (\s a -> s {_decrrsProductionVariants = a}) . _List1

-- | A timestamp that shows when the endpoint configuration was created.
decrrsCreationTime :: Lens' DescribeEndpointConfigResponse UTCTime
decrrsCreationTime = lens _decrrsCreationTime (\s a -> s {_decrrsCreationTime = a}) . _Time

instance NFData DescribeEndpointConfigResponse
