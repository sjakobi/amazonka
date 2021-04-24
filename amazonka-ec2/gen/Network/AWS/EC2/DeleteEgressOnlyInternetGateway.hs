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
-- Module      : Network.AWS.EC2.DeleteEgressOnlyInternetGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an egress-only internet gateway.
module Network.AWS.EC2.DeleteEgressOnlyInternetGateway
  ( -- * Creating a Request
    deleteEgressOnlyInternetGateway,
    DeleteEgressOnlyInternetGateway,

    -- * Request Lenses
    deoigDryRun,
    deoigEgressOnlyInternetGatewayId,

    -- * Destructuring the Response
    deleteEgressOnlyInternetGatewayResponse,
    DeleteEgressOnlyInternetGatewayResponse,

    -- * Response Lenses
    deoigrrsReturnCode,
    deoigrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteEgressOnlyInternetGateway' smart constructor.
data DeleteEgressOnlyInternetGateway = DeleteEgressOnlyInternetGateway'
  { _deoigDryRun ::
      !( Maybe
           Bool
       ),
    _deoigEgressOnlyInternetGatewayId ::
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

-- | Creates a value of 'DeleteEgressOnlyInternetGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deoigDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'deoigEgressOnlyInternetGatewayId' - The ID of the egress-only internet gateway.
deleteEgressOnlyInternetGateway ::
  -- | 'deoigEgressOnlyInternetGatewayId'
  Text ->
  DeleteEgressOnlyInternetGateway
deleteEgressOnlyInternetGateway
  pEgressOnlyInternetGatewayId_ =
    DeleteEgressOnlyInternetGateway'
      { _deoigDryRun =
          Nothing,
        _deoigEgressOnlyInternetGatewayId =
          pEgressOnlyInternetGatewayId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
deoigDryRun :: Lens' DeleteEgressOnlyInternetGateway (Maybe Bool)
deoigDryRun = lens _deoigDryRun (\s a -> s {_deoigDryRun = a})

-- | The ID of the egress-only internet gateway.
deoigEgressOnlyInternetGatewayId :: Lens' DeleteEgressOnlyInternetGateway Text
deoigEgressOnlyInternetGatewayId = lens _deoigEgressOnlyInternetGatewayId (\s a -> s {_deoigEgressOnlyInternetGatewayId = a})

instance AWSRequest DeleteEgressOnlyInternetGateway where
  type
    Rs DeleteEgressOnlyInternetGateway =
      DeleteEgressOnlyInternetGatewayResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteEgressOnlyInternetGatewayResponse'
            <$> (x .@? "returnCode") <*> (pure (fromEnum s))
      )

instance Hashable DeleteEgressOnlyInternetGateway

instance NFData DeleteEgressOnlyInternetGateway

instance ToHeaders DeleteEgressOnlyInternetGateway where
  toHeaders = const mempty

instance ToPath DeleteEgressOnlyInternetGateway where
  toPath = const "/"

instance ToQuery DeleteEgressOnlyInternetGateway where
  toQuery DeleteEgressOnlyInternetGateway' {..} =
    mconcat
      [ "Action"
          =: ("DeleteEgressOnlyInternetGateway" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _deoigDryRun,
        "EgressOnlyInternetGatewayId"
          =: _deoigEgressOnlyInternetGatewayId
      ]

-- | /See:/ 'deleteEgressOnlyInternetGatewayResponse' smart constructor.
data DeleteEgressOnlyInternetGatewayResponse = DeleteEgressOnlyInternetGatewayResponse'
  { _deoigrrsReturnCode ::
      !( Maybe
           Bool
       ),
    _deoigrrsResponseStatus ::
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

-- | Creates a value of 'DeleteEgressOnlyInternetGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deoigrrsReturnCode' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'deoigrrsResponseStatus' - -- | The response status code.
deleteEgressOnlyInternetGatewayResponse ::
  -- | 'deoigrrsResponseStatus'
  Int ->
  DeleteEgressOnlyInternetGatewayResponse
deleteEgressOnlyInternetGatewayResponse
  pResponseStatus_ =
    DeleteEgressOnlyInternetGatewayResponse'
      { _deoigrrsReturnCode =
          Nothing,
        _deoigrrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
deoigrrsReturnCode :: Lens' DeleteEgressOnlyInternetGatewayResponse (Maybe Bool)
deoigrrsReturnCode = lens _deoigrrsReturnCode (\s a -> s {_deoigrrsReturnCode = a})

-- | -- | The response status code.
deoigrrsResponseStatus :: Lens' DeleteEgressOnlyInternetGatewayResponse Int
deoigrrsResponseStatus = lens _deoigrrsResponseStatus (\s a -> s {_deoigrrsResponseStatus = a})

instance
  NFData
    DeleteEgressOnlyInternetGatewayResponse
