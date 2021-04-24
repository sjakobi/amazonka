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
-- Module      : Network.AWS.StorageGateway.DescribeGatewayInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not). To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.
module Network.AWS.StorageGateway.DescribeGatewayInformation
  ( -- * Creating a Request
    describeGatewayInformation,
    DescribeGatewayInformation,

    -- * Request Lenses
    dgiGatewayARN,

    -- * Destructuring the Response
    describeGatewayInformationResponse,
    DescribeGatewayInformationResponse,

    -- * Response Lenses
    dgirrsGatewayState,
    dgirrsGatewayName,
    dgirrsDeprecationDate,
    dgirrsSoftwareUpdatesEndDate,
    dgirrsEndpointType,
    dgirrsNextUpdateAvailabilityDate,
    dgirrsGatewayTimezone,
    dgirrsGatewayNetworkInterfaces,
    dgirrsGatewayType,
    dgirrsEC2InstanceRegion,
    dgirrsLastSoftwareUpdate,
    dgirrsTags,
    dgirrsVPCEndpoint,
    dgirrsCloudWatchLogGroupARN,
    dgirrsEC2InstanceId,
    dgirrsHostEnvironment,
    dgirrsGatewayARN,
    dgirrsGatewayId,
    dgirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the ID of the gateway.
--
--
--
-- /See:/ 'describeGatewayInformation' smart constructor.
newtype DescribeGatewayInformation = DescribeGatewayInformation'
  { _dgiGatewayARN ::
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

-- | Creates a value of 'DescribeGatewayInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgiGatewayARN' - Undocumented member.
describeGatewayInformation ::
  -- | 'dgiGatewayARN'
  Text ->
  DescribeGatewayInformation
describeGatewayInformation pGatewayARN_ =
  DescribeGatewayInformation'
    { _dgiGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
dgiGatewayARN :: Lens' DescribeGatewayInformation Text
dgiGatewayARN = lens _dgiGatewayARN (\s a -> s {_dgiGatewayARN = a})

instance AWSRequest DescribeGatewayInformation where
  type
    Rs DescribeGatewayInformation =
      DescribeGatewayInformationResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeGatewayInformationResponse'
            <$> (x .?> "GatewayState")
            <*> (x .?> "GatewayName")
            <*> (x .?> "DeprecationDate")
            <*> (x .?> "SoftwareUpdatesEndDate")
            <*> (x .?> "EndpointType")
            <*> (x .?> "NextUpdateAvailabilityDate")
            <*> (x .?> "GatewayTimezone")
            <*> (x .?> "GatewayNetworkInterfaces" .!@ mempty)
            <*> (x .?> "GatewayType")
            <*> (x .?> "Ec2InstanceRegion")
            <*> (x .?> "LastSoftwareUpdate")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "VPCEndpoint")
            <*> (x .?> "CloudWatchLogGroupARN")
            <*> (x .?> "Ec2InstanceId")
            <*> (x .?> "HostEnvironment")
            <*> (x .?> "GatewayARN")
            <*> (x .?> "GatewayId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGatewayInformation

instance NFData DescribeGatewayInformation

instance ToHeaders DescribeGatewayInformation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeGatewayInformation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeGatewayInformation where
  toJSON DescribeGatewayInformation' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dgiGatewayARN)])

instance ToPath DescribeGatewayInformation where
  toPath = const "/"

instance ToQuery DescribeGatewayInformation where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'describeGatewayInformationResponse' smart constructor.
data DescribeGatewayInformationResponse = DescribeGatewayInformationResponse'
  { _dgirrsGatewayState ::
      !( Maybe
           Text
       ),
    _dgirrsGatewayName ::
      !( Maybe
           Text
       ),
    _dgirrsDeprecationDate ::
      !( Maybe
           Text
       ),
    _dgirrsSoftwareUpdatesEndDate ::
      !( Maybe
           Text
       ),
    _dgirrsEndpointType ::
      !( Maybe
           Text
       ),
    _dgirrsNextUpdateAvailabilityDate ::
      !( Maybe
           Text
       ),
    _dgirrsGatewayTimezone ::
      !( Maybe
           Text
       ),
    _dgirrsGatewayNetworkInterfaces ::
      !( Maybe
           [NetworkInterface]
       ),
    _dgirrsGatewayType ::
      !( Maybe
           Text
       ),
    _dgirrsEC2InstanceRegion ::
      !( Maybe
           Text
       ),
    _dgirrsLastSoftwareUpdate ::
      !( Maybe
           Text
       ),
    _dgirrsTags ::
      !( Maybe
           [Tag]
       ),
    _dgirrsVPCEndpoint ::
      !( Maybe
           Text
       ),
    _dgirrsCloudWatchLogGroupARN ::
      !( Maybe
           Text
       ),
    _dgirrsEC2InstanceId ::
      !( Maybe
           Text
       ),
    _dgirrsHostEnvironment ::
      !( Maybe
           HostEnvironment
       ),
    _dgirrsGatewayARN ::
      !( Maybe
           Text
       ),
    _dgirrsGatewayId ::
      !( Maybe
           Text
       ),
    _dgirrsResponseStatus ::
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

-- | Creates a value of 'DescribeGatewayInformationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgirrsGatewayState' - A value that indicates the operating state of the gateway.
--
-- * 'dgirrsGatewayName' - The name you configured for your gateway.
--
-- * 'dgirrsDeprecationDate' - Date after which this gateway will not receive software updates for new features and bug fixes.
--
-- * 'dgirrsSoftwareUpdatesEndDate' - Date after which this gateway will not receive software updates for new features.
--
-- * 'dgirrsEndpointType' - The type of endpoint for your gateway. Valid Values: @STANDARD@ | @FIPS@
--
-- * 'dgirrsNextUpdateAvailabilityDate' - The date on which an update to the gateway is available. This date is in the time zone of the gateway. If the gateway is not available for an update this field is not returned in the response.
--
-- * 'dgirrsGatewayTimezone' - A value that indicates the time zone configured for the gateway.
--
-- * 'dgirrsGatewayNetworkInterfaces' - A 'NetworkInterface' array that contains descriptions of the gateway network interfaces.
--
-- * 'dgirrsGatewayType' - The type of the gateway.
--
-- * 'dgirrsEC2InstanceRegion' - The AWS Region where the Amazon EC2 instance is located.
--
-- * 'dgirrsLastSoftwareUpdate' - The date on which the last software update was applied to the gateway. If the gateway has never been updated, this field does not return a value in the response.
--
-- * 'dgirrsTags' - A list of up to 50 tags assigned to the gateway, sorted alphabetically by key name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can view all tags using the @ListTagsForResource@ API operation.
--
-- * 'dgirrsVPCEndpoint' - The configuration settings for the virtual private cloud (VPC) endpoint for your gateway.
--
-- * 'dgirrsCloudWatchLogGroupARN' - The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to monitor events in the gateway.
--
-- * 'dgirrsEC2InstanceId' - The ID of the Amazon EC2 instance that was used to launch the gateway.
--
-- * 'dgirrsHostEnvironment' - The type of hypervisor environment used by the host.
--
-- * 'dgirrsGatewayARN' - Undocumented member.
--
-- * 'dgirrsGatewayId' - The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.
--
-- * 'dgirrsResponseStatus' - -- | The response status code.
describeGatewayInformationResponse ::
  -- | 'dgirrsResponseStatus'
  Int ->
  DescribeGatewayInformationResponse
describeGatewayInformationResponse pResponseStatus_ =
  DescribeGatewayInformationResponse'
    { _dgirrsGatewayState =
        Nothing,
      _dgirrsGatewayName = Nothing,
      _dgirrsDeprecationDate = Nothing,
      _dgirrsSoftwareUpdatesEndDate = Nothing,
      _dgirrsEndpointType = Nothing,
      _dgirrsNextUpdateAvailabilityDate =
        Nothing,
      _dgirrsGatewayTimezone = Nothing,
      _dgirrsGatewayNetworkInterfaces =
        Nothing,
      _dgirrsGatewayType = Nothing,
      _dgirrsEC2InstanceRegion = Nothing,
      _dgirrsLastSoftwareUpdate = Nothing,
      _dgirrsTags = Nothing,
      _dgirrsVPCEndpoint = Nothing,
      _dgirrsCloudWatchLogGroupARN = Nothing,
      _dgirrsEC2InstanceId = Nothing,
      _dgirrsHostEnvironment = Nothing,
      _dgirrsGatewayARN = Nothing,
      _dgirrsGatewayId = Nothing,
      _dgirrsResponseStatus =
        pResponseStatus_
    }

-- | A value that indicates the operating state of the gateway.
dgirrsGatewayState :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsGatewayState = lens _dgirrsGatewayState (\s a -> s {_dgirrsGatewayState = a})

-- | The name you configured for your gateway.
dgirrsGatewayName :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsGatewayName = lens _dgirrsGatewayName (\s a -> s {_dgirrsGatewayName = a})

-- | Date after which this gateway will not receive software updates for new features and bug fixes.
dgirrsDeprecationDate :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsDeprecationDate = lens _dgirrsDeprecationDate (\s a -> s {_dgirrsDeprecationDate = a})

-- | Date after which this gateway will not receive software updates for new features.
dgirrsSoftwareUpdatesEndDate :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsSoftwareUpdatesEndDate = lens _dgirrsSoftwareUpdatesEndDate (\s a -> s {_dgirrsSoftwareUpdatesEndDate = a})

-- | The type of endpoint for your gateway. Valid Values: @STANDARD@ | @FIPS@
dgirrsEndpointType :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsEndpointType = lens _dgirrsEndpointType (\s a -> s {_dgirrsEndpointType = a})

-- | The date on which an update to the gateway is available. This date is in the time zone of the gateway. If the gateway is not available for an update this field is not returned in the response.
dgirrsNextUpdateAvailabilityDate :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsNextUpdateAvailabilityDate = lens _dgirrsNextUpdateAvailabilityDate (\s a -> s {_dgirrsNextUpdateAvailabilityDate = a})

-- | A value that indicates the time zone configured for the gateway.
dgirrsGatewayTimezone :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsGatewayTimezone = lens _dgirrsGatewayTimezone (\s a -> s {_dgirrsGatewayTimezone = a})

-- | A 'NetworkInterface' array that contains descriptions of the gateway network interfaces.
dgirrsGatewayNetworkInterfaces :: Lens' DescribeGatewayInformationResponse [NetworkInterface]
dgirrsGatewayNetworkInterfaces = lens _dgirrsGatewayNetworkInterfaces (\s a -> s {_dgirrsGatewayNetworkInterfaces = a}) . _Default . _Coerce

-- | The type of the gateway.
dgirrsGatewayType :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsGatewayType = lens _dgirrsGatewayType (\s a -> s {_dgirrsGatewayType = a})

-- | The AWS Region where the Amazon EC2 instance is located.
dgirrsEC2InstanceRegion :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsEC2InstanceRegion = lens _dgirrsEC2InstanceRegion (\s a -> s {_dgirrsEC2InstanceRegion = a})

-- | The date on which the last software update was applied to the gateway. If the gateway has never been updated, this field does not return a value in the response.
dgirrsLastSoftwareUpdate :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsLastSoftwareUpdate = lens _dgirrsLastSoftwareUpdate (\s a -> s {_dgirrsLastSoftwareUpdate = a})

-- | A list of up to 50 tags assigned to the gateway, sorted alphabetically by key name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can view all tags using the @ListTagsForResource@ API operation.
dgirrsTags :: Lens' DescribeGatewayInformationResponse [Tag]
dgirrsTags = lens _dgirrsTags (\s a -> s {_dgirrsTags = a}) . _Default . _Coerce

-- | The configuration settings for the virtual private cloud (VPC) endpoint for your gateway.
dgirrsVPCEndpoint :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsVPCEndpoint = lens _dgirrsVPCEndpoint (\s a -> s {_dgirrsVPCEndpoint = a})

-- | The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to monitor events in the gateway.
dgirrsCloudWatchLogGroupARN :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsCloudWatchLogGroupARN = lens _dgirrsCloudWatchLogGroupARN (\s a -> s {_dgirrsCloudWatchLogGroupARN = a})

-- | The ID of the Amazon EC2 instance that was used to launch the gateway.
dgirrsEC2InstanceId :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsEC2InstanceId = lens _dgirrsEC2InstanceId (\s a -> s {_dgirrsEC2InstanceId = a})

-- | The type of hypervisor environment used by the host.
dgirrsHostEnvironment :: Lens' DescribeGatewayInformationResponse (Maybe HostEnvironment)
dgirrsHostEnvironment = lens _dgirrsHostEnvironment (\s a -> s {_dgirrsHostEnvironment = a})

-- | Undocumented member.
dgirrsGatewayARN :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsGatewayARN = lens _dgirrsGatewayARN (\s a -> s {_dgirrsGatewayARN = a})

-- | The unique identifier assigned to your gateway during activation. This ID becomes part of the gateway Amazon Resource Name (ARN), which you use as input for other operations.
dgirrsGatewayId :: Lens' DescribeGatewayInformationResponse (Maybe Text)
dgirrsGatewayId = lens _dgirrsGatewayId (\s a -> s {_dgirrsGatewayId = a})

-- | -- | The response status code.
dgirrsResponseStatus :: Lens' DescribeGatewayInformationResponse Int
dgirrsResponseStatus = lens _dgirrsResponseStatus (\s a -> s {_dgirrsResponseStatus = a})

instance NFData DescribeGatewayInformationResponse
