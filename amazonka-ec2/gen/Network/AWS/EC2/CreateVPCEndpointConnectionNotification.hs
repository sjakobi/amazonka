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
-- Module      : Network.AWS.EC2.CreateVPCEndpointConnectionNotification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a connection notification for a specified VPC endpoint or VPC endpoint service. A connection notification notifies you of specific endpoint events. You must create an SNS topic to receive notifications. For more information, see <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Create a Topic> in the /Amazon Simple Notification Service Developer Guide/ .
--
--
-- You can create a connection notification for interface endpoints only.
module Network.AWS.EC2.CreateVPCEndpointConnectionNotification
  ( -- * Creating a Request
    createVPCEndpointConnectionNotification,
    CreateVPCEndpointConnectionNotification,

    -- * Request Lenses
    cvecnDryRun,
    cvecnVPCEndpointId,
    cvecnServiceId,
    cvecnClientToken,
    cvecnConnectionNotificationARN,
    cvecnConnectionEvents,

    -- * Destructuring the Response
    createVPCEndpointConnectionNotificationResponse,
    CreateVPCEndpointConnectionNotificationResponse,

    -- * Response Lenses
    cvecnrrsConnectionNotification,
    cvecnrrsClientToken,
    cvecnrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createVPCEndpointConnectionNotification' smart constructor.
data CreateVPCEndpointConnectionNotification = CreateVPCEndpointConnectionNotification'
  { _cvecnDryRun ::
      !( Maybe
           Bool
       ),
    _cvecnVPCEndpointId ::
      !( Maybe
           Text
       ),
    _cvecnServiceId ::
      !( Maybe
           Text
       ),
    _cvecnClientToken ::
      !( Maybe
           Text
       ),
    _cvecnConnectionNotificationARN ::
      !Text,
    _cvecnConnectionEvents ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateVPCEndpointConnectionNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvecnDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cvecnVPCEndpointId' - The ID of the endpoint.
--
-- * 'cvecnServiceId' - The ID of the endpoint service.
--
-- * 'cvecnClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'cvecnConnectionNotificationARN' - The ARN of the SNS topic for the notifications.
--
-- * 'cvecnConnectionEvents' - One or more endpoint events for which to receive notifications. Valid values are @Accept@ , @Connect@ , @Delete@ , and @Reject@ .
createVPCEndpointConnectionNotification ::
  -- | 'cvecnConnectionNotificationARN'
  Text ->
  CreateVPCEndpointConnectionNotification
createVPCEndpointConnectionNotification
  pConnectionNotificationARN_ =
    CreateVPCEndpointConnectionNotification'
      { _cvecnDryRun =
          Nothing,
        _cvecnVPCEndpointId = Nothing,
        _cvecnServiceId = Nothing,
        _cvecnClientToken = Nothing,
        _cvecnConnectionNotificationARN =
          pConnectionNotificationARN_,
        _cvecnConnectionEvents = mempty
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cvecnDryRun :: Lens' CreateVPCEndpointConnectionNotification (Maybe Bool)
cvecnDryRun = lens _cvecnDryRun (\s a -> s {_cvecnDryRun = a})

-- | The ID of the endpoint.
cvecnVPCEndpointId :: Lens' CreateVPCEndpointConnectionNotification (Maybe Text)
cvecnVPCEndpointId = lens _cvecnVPCEndpointId (\s a -> s {_cvecnVPCEndpointId = a})

-- | The ID of the endpoint service.
cvecnServiceId :: Lens' CreateVPCEndpointConnectionNotification (Maybe Text)
cvecnServiceId = lens _cvecnServiceId (\s a -> s {_cvecnServiceId = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
cvecnClientToken :: Lens' CreateVPCEndpointConnectionNotification (Maybe Text)
cvecnClientToken = lens _cvecnClientToken (\s a -> s {_cvecnClientToken = a})

-- | The ARN of the SNS topic for the notifications.
cvecnConnectionNotificationARN :: Lens' CreateVPCEndpointConnectionNotification Text
cvecnConnectionNotificationARN = lens _cvecnConnectionNotificationARN (\s a -> s {_cvecnConnectionNotificationARN = a})

-- | One or more endpoint events for which to receive notifications. Valid values are @Accept@ , @Connect@ , @Delete@ , and @Reject@ .
cvecnConnectionEvents :: Lens' CreateVPCEndpointConnectionNotification [Text]
cvecnConnectionEvents = lens _cvecnConnectionEvents (\s a -> s {_cvecnConnectionEvents = a}) . _Coerce

instance
  AWSRequest
    CreateVPCEndpointConnectionNotification
  where
  type
    Rs CreateVPCEndpointConnectionNotification =
      CreateVPCEndpointConnectionNotificationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateVPCEndpointConnectionNotificationResponse'
            <$> (x .@? "connectionNotification")
            <*> (x .@? "clientToken")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    CreateVPCEndpointConnectionNotification

instance
  NFData
    CreateVPCEndpointConnectionNotification

instance
  ToHeaders
    CreateVPCEndpointConnectionNotification
  where
  toHeaders = const mempty

instance
  ToPath
    CreateVPCEndpointConnectionNotification
  where
  toPath = const "/"

instance
  ToQuery
    CreateVPCEndpointConnectionNotification
  where
  toQuery CreateVPCEndpointConnectionNotification' {..} =
    mconcat
      [ "Action"
          =: ( "CreateVpcEndpointConnectionNotification" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _cvecnDryRun,
        "VpcEndpointId" =: _cvecnVPCEndpointId,
        "ServiceId" =: _cvecnServiceId,
        "ClientToken" =: _cvecnClientToken,
        "ConnectionNotificationArn"
          =: _cvecnConnectionNotificationARN,
        toQueryList
          "ConnectionEvents"
          _cvecnConnectionEvents
      ]

-- | /See:/ 'createVPCEndpointConnectionNotificationResponse' smart constructor.
data CreateVPCEndpointConnectionNotificationResponse = CreateVPCEndpointConnectionNotificationResponse'
  { _cvecnrrsConnectionNotification ::
      !( Maybe
           ConnectionNotification
       ),
    _cvecnrrsClientToken ::
      !( Maybe
           Text
       ),
    _cvecnrrsResponseStatus ::
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

-- | Creates a value of 'CreateVPCEndpointConnectionNotificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvecnrrsConnectionNotification' - Information about the notification.
--
-- * 'cvecnrrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'cvecnrrsResponseStatus' - -- | The response status code.
createVPCEndpointConnectionNotificationResponse ::
  -- | 'cvecnrrsResponseStatus'
  Int ->
  CreateVPCEndpointConnectionNotificationResponse
createVPCEndpointConnectionNotificationResponse
  pResponseStatus_ =
    CreateVPCEndpointConnectionNotificationResponse'
      { _cvecnrrsConnectionNotification =
          Nothing,
        _cvecnrrsClientToken =
          Nothing,
        _cvecnrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the notification.
cvecnrrsConnectionNotification :: Lens' CreateVPCEndpointConnectionNotificationResponse (Maybe ConnectionNotification)
cvecnrrsConnectionNotification = lens _cvecnrrsConnectionNotification (\s a -> s {_cvecnrrsConnectionNotification = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
cvecnrrsClientToken :: Lens' CreateVPCEndpointConnectionNotificationResponse (Maybe Text)
cvecnrrsClientToken = lens _cvecnrrsClientToken (\s a -> s {_cvecnrrsClientToken = a})

-- | -- | The response status code.
cvecnrrsResponseStatus :: Lens' CreateVPCEndpointConnectionNotificationResponse Int
cvecnrrsResponseStatus = lens _cvecnrrsResponseStatus (\s a -> s {_cvecnrrsResponseStatus = a})

instance
  NFData
    CreateVPCEndpointConnectionNotificationResponse
