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
-- Module      : Network.AWS.EC2.RequestSpotInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Spot Instance request.
--
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html Spot Instance requests> in the /Amazon EC2 User Guide for Linux Instances/ .
module Network.AWS.EC2.RequestSpotInstances
  ( -- * Creating a Request
    requestSpotInstances,
    RequestSpotInstances,

    -- * Request Lenses
    rsiTagSpecifications,
    rsiDryRun,
    rsiValidFrom,
    rsiSpotPrice,
    rsiBlockDurationMinutes,
    rsiLaunchGroup,
    rsiInstanceInterruptionBehavior,
    rsiValidUntil,
    rsiLaunchSpecification,
    rsiType,
    rsiAvailabilityZoneGroup,
    rsiClientToken,
    rsiInstanceCount,

    -- * Destructuring the Response
    requestSpotInstancesResponse,
    RequestSpotInstancesResponse,

    -- * Response Lenses
    rsirrsSpotInstanceRequests,
    rsirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for RequestSpotInstances.
--
--
--
-- /See:/ 'requestSpotInstances' smart constructor.
data RequestSpotInstances = RequestSpotInstances'
  { _rsiTagSpecifications ::
      !(Maybe [TagSpecification]),
    _rsiDryRun :: !(Maybe Bool),
    _rsiValidFrom ::
      !(Maybe ISO8601),
    _rsiSpotPrice ::
      !(Maybe Text),
    _rsiBlockDurationMinutes ::
      !(Maybe Int),
    _rsiLaunchGroup ::
      !(Maybe Text),
    _rsiInstanceInterruptionBehavior ::
      !( Maybe
           InstanceInterruptionBehavior
       ),
    _rsiValidUntil ::
      !(Maybe ISO8601),
    _rsiLaunchSpecification ::
      !( Maybe
           RequestSpotLaunchSpecification
       ),
    _rsiType ::
      !(Maybe SpotInstanceType),
    _rsiAvailabilityZoneGroup ::
      !(Maybe Text),
    _rsiClientToken ::
      !(Maybe Text),
    _rsiInstanceCount ::
      !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RequestSpotInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsiTagSpecifications' - The key-value pair for tagging the Spot Instance request on creation. The value for @ResourceType@ must be @spot-instances-request@ , otherwise the Spot Instance request fails. To tag the Spot Instance request after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
--
-- * 'rsiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'rsiValidFrom' - The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled. The specified start date and time cannot be equal to the current date and time. You must specify a start date and time that occurs after the current date and time.
--
-- * 'rsiSpotPrice' - The maximum price per hour that you are willing to pay for a Spot Instance. The default is the On-Demand price.
--
-- * 'rsiBlockDurationMinutes' - The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360). The duration period starts as soon as your Spot Instance receives its instance ID. At the end of the duration period, Amazon EC2 marks the Spot Instance for termination and provides a Spot Instance termination notice, which gives the instance a two-minute warning before it terminates. You can't specify an Availability Zone group or a launch group if you specify a duration. New accounts or accounts with no previous billing history with AWS are not eligible for Spot Instances with a defined duration (also known as Spot blocks).
--
-- * 'rsiLaunchGroup' - The instance launch group. Launch groups are Spot Instances that launch together and terminate together. Default: Instances are launched and terminated individually
--
-- * 'rsiInstanceInterruptionBehavior' - The behavior when a Spot Instance is interrupted. The default is @terminate@ .
--
-- * 'rsiValidUntil' - The end date of the request, in UTC format (/YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).     * For a persistent request, the request remains active until the @ValidUntil@ date and time is reached. Otherwise, the request remains active until you cancel it.      * For a one-time request, the request remains active until all instances launch, the request is canceled, or the @ValidUntil@ date and time is reached. By default, the request is valid for 7 days from the date the request was created.
--
-- * 'rsiLaunchSpecification' - The launch specification.
--
-- * 'rsiType' - The Spot Instance request type. Default: @one-time@
--
-- * 'rsiAvailabilityZoneGroup' - The user-specified name for a logical grouping of requests. When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active. If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group. Default: Instances are launched in any available Availability Zone.
--
-- * 'rsiClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- * 'rsiInstanceCount' - The maximum number of Spot Instances to launch. Default: 1
requestSpotInstances ::
  RequestSpotInstances
requestSpotInstances =
  RequestSpotInstances'
    { _rsiTagSpecifications =
        Nothing,
      _rsiDryRun = Nothing,
      _rsiValidFrom = Nothing,
      _rsiSpotPrice = Nothing,
      _rsiBlockDurationMinutes = Nothing,
      _rsiLaunchGroup = Nothing,
      _rsiInstanceInterruptionBehavior = Nothing,
      _rsiValidUntil = Nothing,
      _rsiLaunchSpecification = Nothing,
      _rsiType = Nothing,
      _rsiAvailabilityZoneGroup = Nothing,
      _rsiClientToken = Nothing,
      _rsiInstanceCount = Nothing
    }

-- | The key-value pair for tagging the Spot Instance request on creation. The value for @ResourceType@ must be @spot-instances-request@ , otherwise the Spot Instance request fails. To tag the Spot Instance request after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
rsiTagSpecifications :: Lens' RequestSpotInstances [TagSpecification]
rsiTagSpecifications = lens _rsiTagSpecifications (\s a -> s {_rsiTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
rsiDryRun :: Lens' RequestSpotInstances (Maybe Bool)
rsiDryRun = lens _rsiDryRun (\s a -> s {_rsiDryRun = a})

-- | The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled. The specified start date and time cannot be equal to the current date and time. You must specify a start date and time that occurs after the current date and time.
rsiValidFrom :: Lens' RequestSpotInstances (Maybe UTCTime)
rsiValidFrom = lens _rsiValidFrom (\s a -> s {_rsiValidFrom = a}) . mapping _Time

-- | The maximum price per hour that you are willing to pay for a Spot Instance. The default is the On-Demand price.
rsiSpotPrice :: Lens' RequestSpotInstances (Maybe Text)
rsiSpotPrice = lens _rsiSpotPrice (\s a -> s {_rsiSpotPrice = a})

-- | The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360). The duration period starts as soon as your Spot Instance receives its instance ID. At the end of the duration period, Amazon EC2 marks the Spot Instance for termination and provides a Spot Instance termination notice, which gives the instance a two-minute warning before it terminates. You can't specify an Availability Zone group or a launch group if you specify a duration. New accounts or accounts with no previous billing history with AWS are not eligible for Spot Instances with a defined duration (also known as Spot blocks).
rsiBlockDurationMinutes :: Lens' RequestSpotInstances (Maybe Int)
rsiBlockDurationMinutes = lens _rsiBlockDurationMinutes (\s a -> s {_rsiBlockDurationMinutes = a})

-- | The instance launch group. Launch groups are Spot Instances that launch together and terminate together. Default: Instances are launched and terminated individually
rsiLaunchGroup :: Lens' RequestSpotInstances (Maybe Text)
rsiLaunchGroup = lens _rsiLaunchGroup (\s a -> s {_rsiLaunchGroup = a})

-- | The behavior when a Spot Instance is interrupted. The default is @terminate@ .
rsiInstanceInterruptionBehavior :: Lens' RequestSpotInstances (Maybe InstanceInterruptionBehavior)
rsiInstanceInterruptionBehavior = lens _rsiInstanceInterruptionBehavior (\s a -> s {_rsiInstanceInterruptionBehavior = a})

-- | The end date of the request, in UTC format (/YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).     * For a persistent request, the request remains active until the @ValidUntil@ date and time is reached. Otherwise, the request remains active until you cancel it.      * For a one-time request, the request remains active until all instances launch, the request is canceled, or the @ValidUntil@ date and time is reached. By default, the request is valid for 7 days from the date the request was created.
rsiValidUntil :: Lens' RequestSpotInstances (Maybe UTCTime)
rsiValidUntil = lens _rsiValidUntil (\s a -> s {_rsiValidUntil = a}) . mapping _Time

-- | The launch specification.
rsiLaunchSpecification :: Lens' RequestSpotInstances (Maybe RequestSpotLaunchSpecification)
rsiLaunchSpecification = lens _rsiLaunchSpecification (\s a -> s {_rsiLaunchSpecification = a})

-- | The Spot Instance request type. Default: @one-time@
rsiType :: Lens' RequestSpotInstances (Maybe SpotInstanceType)
rsiType = lens _rsiType (\s a -> s {_rsiType = a})

-- | The user-specified name for a logical grouping of requests. When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active. If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group. Default: Instances are launched in any available Availability Zone.
rsiAvailabilityZoneGroup :: Lens' RequestSpotInstances (Maybe Text)
rsiAvailabilityZoneGroup = lens _rsiAvailabilityZoneGroup (\s a -> s {_rsiAvailabilityZoneGroup = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> in the /Amazon EC2 User Guide for Linux Instances/ .
rsiClientToken :: Lens' RequestSpotInstances (Maybe Text)
rsiClientToken = lens _rsiClientToken (\s a -> s {_rsiClientToken = a})

-- | The maximum number of Spot Instances to launch. Default: 1
rsiInstanceCount :: Lens' RequestSpotInstances (Maybe Int)
rsiInstanceCount = lens _rsiInstanceCount (\s a -> s {_rsiInstanceCount = a})

instance AWSRequest RequestSpotInstances where
  type
    Rs RequestSpotInstances =
      RequestSpotInstancesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          RequestSpotInstancesResponse'
            <$> ( x .@? "spotInstanceRequestSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable RequestSpotInstances

instance NFData RequestSpotInstances

instance ToHeaders RequestSpotInstances where
  toHeaders = const mempty

instance ToPath RequestSpotInstances where
  toPath = const "/"

instance ToQuery RequestSpotInstances where
  toQuery RequestSpotInstances' {..} =
    mconcat
      [ "Action" =: ("RequestSpotInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _rsiTagSpecifications
          ),
        "DryRun" =: _rsiDryRun,
        "ValidFrom" =: _rsiValidFrom,
        "SpotPrice" =: _rsiSpotPrice,
        "BlockDurationMinutes" =: _rsiBlockDurationMinutes,
        "LaunchGroup" =: _rsiLaunchGroup,
        "InstanceInterruptionBehavior"
          =: _rsiInstanceInterruptionBehavior,
        "ValidUntil" =: _rsiValidUntil,
        "LaunchSpecification" =: _rsiLaunchSpecification,
        "Type" =: _rsiType,
        "AvailabilityZoneGroup" =: _rsiAvailabilityZoneGroup,
        "ClientToken" =: _rsiClientToken,
        "InstanceCount" =: _rsiInstanceCount
      ]

-- | Contains the output of RequestSpotInstances.
--
--
--
-- /See:/ 'requestSpotInstancesResponse' smart constructor.
data RequestSpotInstancesResponse = RequestSpotInstancesResponse'
  { _rsirrsSpotInstanceRequests ::
      !( Maybe
           [SpotInstanceRequest]
       ),
    _rsirrsResponseStatus ::
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

-- | Creates a value of 'RequestSpotInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsirrsSpotInstanceRequests' - One or more Spot Instance requests.
--
-- * 'rsirrsResponseStatus' - -- | The response status code.
requestSpotInstancesResponse ::
  -- | 'rsirrsResponseStatus'
  Int ->
  RequestSpotInstancesResponse
requestSpotInstancesResponse pResponseStatus_ =
  RequestSpotInstancesResponse'
    { _rsirrsSpotInstanceRequests =
        Nothing,
      _rsirrsResponseStatus = pResponseStatus_
    }

-- | One or more Spot Instance requests.
rsirrsSpotInstanceRequests :: Lens' RequestSpotInstancesResponse [SpotInstanceRequest]
rsirrsSpotInstanceRequests = lens _rsirrsSpotInstanceRequests (\s a -> s {_rsirrsSpotInstanceRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
rsirrsResponseStatus :: Lens' RequestSpotInstancesResponse Int
rsirrsResponseStatus = lens _rsirrsResponseStatus (\s a -> s {_rsirrsResponseStatus = a})

instance NFData RequestSpotInstancesResponse
