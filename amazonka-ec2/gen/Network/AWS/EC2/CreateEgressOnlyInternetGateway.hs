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
-- Module      : Network.AWS.EC2.CreateEgressOnlyInternetGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- [IPv6 only] Creates an egress-only internet gateway for your VPC. An egress-only internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.
module Network.AWS.EC2.CreateEgressOnlyInternetGateway
  ( -- * Creating a Request
    createEgressOnlyInternetGateway,
    CreateEgressOnlyInternetGateway,

    -- * Request Lenses
    ceoigTagSpecifications,
    ceoigDryRun,
    ceoigClientToken,
    ceoigVPCId,

    -- * Destructuring the Response
    createEgressOnlyInternetGatewayResponse,
    CreateEgressOnlyInternetGatewayResponse,

    -- * Response Lenses
    ceoigrrsEgressOnlyInternetGateway,
    ceoigrrsClientToken,
    ceoigrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createEgressOnlyInternetGateway' smart constructor.
data CreateEgressOnlyInternetGateway = CreateEgressOnlyInternetGateway'
  { _ceoigTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _ceoigDryRun ::
      !( Maybe
           Bool
       ),
    _ceoigClientToken ::
      !( Maybe
           Text
       ),
    _ceoigVPCId ::
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

-- | Creates a value of 'CreateEgressOnlyInternetGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceoigTagSpecifications' - The tags to assign to the egress-only internet gateway.
--
-- * 'ceoigDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ceoigClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'ceoigVPCId' - The ID of the VPC for which to create the egress-only internet gateway.
createEgressOnlyInternetGateway ::
  -- | 'ceoigVPCId'
  Text ->
  CreateEgressOnlyInternetGateway
createEgressOnlyInternetGateway pVPCId_ =
  CreateEgressOnlyInternetGateway'
    { _ceoigTagSpecifications =
        Nothing,
      _ceoigDryRun = Nothing,
      _ceoigClientToken = Nothing,
      _ceoigVPCId = pVPCId_
    }

-- | The tags to assign to the egress-only internet gateway.
ceoigTagSpecifications :: Lens' CreateEgressOnlyInternetGateway [TagSpecification]
ceoigTagSpecifications = lens _ceoigTagSpecifications (\s a -> s {_ceoigTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ceoigDryRun :: Lens' CreateEgressOnlyInternetGateway (Maybe Bool)
ceoigDryRun = lens _ceoigDryRun (\s a -> s {_ceoigDryRun = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ceoigClientToken :: Lens' CreateEgressOnlyInternetGateway (Maybe Text)
ceoigClientToken = lens _ceoigClientToken (\s a -> s {_ceoigClientToken = a})

-- | The ID of the VPC for which to create the egress-only internet gateway.
ceoigVPCId :: Lens' CreateEgressOnlyInternetGateway Text
ceoigVPCId = lens _ceoigVPCId (\s a -> s {_ceoigVPCId = a})

instance AWSRequest CreateEgressOnlyInternetGateway where
  type
    Rs CreateEgressOnlyInternetGateway =
      CreateEgressOnlyInternetGatewayResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateEgressOnlyInternetGatewayResponse'
            <$> (x .@? "egressOnlyInternetGateway")
            <*> (x .@? "clientToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateEgressOnlyInternetGateway

instance NFData CreateEgressOnlyInternetGateway

instance ToHeaders CreateEgressOnlyInternetGateway where
  toHeaders = const mempty

instance ToPath CreateEgressOnlyInternetGateway where
  toPath = const "/"

instance ToQuery CreateEgressOnlyInternetGateway where
  toQuery CreateEgressOnlyInternetGateway' {..} =
    mconcat
      [ "Action"
          =: ("CreateEgressOnlyInternetGateway" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ceoigTagSpecifications
          ),
        "DryRun" =: _ceoigDryRun,
        "ClientToken" =: _ceoigClientToken,
        "VpcId" =: _ceoigVPCId
      ]

-- | /See:/ 'createEgressOnlyInternetGatewayResponse' smart constructor.
data CreateEgressOnlyInternetGatewayResponse = CreateEgressOnlyInternetGatewayResponse'
  { _ceoigrrsEgressOnlyInternetGateway ::
      !( Maybe
           EgressOnlyInternetGateway
       ),
    _ceoigrrsClientToken ::
      !( Maybe
           Text
       ),
    _ceoigrrsResponseStatus ::
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

-- | Creates a value of 'CreateEgressOnlyInternetGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceoigrrsEgressOnlyInternetGateway' - Information about the egress-only internet gateway.
--
-- * 'ceoigrrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'ceoigrrsResponseStatus' - -- | The response status code.
createEgressOnlyInternetGatewayResponse ::
  -- | 'ceoigrrsResponseStatus'
  Int ->
  CreateEgressOnlyInternetGatewayResponse
createEgressOnlyInternetGatewayResponse
  pResponseStatus_ =
    CreateEgressOnlyInternetGatewayResponse'
      { _ceoigrrsEgressOnlyInternetGateway =
          Nothing,
        _ceoigrrsClientToken = Nothing,
        _ceoigrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the egress-only internet gateway.
ceoigrrsEgressOnlyInternetGateway :: Lens' CreateEgressOnlyInternetGatewayResponse (Maybe EgressOnlyInternetGateway)
ceoigrrsEgressOnlyInternetGateway = lens _ceoigrrsEgressOnlyInternetGateway (\s a -> s {_ceoigrrsEgressOnlyInternetGateway = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
ceoigrrsClientToken :: Lens' CreateEgressOnlyInternetGatewayResponse (Maybe Text)
ceoigrrsClientToken = lens _ceoigrrsClientToken (\s a -> s {_ceoigrrsClientToken = a})

-- | -- | The response status code.
ceoigrrsResponseStatus :: Lens' CreateEgressOnlyInternetGatewayResponse Int
ceoigrrsResponseStatus = lens _ceoigrrsResponseStatus (\s a -> s {_ceoigrrsResponseStatus = a})

instance
  NFData
    CreateEgressOnlyInternetGatewayResponse
