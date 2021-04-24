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
-- Module      : Network.AWS.EC2.ModifyVPCEndpointConnectionNotification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a connection notification for VPC endpoint or VPC endpoint service. You can change the SNS topic for the notification, or the events for which to be notified.
module Network.AWS.EC2.ModifyVPCEndpointConnectionNotification
  ( -- * Creating a Request
    modifyVPCEndpointConnectionNotification,
    ModifyVPCEndpointConnectionNotification,

    -- * Request Lenses
    mvecnConnectionEvents,
    mvecnDryRun,
    mvecnConnectionNotificationARN,
    mvecnConnectionNotificationId,

    -- * Destructuring the Response
    modifyVPCEndpointConnectionNotificationResponse,
    ModifyVPCEndpointConnectionNotificationResponse,

    -- * Response Lenses
    mvecnrrsReturnValue,
    mvecnrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyVPCEndpointConnectionNotification' smart constructor.
data ModifyVPCEndpointConnectionNotification = ModifyVPCEndpointConnectionNotification'
  { _mvecnConnectionEvents ::
      !( Maybe
           [Text]
       ),
    _mvecnDryRun ::
      !( Maybe
           Bool
       ),
    _mvecnConnectionNotificationARN ::
      !( Maybe
           Text
       ),
    _mvecnConnectionNotificationId ::
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

-- | Creates a value of 'ModifyVPCEndpointConnectionNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvecnConnectionEvents' - One or more events for the endpoint. Valid values are @Accept@ , @Connect@ , @Delete@ , and @Reject@ .
--
-- * 'mvecnDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mvecnConnectionNotificationARN' - The ARN for the SNS topic for the notification.
--
-- * 'mvecnConnectionNotificationId' - The ID of the notification.
modifyVPCEndpointConnectionNotification ::
  -- | 'mvecnConnectionNotificationId'
  Text ->
  ModifyVPCEndpointConnectionNotification
modifyVPCEndpointConnectionNotification
  pConnectionNotificationId_ =
    ModifyVPCEndpointConnectionNotification'
      { _mvecnConnectionEvents =
          Nothing,
        _mvecnDryRun = Nothing,
        _mvecnConnectionNotificationARN =
          Nothing,
        _mvecnConnectionNotificationId =
          pConnectionNotificationId_
      }

-- | One or more events for the endpoint. Valid values are @Accept@ , @Connect@ , @Delete@ , and @Reject@ .
mvecnConnectionEvents :: Lens' ModifyVPCEndpointConnectionNotification [Text]
mvecnConnectionEvents = lens _mvecnConnectionEvents (\s a -> s {_mvecnConnectionEvents = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mvecnDryRun :: Lens' ModifyVPCEndpointConnectionNotification (Maybe Bool)
mvecnDryRun = lens _mvecnDryRun (\s a -> s {_mvecnDryRun = a})

-- | The ARN for the SNS topic for the notification.
mvecnConnectionNotificationARN :: Lens' ModifyVPCEndpointConnectionNotification (Maybe Text)
mvecnConnectionNotificationARN = lens _mvecnConnectionNotificationARN (\s a -> s {_mvecnConnectionNotificationARN = a})

-- | The ID of the notification.
mvecnConnectionNotificationId :: Lens' ModifyVPCEndpointConnectionNotification Text
mvecnConnectionNotificationId = lens _mvecnConnectionNotificationId (\s a -> s {_mvecnConnectionNotificationId = a})

instance
  AWSRequest
    ModifyVPCEndpointConnectionNotification
  where
  type
    Rs ModifyVPCEndpointConnectionNotification =
      ModifyVPCEndpointConnectionNotificationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyVPCEndpointConnectionNotificationResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance
  Hashable
    ModifyVPCEndpointConnectionNotification

instance
  NFData
    ModifyVPCEndpointConnectionNotification

instance
  ToHeaders
    ModifyVPCEndpointConnectionNotification
  where
  toHeaders = const mempty

instance
  ToPath
    ModifyVPCEndpointConnectionNotification
  where
  toPath = const "/"

instance
  ToQuery
    ModifyVPCEndpointConnectionNotification
  where
  toQuery ModifyVPCEndpointConnectionNotification' {..} =
    mconcat
      [ "Action"
          =: ( "ModifyVpcEndpointConnectionNotification" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "ConnectionEvents"
              <$> _mvecnConnectionEvents
          ),
        "DryRun" =: _mvecnDryRun,
        "ConnectionNotificationArn"
          =: _mvecnConnectionNotificationARN,
        "ConnectionNotificationId"
          =: _mvecnConnectionNotificationId
      ]

-- | /See:/ 'modifyVPCEndpointConnectionNotificationResponse' smart constructor.
data ModifyVPCEndpointConnectionNotificationResponse = ModifyVPCEndpointConnectionNotificationResponse'
  { _mvecnrrsReturnValue ::
      !( Maybe
           Bool
       ),
    _mvecnrrsResponseStatus ::
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

-- | Creates a value of 'ModifyVPCEndpointConnectionNotificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvecnrrsReturnValue' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'mvecnrrsResponseStatus' - -- | The response status code.
modifyVPCEndpointConnectionNotificationResponse ::
  -- | 'mvecnrrsResponseStatus'
  Int ->
  ModifyVPCEndpointConnectionNotificationResponse
modifyVPCEndpointConnectionNotificationResponse
  pResponseStatus_ =
    ModifyVPCEndpointConnectionNotificationResponse'
      { _mvecnrrsReturnValue =
          Nothing,
        _mvecnrrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
mvecnrrsReturnValue :: Lens' ModifyVPCEndpointConnectionNotificationResponse (Maybe Bool)
mvecnrrsReturnValue = lens _mvecnrrsReturnValue (\s a -> s {_mvecnrrsReturnValue = a})

-- | -- | The response status code.
mvecnrrsResponseStatus :: Lens' ModifyVPCEndpointConnectionNotificationResponse Int
mvecnrrsResponseStatus = lens _mvecnrrsResponseStatus (\s a -> s {_mvecnrrsResponseStatus = a})

instance
  NFData
    ModifyVPCEndpointConnectionNotificationResponse
