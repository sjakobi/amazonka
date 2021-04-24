{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotFleetRequestConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotFleetRequestConfig where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ActivityStatus
import Network.AWS.EC2.Types.BatchState
import Network.AWS.EC2.Types.SpotFleetRequestConfigData
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a Spot Fleet request.
--
--
--
-- /See:/ 'spotFleetRequestConfig' smart constructor.
data SpotFleetRequestConfig = SpotFleetRequestConfig'
  { _sfrcSpotFleetRequestState ::
      !(Maybe BatchState),
    _sfrcActivityStatus ::
      !(Maybe ActivityStatus),
    _sfrcTags ::
      !(Maybe [Tag]),
    _sfrcCreateTime ::
      !(Maybe ISO8601),
    _sfrcSpotFleetRequestConfig ::
      !( Maybe
           SpotFleetRequestConfigData
       ),
    _sfrcSpotFleetRequestId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SpotFleetRequestConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfrcSpotFleetRequestState' - The state of the Spot Fleet request.
--
-- * 'sfrcActivityStatus' - The progress of the Spot Fleet request. If there is an error, the status is @error@ . After all requests are placed, the status is @pending_fulfillment@ . If the size of the fleet is equal to or greater than its target capacity, the status is @fulfilled@ . If the size of the fleet is decreased, the status is @pending_termination@ while Spot Instances are terminating.
--
-- * 'sfrcTags' - The tags for a Spot Fleet resource.
--
-- * 'sfrcCreateTime' - The creation date and time of the request.
--
-- * 'sfrcSpotFleetRequestConfig' - The configuration of the Spot Fleet request.
--
-- * 'sfrcSpotFleetRequestId' - The ID of the Spot Fleet request.
spotFleetRequestConfig ::
  SpotFleetRequestConfig
spotFleetRequestConfig =
  SpotFleetRequestConfig'
    { _sfrcSpotFleetRequestState =
        Nothing,
      _sfrcActivityStatus = Nothing,
      _sfrcTags = Nothing,
      _sfrcCreateTime = Nothing,
      _sfrcSpotFleetRequestConfig = Nothing,
      _sfrcSpotFleetRequestId = Nothing
    }

-- | The state of the Spot Fleet request.
sfrcSpotFleetRequestState :: Lens' SpotFleetRequestConfig (Maybe BatchState)
sfrcSpotFleetRequestState = lens _sfrcSpotFleetRequestState (\s a -> s {_sfrcSpotFleetRequestState = a})

-- | The progress of the Spot Fleet request. If there is an error, the status is @error@ . After all requests are placed, the status is @pending_fulfillment@ . If the size of the fleet is equal to or greater than its target capacity, the status is @fulfilled@ . If the size of the fleet is decreased, the status is @pending_termination@ while Spot Instances are terminating.
sfrcActivityStatus :: Lens' SpotFleetRequestConfig (Maybe ActivityStatus)
sfrcActivityStatus = lens _sfrcActivityStatus (\s a -> s {_sfrcActivityStatus = a})

-- | The tags for a Spot Fleet resource.
sfrcTags :: Lens' SpotFleetRequestConfig [Tag]
sfrcTags = lens _sfrcTags (\s a -> s {_sfrcTags = a}) . _Default . _Coerce

-- | The creation date and time of the request.
sfrcCreateTime :: Lens' SpotFleetRequestConfig (Maybe UTCTime)
sfrcCreateTime = lens _sfrcCreateTime (\s a -> s {_sfrcCreateTime = a}) . mapping _Time

-- | The configuration of the Spot Fleet request.
sfrcSpotFleetRequestConfig :: Lens' SpotFleetRequestConfig (Maybe SpotFleetRequestConfigData)
sfrcSpotFleetRequestConfig = lens _sfrcSpotFleetRequestConfig (\s a -> s {_sfrcSpotFleetRequestConfig = a})

-- | The ID of the Spot Fleet request.
sfrcSpotFleetRequestId :: Lens' SpotFleetRequestConfig (Maybe Text)
sfrcSpotFleetRequestId = lens _sfrcSpotFleetRequestId (\s a -> s {_sfrcSpotFleetRequestId = a})

instance FromXML SpotFleetRequestConfig where
  parseXML x =
    SpotFleetRequestConfig'
      <$> (x .@? "spotFleetRequestState")
      <*> (x .@? "activityStatus")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "createTime")
      <*> (x .@? "spotFleetRequestConfig")
      <*> (x .@? "spotFleetRequestId")

instance Hashable SpotFleetRequestConfig

instance NFData SpotFleetRequestConfig
