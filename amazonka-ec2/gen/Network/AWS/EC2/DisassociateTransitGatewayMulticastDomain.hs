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
-- Module      : Network.AWS.EC2.DisassociateTransitGatewayMulticastDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified subnets from the transit gateway multicast domain.
module Network.AWS.EC2.DisassociateTransitGatewayMulticastDomain
  ( -- * Creating a Request
    disassociateTransitGatewayMulticastDomain,
    DisassociateTransitGatewayMulticastDomain,

    -- * Request Lenses
    dtgmdtDryRun,
    dtgmdtTransitGatewayMulticastDomainId,
    dtgmdtSubnetIds,
    dtgmdtTransitGatewayAttachmentId,

    -- * Destructuring the Response
    disassociateTransitGatewayMulticastDomainResponse,
    DisassociateTransitGatewayMulticastDomainResponse,

    -- * Response Lenses
    disirsAssociations,
    disirsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateTransitGatewayMulticastDomain' smart constructor.
data DisassociateTransitGatewayMulticastDomain = DisassociateTransitGatewayMulticastDomain'
  { _dtgmdtDryRun ::
      !( Maybe
           Bool
       ),
    _dtgmdtTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _dtgmdtSubnetIds ::
      !( Maybe
           [Text]
       ),
    _dtgmdtTransitGatewayAttachmentId ::
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

-- | Creates a value of 'DisassociateTransitGatewayMulticastDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmdtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgmdtTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'dtgmdtSubnetIds' - The IDs of the subnets;
--
-- * 'dtgmdtTransitGatewayAttachmentId' - The ID of the attachment.
disassociateTransitGatewayMulticastDomain ::
  DisassociateTransitGatewayMulticastDomain
disassociateTransitGatewayMulticastDomain =
  DisassociateTransitGatewayMulticastDomain'
    { _dtgmdtDryRun =
        Nothing,
      _dtgmdtTransitGatewayMulticastDomainId =
        Nothing,
      _dtgmdtSubnetIds = Nothing,
      _dtgmdtTransitGatewayAttachmentId =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgmdtDryRun :: Lens' DisassociateTransitGatewayMulticastDomain (Maybe Bool)
dtgmdtDryRun = lens _dtgmdtDryRun (\s a -> s {_dtgmdtDryRun = a})

-- | The ID of the transit gateway multicast domain.
dtgmdtTransitGatewayMulticastDomainId :: Lens' DisassociateTransitGatewayMulticastDomain (Maybe Text)
dtgmdtTransitGatewayMulticastDomainId = lens _dtgmdtTransitGatewayMulticastDomainId (\s a -> s {_dtgmdtTransitGatewayMulticastDomainId = a})

-- | The IDs of the subnets;
dtgmdtSubnetIds :: Lens' DisassociateTransitGatewayMulticastDomain [Text]
dtgmdtSubnetIds = lens _dtgmdtSubnetIds (\s a -> s {_dtgmdtSubnetIds = a}) . _Default . _Coerce

-- | The ID of the attachment.
dtgmdtTransitGatewayAttachmentId :: Lens' DisassociateTransitGatewayMulticastDomain (Maybe Text)
dtgmdtTransitGatewayAttachmentId = lens _dtgmdtTransitGatewayAttachmentId (\s a -> s {_dtgmdtTransitGatewayAttachmentId = a})

instance
  AWSRequest
    DisassociateTransitGatewayMulticastDomain
  where
  type
    Rs DisassociateTransitGatewayMulticastDomain =
      DisassociateTransitGatewayMulticastDomainResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DisassociateTransitGatewayMulticastDomainResponse'
            <$> (x .@? "associations") <*> (pure (fromEnum s))
      )

instance
  Hashable
    DisassociateTransitGatewayMulticastDomain

instance
  NFData
    DisassociateTransitGatewayMulticastDomain

instance
  ToHeaders
    DisassociateTransitGatewayMulticastDomain
  where
  toHeaders = const mempty

instance
  ToPath
    DisassociateTransitGatewayMulticastDomain
  where
  toPath = const "/"

instance
  ToQuery
    DisassociateTransitGatewayMulticastDomain
  where
  toQuery
    DisassociateTransitGatewayMulticastDomain' {..} =
      mconcat
        [ "Action"
            =: ( "DisassociateTransitGatewayMulticastDomain" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _dtgmdtDryRun,
          "TransitGatewayMulticastDomainId"
            =: _dtgmdtTransitGatewayMulticastDomainId,
          toQuery
            (toQueryList "SubnetIds" <$> _dtgmdtSubnetIds),
          "TransitGatewayAttachmentId"
            =: _dtgmdtTransitGatewayAttachmentId
        ]

-- | /See:/ 'disassociateTransitGatewayMulticastDomainResponse' smart constructor.
data DisassociateTransitGatewayMulticastDomainResponse = DisassociateTransitGatewayMulticastDomainResponse'
  { _disirsAssociations ::
      !( Maybe
           TransitGatewayMulticastDomainAssociations
       ),
    _disirsResponseStatus ::
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

-- | Creates a value of 'DisassociateTransitGatewayMulticastDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disirsAssociations' - Information about the association.
--
-- * 'disirsResponseStatus' - -- | The response status code.
disassociateTransitGatewayMulticastDomainResponse ::
  -- | 'disirsResponseStatus'
  Int ->
  DisassociateTransitGatewayMulticastDomainResponse
disassociateTransitGatewayMulticastDomainResponse
  pResponseStatus_ =
    DisassociateTransitGatewayMulticastDomainResponse'
      { _disirsAssociations =
          Nothing,
        _disirsResponseStatus =
          pResponseStatus_
      }

-- | Information about the association.
disirsAssociations :: Lens' DisassociateTransitGatewayMulticastDomainResponse (Maybe TransitGatewayMulticastDomainAssociations)
disirsAssociations = lens _disirsAssociations (\s a -> s {_disirsAssociations = a})

-- | -- | The response status code.
disirsResponseStatus :: Lens' DisassociateTransitGatewayMulticastDomainResponse Int
disirsResponseStatus = lens _disirsResponseStatus (\s a -> s {_disirsResponseStatus = a})

instance
  NFData
    DisassociateTransitGatewayMulticastDomainResponse
