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
-- Module      : Network.AWS.EC2.AssociateTransitGatewayMulticastDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the specified subnets and transit gateway attachments with the specified transit gateway multicast domain.
--
--
-- The transit gateway attachment must be in the available state before you can add a resource. Use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html DescribeTransitGatewayAttachments> to see the state of the attachment.
module Network.AWS.EC2.AssociateTransitGatewayMulticastDomain
  ( -- * Creating a Request
    associateTransitGatewayMulticastDomain,
    AssociateTransitGatewayMulticastDomain,

    -- * Request Lenses
    atgmdDryRun,
    atgmdTransitGatewayMulticastDomainId,
    atgmdSubnetIds,
    atgmdTransitGatewayAttachmentId,

    -- * Destructuring the Response
    associateTransitGatewayMulticastDomainResponse,
    AssociateTransitGatewayMulticastDomainResponse,

    -- * Response Lenses
    atgmdrrsAssociations,
    atgmdrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateTransitGatewayMulticastDomain' smart constructor.
data AssociateTransitGatewayMulticastDomain = AssociateTransitGatewayMulticastDomain'
  { _atgmdDryRun ::
      !( Maybe
           Bool
       ),
    _atgmdTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _atgmdSubnetIds ::
      !( Maybe
           [Text]
       ),
    _atgmdTransitGatewayAttachmentId ::
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

-- | Creates a value of 'AssociateTransitGatewayMulticastDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atgmdDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'atgmdTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'atgmdSubnetIds' - The IDs of the subnets to associate with the transit gateway multicast domain.
--
-- * 'atgmdTransitGatewayAttachmentId' - The ID of the transit gateway attachment to associate with the transit gateway multicast domain.
associateTransitGatewayMulticastDomain ::
  AssociateTransitGatewayMulticastDomain
associateTransitGatewayMulticastDomain =
  AssociateTransitGatewayMulticastDomain'
    { _atgmdDryRun =
        Nothing,
      _atgmdTransitGatewayMulticastDomainId =
        Nothing,
      _atgmdSubnetIds = Nothing,
      _atgmdTransitGatewayAttachmentId =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
atgmdDryRun :: Lens' AssociateTransitGatewayMulticastDomain (Maybe Bool)
atgmdDryRun = lens _atgmdDryRun (\s a -> s {_atgmdDryRun = a})

-- | The ID of the transit gateway multicast domain.
atgmdTransitGatewayMulticastDomainId :: Lens' AssociateTransitGatewayMulticastDomain (Maybe Text)
atgmdTransitGatewayMulticastDomainId = lens _atgmdTransitGatewayMulticastDomainId (\s a -> s {_atgmdTransitGatewayMulticastDomainId = a})

-- | The IDs of the subnets to associate with the transit gateway multicast domain.
atgmdSubnetIds :: Lens' AssociateTransitGatewayMulticastDomain [Text]
atgmdSubnetIds = lens _atgmdSubnetIds (\s a -> s {_atgmdSubnetIds = a}) . _Default . _Coerce

-- | The ID of the transit gateway attachment to associate with the transit gateway multicast domain.
atgmdTransitGatewayAttachmentId :: Lens' AssociateTransitGatewayMulticastDomain (Maybe Text)
atgmdTransitGatewayAttachmentId = lens _atgmdTransitGatewayAttachmentId (\s a -> s {_atgmdTransitGatewayAttachmentId = a})

instance
  AWSRequest
    AssociateTransitGatewayMulticastDomain
  where
  type
    Rs AssociateTransitGatewayMulticastDomain =
      AssociateTransitGatewayMulticastDomainResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AssociateTransitGatewayMulticastDomainResponse'
            <$> (x .@? "associations") <*> (pure (fromEnum s))
      )

instance
  Hashable
    AssociateTransitGatewayMulticastDomain

instance
  NFData
    AssociateTransitGatewayMulticastDomain

instance
  ToHeaders
    AssociateTransitGatewayMulticastDomain
  where
  toHeaders = const mempty

instance
  ToPath
    AssociateTransitGatewayMulticastDomain
  where
  toPath = const "/"

instance
  ToQuery
    AssociateTransitGatewayMulticastDomain
  where
  toQuery AssociateTransitGatewayMulticastDomain' {..} =
    mconcat
      [ "Action"
          =: ( "AssociateTransitGatewayMulticastDomain" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _atgmdDryRun,
        "TransitGatewayMulticastDomainId"
          =: _atgmdTransitGatewayMulticastDomainId,
        toQuery
          (toQueryList "SubnetIds" <$> _atgmdSubnetIds),
        "TransitGatewayAttachmentId"
          =: _atgmdTransitGatewayAttachmentId
      ]

-- | /See:/ 'associateTransitGatewayMulticastDomainResponse' smart constructor.
data AssociateTransitGatewayMulticastDomainResponse = AssociateTransitGatewayMulticastDomainResponse'
  { _atgmdrrsAssociations ::
      !( Maybe
           TransitGatewayMulticastDomainAssociations
       ),
    _atgmdrrsResponseStatus ::
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

-- | Creates a value of 'AssociateTransitGatewayMulticastDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atgmdrrsAssociations' - Information about the transit gateway multicast domain associations.
--
-- * 'atgmdrrsResponseStatus' - -- | The response status code.
associateTransitGatewayMulticastDomainResponse ::
  -- | 'atgmdrrsResponseStatus'
  Int ->
  AssociateTransitGatewayMulticastDomainResponse
associateTransitGatewayMulticastDomainResponse
  pResponseStatus_ =
    AssociateTransitGatewayMulticastDomainResponse'
      { _atgmdrrsAssociations =
          Nothing,
        _atgmdrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the transit gateway multicast domain associations.
atgmdrrsAssociations :: Lens' AssociateTransitGatewayMulticastDomainResponse (Maybe TransitGatewayMulticastDomainAssociations)
atgmdrrsAssociations = lens _atgmdrrsAssociations (\s a -> s {_atgmdrrsAssociations = a})

-- | -- | The response status code.
atgmdrrsResponseStatus :: Lens' AssociateTransitGatewayMulticastDomainResponse Int
atgmdrrsResponseStatus = lens _atgmdrrsResponseStatus (\s a -> s {_atgmdrrsResponseStatus = a})

instance
  NFData
    AssociateTransitGatewayMulticastDomainResponse
