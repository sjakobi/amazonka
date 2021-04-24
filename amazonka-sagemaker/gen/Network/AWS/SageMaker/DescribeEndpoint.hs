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
-- Module      : Network.AWS.SageMaker.DescribeEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of an endpoint.
module Network.AWS.SageMaker.DescribeEndpoint
  ( -- * Creating a Request
    describeEndpoint,
    DescribeEndpoint,

    -- * Request Lenses
    deEndpointName,

    -- * Destructuring the Response
    describeEndpointResponse,
    DescribeEndpointResponse,

    -- * Response Lenses
    describeendpointresponseersProductionVariants,
    describeendpointresponseersLastDeploymentConfig,
    describeendpointresponseersFailureReason,
    describeendpointresponseersDataCaptureConfig,
    describeendpointresponseersResponseStatus,
    describeendpointresponseersEndpointName,
    describeendpointresponseersEndpointARN,
    describeendpointresponseersEndpointConfigName,
    describeendpointresponseersEndpointStatus,
    describeendpointresponseersCreationTime,
    describeendpointresponseersLastModifiedTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeEndpoint' smart constructor.
newtype DescribeEndpoint = DescribeEndpoint'
  { _deEndpointName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deEndpointName' - The name of the endpoint.
describeEndpoint ::
  -- | 'deEndpointName'
  Text ->
  DescribeEndpoint
describeEndpoint pEndpointName_ =
  DescribeEndpoint' {_deEndpointName = pEndpointName_}

-- | The name of the endpoint.
deEndpointName :: Lens' DescribeEndpoint Text
deEndpointName = lens _deEndpointName (\s a -> s {_deEndpointName = a})

instance AWSRequest DescribeEndpoint where
  type Rs DescribeEndpoint = DescribeEndpointResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeEndpointResponse'
            <$> (x .?> "ProductionVariants")
            <*> (x .?> "LastDeploymentConfig")
            <*> (x .?> "FailureReason")
            <*> (x .?> "DataCaptureConfig")
            <*> (pure (fromEnum s))
            <*> (x .:> "EndpointName")
            <*> (x .:> "EndpointArn")
            <*> (x .:> "EndpointConfigName")
            <*> (x .:> "EndpointStatus")
            <*> (x .:> "CreationTime")
            <*> (x .:> "LastModifiedTime")
      )

instance Hashable DescribeEndpoint

instance NFData DescribeEndpoint

instance ToHeaders DescribeEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeEndpoint" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEndpoint where
  toJSON DescribeEndpoint' {..} =
    object
      ( catMaybes
          [Just ("EndpointName" .= _deEndpointName)]
      )

instance ToPath DescribeEndpoint where
  toPath = const "/"

instance ToQuery DescribeEndpoint where
  toQuery = const mempty

-- | /See:/ 'describeEndpointResponse' smart constructor.
data DescribeEndpointResponse = DescribeEndpointResponse'
  { _describeendpointresponseersProductionVariants ::
      !( Maybe
           ( List1
               ProductionVariantSummary
           )
       ),
    _describeendpointresponseersLastDeploymentConfig ::
      !( Maybe
           DeploymentConfig
       ),
    _describeendpointresponseersFailureReason ::
      !(Maybe Text),
    _describeendpointresponseersDataCaptureConfig ::
      !( Maybe
           DataCaptureConfigSummary
       ),
    _describeendpointresponseersResponseStatus ::
      !Int,
    _describeendpointresponseersEndpointName ::
      !Text,
    _describeendpointresponseersEndpointARN ::
      !Text,
    _describeendpointresponseersEndpointConfigName ::
      !Text,
    _describeendpointresponseersEndpointStatus ::
      !EndpointStatus,
    _describeendpointresponseersCreationTime ::
      !POSIX,
    _describeendpointresponseersLastModifiedTime ::
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

-- | Creates a value of 'DescribeEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'describeendpointresponseersProductionVariants' - An array of 'ProductionVariantSummary' objects, one for each model hosted behind this endpoint.
--
-- * 'describeendpointresponseersLastDeploymentConfig' - The most recent deployment configuration for the endpoint.
--
-- * 'describeendpointresponseersFailureReason' - If the status of the endpoint is @Failed@ , the reason why it failed.
--
-- * 'describeendpointresponseersDataCaptureConfig' - Undocumented member.
--
-- * 'describeendpointresponseersResponseStatus' - -- | The response status code.
--
-- * 'describeendpointresponseersEndpointName' - Name of the endpoint.
--
-- * 'describeendpointresponseersEndpointARN' - The Amazon Resource Name (ARN) of the endpoint.
--
-- * 'describeendpointresponseersEndpointConfigName' - The name of the endpoint configuration associated with this endpoint.
--
-- * 'describeendpointresponseersEndpointStatus' - The status of the endpoint.     * @OutOfService@ : Endpoint is not available to take incoming requests.     * @Creating@ : 'CreateEndpoint' is executing.     * @Updating@ : 'UpdateEndpoint' or 'UpdateEndpointWeightsAndCapacities' is executing.     * @SystemUpdating@ : Endpoint is undergoing maintenance and cannot be updated or deleted or re-scaled until it has completed. This maintenance operation does not change any customer-specified values such as VPC config, KMS encryption, model, instance type, or instance count.     * @RollingBack@ : Endpoint fails to scale up or down or change its variant weight and is in the process of rolling back to its previous configuration. Once the rollback completes, endpoint returns to an @InService@ status. This transitional status only applies to an endpoint that has autoscaling enabled and is undergoing variant weight or capacity changes as part of an 'UpdateEndpointWeightsAndCapacities' call or when the 'UpdateEndpointWeightsAndCapacities' operation is called explicitly.     * @InService@ : Endpoint is available to process incoming requests.     * @Deleting@ : 'DeleteEndpoint' is executing.     * @Failed@ : Endpoint could not be created, updated, or re-scaled. Use 'DescribeEndpointOutput$FailureReason' for information about the failure. 'DeleteEndpoint' is the only operation that can be performed on a failed endpoint.
--
-- * 'describeendpointresponseersCreationTime' - A timestamp that shows when the endpoint was created.
--
-- * 'describeendpointresponseersLastModifiedTime' - A timestamp that shows when the endpoint was last modified.
describeEndpointResponse ::
  -- | 'describeendpointresponseersResponseStatus'
  Int ->
  -- | 'describeendpointresponseersEndpointName'
  Text ->
  -- | 'describeendpointresponseersEndpointARN'
  Text ->
  -- | 'describeendpointresponseersEndpointConfigName'
  Text ->
  -- | 'describeendpointresponseersEndpointStatus'
  EndpointStatus ->
  -- | 'describeendpointresponseersCreationTime'
  UTCTime ->
  -- | 'describeendpointresponseersLastModifiedTime'
  UTCTime ->
  DescribeEndpointResponse
describeEndpointResponse
  pResponseStatus_
  pEndpointName_
  pEndpointARN_
  pEndpointConfigName_
  pEndpointStatus_
  pCreationTime_
  pLastModifiedTime_ =
    DescribeEndpointResponse'
      { _describeendpointresponseersProductionVariants =
          Nothing,
        _describeendpointresponseersLastDeploymentConfig =
          Nothing,
        _describeendpointresponseersFailureReason =
          Nothing,
        _describeendpointresponseersDataCaptureConfig =
          Nothing,
        _describeendpointresponseersResponseStatus =
          pResponseStatus_,
        _describeendpointresponseersEndpointName =
          pEndpointName_,
        _describeendpointresponseersEndpointARN =
          pEndpointARN_,
        _describeendpointresponseersEndpointConfigName =
          pEndpointConfigName_,
        _describeendpointresponseersEndpointStatus =
          pEndpointStatus_,
        _describeendpointresponseersCreationTime =
          _Time # pCreationTime_,
        _describeendpointresponseersLastModifiedTime =
          _Time # pLastModifiedTime_
      }

-- | An array of 'ProductionVariantSummary' objects, one for each model hosted behind this endpoint.
describeendpointresponseersProductionVariants :: Lens' DescribeEndpointResponse (Maybe (NonEmpty ProductionVariantSummary))
describeendpointresponseersProductionVariants = lens _describeendpointresponseersProductionVariants (\s a -> s {_describeendpointresponseersProductionVariants = a}) . mapping _List1

-- | The most recent deployment configuration for the endpoint.
describeendpointresponseersLastDeploymentConfig :: Lens' DescribeEndpointResponse (Maybe DeploymentConfig)
describeendpointresponseersLastDeploymentConfig = lens _describeendpointresponseersLastDeploymentConfig (\s a -> s {_describeendpointresponseersLastDeploymentConfig = a})

-- | If the status of the endpoint is @Failed@ , the reason why it failed.
describeendpointresponseersFailureReason :: Lens' DescribeEndpointResponse (Maybe Text)
describeendpointresponseersFailureReason = lens _describeendpointresponseersFailureReason (\s a -> s {_describeendpointresponseersFailureReason = a})

-- | Undocumented member.
describeendpointresponseersDataCaptureConfig :: Lens' DescribeEndpointResponse (Maybe DataCaptureConfigSummary)
describeendpointresponseersDataCaptureConfig = lens _describeendpointresponseersDataCaptureConfig (\s a -> s {_describeendpointresponseersDataCaptureConfig = a})

-- | -- | The response status code.
describeendpointresponseersResponseStatus :: Lens' DescribeEndpointResponse Int
describeendpointresponseersResponseStatus = lens _describeendpointresponseersResponseStatus (\s a -> s {_describeendpointresponseersResponseStatus = a})

-- | Name of the endpoint.
describeendpointresponseersEndpointName :: Lens' DescribeEndpointResponse Text
describeendpointresponseersEndpointName = lens _describeendpointresponseersEndpointName (\s a -> s {_describeendpointresponseersEndpointName = a})

-- | The Amazon Resource Name (ARN) of the endpoint.
describeendpointresponseersEndpointARN :: Lens' DescribeEndpointResponse Text
describeendpointresponseersEndpointARN = lens _describeendpointresponseersEndpointARN (\s a -> s {_describeendpointresponseersEndpointARN = a})

-- | The name of the endpoint configuration associated with this endpoint.
describeendpointresponseersEndpointConfigName :: Lens' DescribeEndpointResponse Text
describeendpointresponseersEndpointConfigName = lens _describeendpointresponseersEndpointConfigName (\s a -> s {_describeendpointresponseersEndpointConfigName = a})

-- | The status of the endpoint.     * @OutOfService@ : Endpoint is not available to take incoming requests.     * @Creating@ : 'CreateEndpoint' is executing.     * @Updating@ : 'UpdateEndpoint' or 'UpdateEndpointWeightsAndCapacities' is executing.     * @SystemUpdating@ : Endpoint is undergoing maintenance and cannot be updated or deleted or re-scaled until it has completed. This maintenance operation does not change any customer-specified values such as VPC config, KMS encryption, model, instance type, or instance count.     * @RollingBack@ : Endpoint fails to scale up or down or change its variant weight and is in the process of rolling back to its previous configuration. Once the rollback completes, endpoint returns to an @InService@ status. This transitional status only applies to an endpoint that has autoscaling enabled and is undergoing variant weight or capacity changes as part of an 'UpdateEndpointWeightsAndCapacities' call or when the 'UpdateEndpointWeightsAndCapacities' operation is called explicitly.     * @InService@ : Endpoint is available to process incoming requests.     * @Deleting@ : 'DeleteEndpoint' is executing.     * @Failed@ : Endpoint could not be created, updated, or re-scaled. Use 'DescribeEndpointOutput$FailureReason' for information about the failure. 'DeleteEndpoint' is the only operation that can be performed on a failed endpoint.
describeendpointresponseersEndpointStatus :: Lens' DescribeEndpointResponse EndpointStatus
describeendpointresponseersEndpointStatus = lens _describeendpointresponseersEndpointStatus (\s a -> s {_describeendpointresponseersEndpointStatus = a})

-- | A timestamp that shows when the endpoint was created.
describeendpointresponseersCreationTime :: Lens' DescribeEndpointResponse UTCTime
describeendpointresponseersCreationTime = lens _describeendpointresponseersCreationTime (\s a -> s {_describeendpointresponseersCreationTime = a}) . _Time

-- | A timestamp that shows when the endpoint was last modified.
describeendpointresponseersLastModifiedTime :: Lens' DescribeEndpointResponse UTCTime
describeendpointresponseersLastModifiedTime = lens _describeendpointresponseersLastModifiedTime (\s a -> s {_describeendpointresponseersLastModifiedTime = a}) . _Time

instance NFData DescribeEndpointResponse
