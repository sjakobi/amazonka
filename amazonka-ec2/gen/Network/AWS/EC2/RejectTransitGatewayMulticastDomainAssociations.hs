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
-- Module      : Network.AWS.EC2.RejectTransitGatewayMulticastDomainAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rejects a request to associate cross-account subnets with a transit gateway multicast domain.
module Network.AWS.EC2.RejectTransitGatewayMulticastDomainAssociations
  ( -- * Creating a Request
    rejectTransitGatewayMulticastDomainAssociations,
    RejectTransitGatewayMulticastDomainAssociations,

    -- * Request Lenses
    rtgmdaDryRun,
    rtgmdaTransitGatewayMulticastDomainId,
    rtgmdaSubnetIds,
    rtgmdaTransitGatewayAttachmentId,

    -- * Destructuring the Response
    rejectTransitGatewayMulticastDomainAssociationsResponse,
    RejectTransitGatewayMulticastDomainAssociationsResponse,

    -- * Response Lenses
    rtgmdarrsAssociations,
    rtgmdarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rejectTransitGatewayMulticastDomainAssociations' smart constructor.
data RejectTransitGatewayMulticastDomainAssociations = RejectTransitGatewayMulticastDomainAssociations'
  { _rtgmdaDryRun ::
      !( Maybe
           Bool
       ),
    _rtgmdaTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _rtgmdaSubnetIds ::
      !( Maybe
           [Text]
       ),
    _rtgmdaTransitGatewayAttachmentId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RejectTransitGatewayMulticastDomainAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtgmdaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'rtgmdaTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'rtgmdaSubnetIds' - The IDs of the subnets to associate with the transit gateway multicast domain.
--
-- * 'rtgmdaTransitGatewayAttachmentId' - The ID of the transit gateway attachment.
rejectTransitGatewayMulticastDomainAssociations ::
  RejectTransitGatewayMulticastDomainAssociations
rejectTransitGatewayMulticastDomainAssociations =
  RejectTransitGatewayMulticastDomainAssociations'
    { _rtgmdaDryRun =
        Nothing,
      _rtgmdaTransitGatewayMulticastDomainId =
        Nothing,
      _rtgmdaSubnetIds = Nothing,
      _rtgmdaTransitGatewayAttachmentId =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
rtgmdaDryRun :: Lens' RejectTransitGatewayMulticastDomainAssociations (Maybe Bool)
rtgmdaDryRun = lens _rtgmdaDryRun (\s a -> s {_rtgmdaDryRun = a})

-- | The ID of the transit gateway multicast domain.
rtgmdaTransitGatewayMulticastDomainId :: Lens' RejectTransitGatewayMulticastDomainAssociations (Maybe Text)
rtgmdaTransitGatewayMulticastDomainId = lens _rtgmdaTransitGatewayMulticastDomainId (\s a -> s {_rtgmdaTransitGatewayMulticastDomainId = a})

-- | The IDs of the subnets to associate with the transit gateway multicast domain.
rtgmdaSubnetIds :: Lens' RejectTransitGatewayMulticastDomainAssociations [Text]
rtgmdaSubnetIds = lens _rtgmdaSubnetIds (\s a -> s {_rtgmdaSubnetIds = a}) . _Default . _Coerce

-- | The ID of the transit gateway attachment.
rtgmdaTransitGatewayAttachmentId :: Lens' RejectTransitGatewayMulticastDomainAssociations (Maybe Text)
rtgmdaTransitGatewayAttachmentId = lens _rtgmdaTransitGatewayAttachmentId (\s a -> s {_rtgmdaTransitGatewayAttachmentId = a})

instance
  AWSRequest
    RejectTransitGatewayMulticastDomainAssociations
  where
  type
    Rs
      RejectTransitGatewayMulticastDomainAssociations =
      RejectTransitGatewayMulticastDomainAssociationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          RejectTransitGatewayMulticastDomainAssociationsResponse'
            <$> (x .@? "associations") <*> (pure (fromEnum s))
      )

instance
  Hashable
    RejectTransitGatewayMulticastDomainAssociations

instance
  NFData
    RejectTransitGatewayMulticastDomainAssociations

instance
  ToHeaders
    RejectTransitGatewayMulticastDomainAssociations
  where
  toHeaders = const mempty

instance
  ToPath
    RejectTransitGatewayMulticastDomainAssociations
  where
  toPath = const "/"

instance
  ToQuery
    RejectTransitGatewayMulticastDomainAssociations
  where
  toQuery
    RejectTransitGatewayMulticastDomainAssociations' {..} =
      mconcat
        [ "Action"
            =: ( "RejectTransitGatewayMulticastDomainAssociations" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _rtgmdaDryRun,
          "TransitGatewayMulticastDomainId"
            =: _rtgmdaTransitGatewayMulticastDomainId,
          toQuery
            (toQueryList "SubnetIds" <$> _rtgmdaSubnetIds),
          "TransitGatewayAttachmentId"
            =: _rtgmdaTransitGatewayAttachmentId
        ]

-- | /See:/ 'rejectTransitGatewayMulticastDomainAssociationsResponse' smart constructor.
data RejectTransitGatewayMulticastDomainAssociationsResponse = RejectTransitGatewayMulticastDomainAssociationsResponse'
  { _rtgmdarrsAssociations ::
      !( Maybe
           TransitGatewayMulticastDomainAssociations
       ),
    _rtgmdarrsResponseStatus ::
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

-- | Creates a value of 'RejectTransitGatewayMulticastDomainAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtgmdarrsAssociations' - Undocumented member.
--
-- * 'rtgmdarrsResponseStatus' - -- | The response status code.
rejectTransitGatewayMulticastDomainAssociationsResponse ::
  -- | 'rtgmdarrsResponseStatus'
  Int ->
  RejectTransitGatewayMulticastDomainAssociationsResponse
rejectTransitGatewayMulticastDomainAssociationsResponse
  pResponseStatus_ =
    RejectTransitGatewayMulticastDomainAssociationsResponse'
      { _rtgmdarrsAssociations =
          Nothing,
        _rtgmdarrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
rtgmdarrsAssociations :: Lens' RejectTransitGatewayMulticastDomainAssociationsResponse (Maybe TransitGatewayMulticastDomainAssociations)
rtgmdarrsAssociations = lens _rtgmdarrsAssociations (\s a -> s {_rtgmdarrsAssociations = a})

-- | -- | The response status code.
rtgmdarrsResponseStatus :: Lens' RejectTransitGatewayMulticastDomainAssociationsResponse Int
rtgmdarrsResponseStatus = lens _rtgmdarrsResponseStatus (\s a -> s {_rtgmdarrsResponseStatus = a})

instance
  NFData
    RejectTransitGatewayMulticastDomainAssociationsResponse
