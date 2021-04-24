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
-- Module      : Network.AWS.EC2.AcceptTransitGatewayMulticastDomainAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts a request to associate subnets with a transit gateway multicast domain.
module Network.AWS.EC2.AcceptTransitGatewayMulticastDomainAssociations
  ( -- * Creating a Request
    acceptTransitGatewayMulticastDomainAssociations,
    AcceptTransitGatewayMulticastDomainAssociations,

    -- * Request Lenses
    atgmdaDryRun,
    atgmdaTransitGatewayMulticastDomainId,
    atgmdaSubnetIds,
    atgmdaTransitGatewayAttachmentId,

    -- * Destructuring the Response
    acceptTransitGatewayMulticastDomainAssociationsResponse,
    AcceptTransitGatewayMulticastDomainAssociationsResponse,

    -- * Response Lenses
    atgmdarrsAssociations,
    atgmdarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'acceptTransitGatewayMulticastDomainAssociations' smart constructor.
data AcceptTransitGatewayMulticastDomainAssociations = AcceptTransitGatewayMulticastDomainAssociations'
  { _atgmdaDryRun ::
      !( Maybe
           Bool
       ),
    _atgmdaTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _atgmdaSubnetIds ::
      !( Maybe
           [Text]
       ),
    _atgmdaTransitGatewayAttachmentId ::
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

-- | Creates a value of 'AcceptTransitGatewayMulticastDomainAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atgmdaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'atgmdaTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'atgmdaSubnetIds' - The IDs of the subnets to associate with the transit gateway multicast domain.
--
-- * 'atgmdaTransitGatewayAttachmentId' - The ID of the transit gateway attachment.
acceptTransitGatewayMulticastDomainAssociations ::
  AcceptTransitGatewayMulticastDomainAssociations
acceptTransitGatewayMulticastDomainAssociations =
  AcceptTransitGatewayMulticastDomainAssociations'
    { _atgmdaDryRun =
        Nothing,
      _atgmdaTransitGatewayMulticastDomainId =
        Nothing,
      _atgmdaSubnetIds = Nothing,
      _atgmdaTransitGatewayAttachmentId =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
atgmdaDryRun :: Lens' AcceptTransitGatewayMulticastDomainAssociations (Maybe Bool)
atgmdaDryRun = lens _atgmdaDryRun (\s a -> s {_atgmdaDryRun = a})

-- | The ID of the transit gateway multicast domain.
atgmdaTransitGatewayMulticastDomainId :: Lens' AcceptTransitGatewayMulticastDomainAssociations (Maybe Text)
atgmdaTransitGatewayMulticastDomainId = lens _atgmdaTransitGatewayMulticastDomainId (\s a -> s {_atgmdaTransitGatewayMulticastDomainId = a})

-- | The IDs of the subnets to associate with the transit gateway multicast domain.
atgmdaSubnetIds :: Lens' AcceptTransitGatewayMulticastDomainAssociations [Text]
atgmdaSubnetIds = lens _atgmdaSubnetIds (\s a -> s {_atgmdaSubnetIds = a}) . _Default . _Coerce

-- | The ID of the transit gateway attachment.
atgmdaTransitGatewayAttachmentId :: Lens' AcceptTransitGatewayMulticastDomainAssociations (Maybe Text)
atgmdaTransitGatewayAttachmentId = lens _atgmdaTransitGatewayAttachmentId (\s a -> s {_atgmdaTransitGatewayAttachmentId = a})

instance
  AWSRequest
    AcceptTransitGatewayMulticastDomainAssociations
  where
  type
    Rs
      AcceptTransitGatewayMulticastDomainAssociations =
      AcceptTransitGatewayMulticastDomainAssociationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AcceptTransitGatewayMulticastDomainAssociationsResponse'
            <$> (x .@? "associations") <*> (pure (fromEnum s))
      )

instance
  Hashable
    AcceptTransitGatewayMulticastDomainAssociations

instance
  NFData
    AcceptTransitGatewayMulticastDomainAssociations

instance
  ToHeaders
    AcceptTransitGatewayMulticastDomainAssociations
  where
  toHeaders = const mempty

instance
  ToPath
    AcceptTransitGatewayMulticastDomainAssociations
  where
  toPath = const "/"

instance
  ToQuery
    AcceptTransitGatewayMulticastDomainAssociations
  where
  toQuery
    AcceptTransitGatewayMulticastDomainAssociations' {..} =
      mconcat
        [ "Action"
            =: ( "AcceptTransitGatewayMulticastDomainAssociations" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _atgmdaDryRun,
          "TransitGatewayMulticastDomainId"
            =: _atgmdaTransitGatewayMulticastDomainId,
          toQuery
            (toQueryList "SubnetIds" <$> _atgmdaSubnetIds),
          "TransitGatewayAttachmentId"
            =: _atgmdaTransitGatewayAttachmentId
        ]

-- | /See:/ 'acceptTransitGatewayMulticastDomainAssociationsResponse' smart constructor.
data AcceptTransitGatewayMulticastDomainAssociationsResponse = AcceptTransitGatewayMulticastDomainAssociationsResponse'
  { _atgmdarrsAssociations ::
      !( Maybe
           TransitGatewayMulticastDomainAssociations
       ),
    _atgmdarrsResponseStatus ::
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

-- | Creates a value of 'AcceptTransitGatewayMulticastDomainAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atgmdarrsAssociations' - Undocumented member.
--
-- * 'atgmdarrsResponseStatus' - -- | The response status code.
acceptTransitGatewayMulticastDomainAssociationsResponse ::
  -- | 'atgmdarrsResponseStatus'
  Int ->
  AcceptTransitGatewayMulticastDomainAssociationsResponse
acceptTransitGatewayMulticastDomainAssociationsResponse
  pResponseStatus_ =
    AcceptTransitGatewayMulticastDomainAssociationsResponse'
      { _atgmdarrsAssociations =
          Nothing,
        _atgmdarrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
atgmdarrsAssociations :: Lens' AcceptTransitGatewayMulticastDomainAssociationsResponse (Maybe TransitGatewayMulticastDomainAssociations)
atgmdarrsAssociations = lens _atgmdarrsAssociations (\s a -> s {_atgmdarrsAssociations = a})

-- | -- | The response status code.
atgmdarrsResponseStatus :: Lens' AcceptTransitGatewayMulticastDomainAssociationsResponse Int
atgmdarrsResponseStatus = lens _atgmdarrsResponseStatus (\s a -> s {_atgmdarrsResponseStatus = a})

instance
  NFData
    AcceptTransitGatewayMulticastDomainAssociationsResponse
