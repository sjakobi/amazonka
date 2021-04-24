{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotInstanceRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotInstanceRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceInterruptionBehavior
import Network.AWS.EC2.Types.LaunchSpecification
import Network.AWS.EC2.Types.RIProductDescription
import Network.AWS.EC2.Types.SpotInstanceState
import Network.AWS.EC2.Types.SpotInstanceStateFault
import Network.AWS.EC2.Types.SpotInstanceStatus
import Network.AWS.EC2.Types.SpotInstanceType
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a Spot Instance request.
--
--
--
-- /See:/ 'spotInstanceRequest' smart constructor.
data SpotInstanceRequest = SpotInstanceRequest'
  { _sirActualBlockHourlyPrice ::
      !(Maybe Text),
    _sirStatus ::
      !(Maybe SpotInstanceStatus),
    _sirInstanceId :: !(Maybe Text),
    _sirLaunchedAvailabilityZone ::
      !(Maybe Text),
    _sirValidFrom ::
      !(Maybe ISO8601),
    _sirSpotPrice :: !(Maybe Text),
    _sirFault ::
      !(Maybe SpotInstanceStateFault),
    _sirBlockDurationMinutes ::
      !(Maybe Int),
    _sirLaunchGroup ::
      !(Maybe Text),
    _sirInstanceInterruptionBehavior ::
      !( Maybe
           InstanceInterruptionBehavior
       ),
    _sirState ::
      !(Maybe SpotInstanceState),
    _sirValidUntil ::
      !(Maybe ISO8601),
    _sirTags :: !(Maybe [Tag]),
    _sirCreateTime ::
      !(Maybe ISO8601),
    _sirLaunchSpecification ::
      !(Maybe LaunchSpecification),
    _sirType ::
      !(Maybe SpotInstanceType),
    _sirAvailabilityZoneGroup ::
      !(Maybe Text),
    _sirProductDescription ::
      !(Maybe RIProductDescription),
    _sirSpotInstanceRequestId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpotInstanceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirActualBlockHourlyPrice' - If you specified a duration and your Spot Instance request was fulfilled, this is the fixed hourly price in effect for the Spot Instance while it runs.
--
-- * 'sirStatus' - The status code and status message describing the Spot Instance request.
--
-- * 'sirInstanceId' - The instance ID, if an instance has been launched to fulfill the Spot Instance request.
--
-- * 'sirLaunchedAvailabilityZone' - The Availability Zone in which the request is launched.
--
-- * 'sirValidFrom' - The start date of the request, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). The request becomes active at this date and time.
--
-- * 'sirSpotPrice' - The maximum price per hour that you are willing to pay for a Spot Instance.
--
-- * 'sirFault' - The fault codes for the Spot Instance request, if any.
--
-- * 'sirBlockDurationMinutes' - The duration for the Spot Instance, in minutes.
--
-- * 'sirLaunchGroup' - The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
--
-- * 'sirInstanceInterruptionBehavior' - The behavior when a Spot Instance is interrupted.
--
-- * 'sirState' - The state of the Spot Instance request. Spot status information helps track your Spot Instance requests. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html Spot status> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- * 'sirValidUntil' - The end date of the request, in UTC format (/YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).     * For a persistent request, the request remains active until the @validUntil@ date and time is reached. Otherwise, the request remains active until you cancel it.      * For a one-time request, the request remains active until all instances launch, the request is canceled, or the @validUntil@ date and time is reached. By default, the request is valid for 7 days from the date the request was created.
--
-- * 'sirTags' - Any tags assigned to the resource.
--
-- * 'sirCreateTime' - The date and time when the Spot Instance request was created, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
-- * 'sirLaunchSpecification' - Additional information for launching instances.
--
-- * 'sirType' - The Spot Instance request type.
--
-- * 'sirAvailabilityZoneGroup' - The Availability Zone group. If you specify the same Availability Zone group for all Spot Instance requests, all Spot Instances are launched in the same Availability Zone.
--
-- * 'sirProductDescription' - The product description associated with the Spot Instance.
--
-- * 'sirSpotInstanceRequestId' - The ID of the Spot Instance request.
spotInstanceRequest ::
  SpotInstanceRequest
spotInstanceRequest =
  SpotInstanceRequest'
    { _sirActualBlockHourlyPrice =
        Nothing,
      _sirStatus = Nothing,
      _sirInstanceId = Nothing,
      _sirLaunchedAvailabilityZone = Nothing,
      _sirValidFrom = Nothing,
      _sirSpotPrice = Nothing,
      _sirFault = Nothing,
      _sirBlockDurationMinutes = Nothing,
      _sirLaunchGroup = Nothing,
      _sirInstanceInterruptionBehavior = Nothing,
      _sirState = Nothing,
      _sirValidUntil = Nothing,
      _sirTags = Nothing,
      _sirCreateTime = Nothing,
      _sirLaunchSpecification = Nothing,
      _sirType = Nothing,
      _sirAvailabilityZoneGroup = Nothing,
      _sirProductDescription = Nothing,
      _sirSpotInstanceRequestId = Nothing
    }

-- | If you specified a duration and your Spot Instance request was fulfilled, this is the fixed hourly price in effect for the Spot Instance while it runs.
sirActualBlockHourlyPrice :: Lens' SpotInstanceRequest (Maybe Text)
sirActualBlockHourlyPrice = lens _sirActualBlockHourlyPrice (\s a -> s {_sirActualBlockHourlyPrice = a})

-- | The status code and status message describing the Spot Instance request.
sirStatus :: Lens' SpotInstanceRequest (Maybe SpotInstanceStatus)
sirStatus = lens _sirStatus (\s a -> s {_sirStatus = a})

-- | The instance ID, if an instance has been launched to fulfill the Spot Instance request.
sirInstanceId :: Lens' SpotInstanceRequest (Maybe Text)
sirInstanceId = lens _sirInstanceId (\s a -> s {_sirInstanceId = a})

-- | The Availability Zone in which the request is launched.
sirLaunchedAvailabilityZone :: Lens' SpotInstanceRequest (Maybe Text)
sirLaunchedAvailabilityZone = lens _sirLaunchedAvailabilityZone (\s a -> s {_sirLaunchedAvailabilityZone = a})

-- | The start date of the request, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). The request becomes active at this date and time.
sirValidFrom :: Lens' SpotInstanceRequest (Maybe UTCTime)
sirValidFrom = lens _sirValidFrom (\s a -> s {_sirValidFrom = a}) . mapping _Time

-- | The maximum price per hour that you are willing to pay for a Spot Instance.
sirSpotPrice :: Lens' SpotInstanceRequest (Maybe Text)
sirSpotPrice = lens _sirSpotPrice (\s a -> s {_sirSpotPrice = a})

-- | The fault codes for the Spot Instance request, if any.
sirFault :: Lens' SpotInstanceRequest (Maybe SpotInstanceStateFault)
sirFault = lens _sirFault (\s a -> s {_sirFault = a})

-- | The duration for the Spot Instance, in minutes.
sirBlockDurationMinutes :: Lens' SpotInstanceRequest (Maybe Int)
sirBlockDurationMinutes = lens _sirBlockDurationMinutes (\s a -> s {_sirBlockDurationMinutes = a})

-- | The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
sirLaunchGroup :: Lens' SpotInstanceRequest (Maybe Text)
sirLaunchGroup = lens _sirLaunchGroup (\s a -> s {_sirLaunchGroup = a})

-- | The behavior when a Spot Instance is interrupted.
sirInstanceInterruptionBehavior :: Lens' SpotInstanceRequest (Maybe InstanceInterruptionBehavior)
sirInstanceInterruptionBehavior = lens _sirInstanceInterruptionBehavior (\s a -> s {_sirInstanceInterruptionBehavior = a})

-- | The state of the Spot Instance request. Spot status information helps track your Spot Instance requests. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html Spot status> in the /Amazon EC2 User Guide for Linux Instances/ .
sirState :: Lens' SpotInstanceRequest (Maybe SpotInstanceState)
sirState = lens _sirState (\s a -> s {_sirState = a})

-- | The end date of the request, in UTC format (/YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).     * For a persistent request, the request remains active until the @validUntil@ date and time is reached. Otherwise, the request remains active until you cancel it.      * For a one-time request, the request remains active until all instances launch, the request is canceled, or the @validUntil@ date and time is reached. By default, the request is valid for 7 days from the date the request was created.
sirValidUntil :: Lens' SpotInstanceRequest (Maybe UTCTime)
sirValidUntil = lens _sirValidUntil (\s a -> s {_sirValidUntil = a}) . mapping _Time

-- | Any tags assigned to the resource.
sirTags :: Lens' SpotInstanceRequest [Tag]
sirTags = lens _sirTags (\s a -> s {_sirTags = a}) . _Default . _Coerce

-- | The date and time when the Spot Instance request was created, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
sirCreateTime :: Lens' SpotInstanceRequest (Maybe UTCTime)
sirCreateTime = lens _sirCreateTime (\s a -> s {_sirCreateTime = a}) . mapping _Time

-- | Additional information for launching instances.
sirLaunchSpecification :: Lens' SpotInstanceRequest (Maybe LaunchSpecification)
sirLaunchSpecification = lens _sirLaunchSpecification (\s a -> s {_sirLaunchSpecification = a})

-- | The Spot Instance request type.
sirType :: Lens' SpotInstanceRequest (Maybe SpotInstanceType)
sirType = lens _sirType (\s a -> s {_sirType = a})

-- | The Availability Zone group. If you specify the same Availability Zone group for all Spot Instance requests, all Spot Instances are launched in the same Availability Zone.
sirAvailabilityZoneGroup :: Lens' SpotInstanceRequest (Maybe Text)
sirAvailabilityZoneGroup = lens _sirAvailabilityZoneGroup (\s a -> s {_sirAvailabilityZoneGroup = a})

-- | The product description associated with the Spot Instance.
sirProductDescription :: Lens' SpotInstanceRequest (Maybe RIProductDescription)
sirProductDescription = lens _sirProductDescription (\s a -> s {_sirProductDescription = a})

-- | The ID of the Spot Instance request.
sirSpotInstanceRequestId :: Lens' SpotInstanceRequest (Maybe Text)
sirSpotInstanceRequestId = lens _sirSpotInstanceRequestId (\s a -> s {_sirSpotInstanceRequestId = a})

instance FromXML SpotInstanceRequest where
  parseXML x =
    SpotInstanceRequest'
      <$> (x .@? "actualBlockHourlyPrice")
      <*> (x .@? "status")
      <*> (x .@? "instanceId")
      <*> (x .@? "launchedAvailabilityZone")
      <*> (x .@? "validFrom")
      <*> (x .@? "spotPrice")
      <*> (x .@? "fault")
      <*> (x .@? "blockDurationMinutes")
      <*> (x .@? "launchGroup")
      <*> (x .@? "instanceInterruptionBehavior")
      <*> (x .@? "state")
      <*> (x .@? "validUntil")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "createTime")
      <*> (x .@? "launchSpecification")
      <*> (x .@? "type")
      <*> (x .@? "availabilityZoneGroup")
      <*> (x .@? "productDescription")
      <*> (x .@? "spotInstanceRequestId")

instance Hashable SpotInstanceRequest

instance NFData SpotInstanceRequest
