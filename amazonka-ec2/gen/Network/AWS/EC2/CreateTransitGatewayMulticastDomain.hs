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
-- Module      : Network.AWS.EC2.CreateTransitGatewayMulticastDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a multicast domain using the specified transit gateway.
--
--
-- The transit gateway must be in the available state before you create a domain. Use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html DescribeTransitGateways> to see the state of transit gateway.
module Network.AWS.EC2.CreateTransitGatewayMulticastDomain
  ( -- * Creating a Request
    createTransitGatewayMulticastDomain,
    CreateTransitGatewayMulticastDomain,

    -- * Request Lenses
    ctgmdTagSpecifications,
    ctgmdDryRun,
    ctgmdOptions,
    ctgmdTransitGatewayId,

    -- * Destructuring the Response
    createTransitGatewayMulticastDomainResponse,
    CreateTransitGatewayMulticastDomainResponse,

    -- * Response Lenses
    ctgmdrrsTransitGatewayMulticastDomain,
    ctgmdrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTransitGatewayMulticastDomain' smart constructor.
data CreateTransitGatewayMulticastDomain = CreateTransitGatewayMulticastDomain'
  { _ctgmdTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _ctgmdDryRun ::
      !( Maybe
           Bool
       ),
    _ctgmdOptions ::
      !( Maybe
           CreateTransitGatewayMulticastDomainRequestOptions
       ),
    _ctgmdTransitGatewayId ::
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

-- | Creates a value of 'CreateTransitGatewayMulticastDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgmdTagSpecifications' - The tags for the transit gateway multicast domain.
--
-- * 'ctgmdDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ctgmdOptions' - The options for the transit gateway multicast domain.
--
-- * 'ctgmdTransitGatewayId' - The ID of the transit gateway.
createTransitGatewayMulticastDomain ::
  -- | 'ctgmdTransitGatewayId'
  Text ->
  CreateTransitGatewayMulticastDomain
createTransitGatewayMulticastDomain
  pTransitGatewayId_ =
    CreateTransitGatewayMulticastDomain'
      { _ctgmdTagSpecifications =
          Nothing,
        _ctgmdDryRun = Nothing,
        _ctgmdOptions = Nothing,
        _ctgmdTransitGatewayId =
          pTransitGatewayId_
      }

-- | The tags for the transit gateway multicast domain.
ctgmdTagSpecifications :: Lens' CreateTransitGatewayMulticastDomain [TagSpecification]
ctgmdTagSpecifications = lens _ctgmdTagSpecifications (\s a -> s {_ctgmdTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ctgmdDryRun :: Lens' CreateTransitGatewayMulticastDomain (Maybe Bool)
ctgmdDryRun = lens _ctgmdDryRun (\s a -> s {_ctgmdDryRun = a})

-- | The options for the transit gateway multicast domain.
ctgmdOptions :: Lens' CreateTransitGatewayMulticastDomain (Maybe CreateTransitGatewayMulticastDomainRequestOptions)
ctgmdOptions = lens _ctgmdOptions (\s a -> s {_ctgmdOptions = a})

-- | The ID of the transit gateway.
ctgmdTransitGatewayId :: Lens' CreateTransitGatewayMulticastDomain Text
ctgmdTransitGatewayId = lens _ctgmdTransitGatewayId (\s a -> s {_ctgmdTransitGatewayId = a})

instance
  AWSRequest
    CreateTransitGatewayMulticastDomain
  where
  type
    Rs CreateTransitGatewayMulticastDomain =
      CreateTransitGatewayMulticastDomainResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateTransitGatewayMulticastDomainResponse'
            <$> (x .@? "transitGatewayMulticastDomain")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateTransitGatewayMulticastDomain

instance NFData CreateTransitGatewayMulticastDomain

instance
  ToHeaders
    CreateTransitGatewayMulticastDomain
  where
  toHeaders = const mempty

instance ToPath CreateTransitGatewayMulticastDomain where
  toPath = const "/"

instance ToQuery CreateTransitGatewayMulticastDomain where
  toQuery CreateTransitGatewayMulticastDomain' {..} =
    mconcat
      [ "Action"
          =: ( "CreateTransitGatewayMulticastDomain" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ctgmdTagSpecifications
          ),
        "DryRun" =: _ctgmdDryRun,
        "Options" =: _ctgmdOptions,
        "TransitGatewayId" =: _ctgmdTransitGatewayId
      ]

-- | /See:/ 'createTransitGatewayMulticastDomainResponse' smart constructor.
data CreateTransitGatewayMulticastDomainResponse = CreateTransitGatewayMulticastDomainResponse'
  { _ctgmdrrsTransitGatewayMulticastDomain ::
      !( Maybe
           TransitGatewayMulticastDomain
       ),
    _ctgmdrrsResponseStatus ::
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

-- | Creates a value of 'CreateTransitGatewayMulticastDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgmdrrsTransitGatewayMulticastDomain' - Information about the transit gateway multicast domain.
--
-- * 'ctgmdrrsResponseStatus' - -- | The response status code.
createTransitGatewayMulticastDomainResponse ::
  -- | 'ctgmdrrsResponseStatus'
  Int ->
  CreateTransitGatewayMulticastDomainResponse
createTransitGatewayMulticastDomainResponse
  pResponseStatus_ =
    CreateTransitGatewayMulticastDomainResponse'
      { _ctgmdrrsTransitGatewayMulticastDomain =
          Nothing,
        _ctgmdrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the transit gateway multicast domain.
ctgmdrrsTransitGatewayMulticastDomain :: Lens' CreateTransitGatewayMulticastDomainResponse (Maybe TransitGatewayMulticastDomain)
ctgmdrrsTransitGatewayMulticastDomain = lens _ctgmdrrsTransitGatewayMulticastDomain (\s a -> s {_ctgmdrrsTransitGatewayMulticastDomain = a})

-- | -- | The response status code.
ctgmdrrsResponseStatus :: Lens' CreateTransitGatewayMulticastDomainResponse Int
ctgmdrrsResponseStatus = lens _ctgmdrrsResponseStatus (\s a -> s {_ctgmdrrsResponseStatus = a})

instance
  NFData
    CreateTransitGatewayMulticastDomainResponse
