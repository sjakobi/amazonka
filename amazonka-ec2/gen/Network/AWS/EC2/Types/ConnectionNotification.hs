{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ConnectionNotification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ConnectionNotification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ConnectionNotificationState
import Network.AWS.EC2.Types.ConnectionNotificationType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a connection notification for a VPC endpoint or VPC endpoint service.
--
--
--
-- /See:/ 'connectionNotification' smart constructor.
data ConnectionNotification = ConnectionNotification'
  { _cnConnectionEvents ::
      !(Maybe [Text]),
    _cnConnectionNotificationId ::
      !(Maybe Text),
    _cnConnectionNotificationType ::
      !( Maybe
           ConnectionNotificationType
       ),
    _cnVPCEndpointId ::
      !(Maybe Text),
    _cnServiceId ::
      !(Maybe Text),
    _cnConnectionNotificationState ::
      !( Maybe
           ConnectionNotificationState
       ),
    _cnConnectionNotificationARN ::
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

-- | Creates a value of 'ConnectionNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnConnectionEvents' - The events for the notification. Valid values are @Accept@ , @Connect@ , @Delete@ , and @Reject@ .
--
-- * 'cnConnectionNotificationId' - The ID of the notification.
--
-- * 'cnConnectionNotificationType' - The type of notification.
--
-- * 'cnVPCEndpointId' - The ID of the VPC endpoint.
--
-- * 'cnServiceId' - The ID of the endpoint service.
--
-- * 'cnConnectionNotificationState' - The state of the notification.
--
-- * 'cnConnectionNotificationARN' - The ARN of the SNS topic for the notification.
connectionNotification ::
  ConnectionNotification
connectionNotification =
  ConnectionNotification'
    { _cnConnectionEvents =
        Nothing,
      _cnConnectionNotificationId = Nothing,
      _cnConnectionNotificationType = Nothing,
      _cnVPCEndpointId = Nothing,
      _cnServiceId = Nothing,
      _cnConnectionNotificationState = Nothing,
      _cnConnectionNotificationARN = Nothing
    }

-- | The events for the notification. Valid values are @Accept@ , @Connect@ , @Delete@ , and @Reject@ .
cnConnectionEvents :: Lens' ConnectionNotification [Text]
cnConnectionEvents = lens _cnConnectionEvents (\s a -> s {_cnConnectionEvents = a}) . _Default . _Coerce

-- | The ID of the notification.
cnConnectionNotificationId :: Lens' ConnectionNotification (Maybe Text)
cnConnectionNotificationId = lens _cnConnectionNotificationId (\s a -> s {_cnConnectionNotificationId = a})

-- | The type of notification.
cnConnectionNotificationType :: Lens' ConnectionNotification (Maybe ConnectionNotificationType)
cnConnectionNotificationType = lens _cnConnectionNotificationType (\s a -> s {_cnConnectionNotificationType = a})

-- | The ID of the VPC endpoint.
cnVPCEndpointId :: Lens' ConnectionNotification (Maybe Text)
cnVPCEndpointId = lens _cnVPCEndpointId (\s a -> s {_cnVPCEndpointId = a})

-- | The ID of the endpoint service.
cnServiceId :: Lens' ConnectionNotification (Maybe Text)
cnServiceId = lens _cnServiceId (\s a -> s {_cnServiceId = a})

-- | The state of the notification.
cnConnectionNotificationState :: Lens' ConnectionNotification (Maybe ConnectionNotificationState)
cnConnectionNotificationState = lens _cnConnectionNotificationState (\s a -> s {_cnConnectionNotificationState = a})

-- | The ARN of the SNS topic for the notification.
cnConnectionNotificationARN :: Lens' ConnectionNotification (Maybe Text)
cnConnectionNotificationARN = lens _cnConnectionNotificationARN (\s a -> s {_cnConnectionNotificationARN = a})

instance FromXML ConnectionNotification where
  parseXML x =
    ConnectionNotification'
      <$> ( x .@? "connectionEvents" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "connectionNotificationId")
      <*> (x .@? "connectionNotificationType")
      <*> (x .@? "vpcEndpointId")
      <*> (x .@? "serviceId")
      <*> (x .@? "connectionNotificationState")
      <*> (x .@? "connectionNotificationArn")

instance Hashable ConnectionNotification

instance NFData ConnectionNotification
