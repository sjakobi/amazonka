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
-- Module      : Network.AWS.EC2.CancelSpotInstanceRequests
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels one or more Spot Instance requests.
--
--
-- /Important:/ Canceling a Spot Instance request does not terminate running Spot Instances associated with the request.
module Network.AWS.EC2.CancelSpotInstanceRequests
  ( -- * Creating a Request
    cancelSpotInstanceRequests,
    CancelSpotInstanceRequests,

    -- * Request Lenses
    csirDryRun,
    csirSpotInstanceRequestIds,

    -- * Destructuring the Response
    cancelSpotInstanceRequestsResponse,
    CancelSpotInstanceRequestsResponse,

    -- * Response Lenses
    csirrrsCancelledSpotInstanceRequests,
    csirrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CancelSpotInstanceRequests.
--
--
--
-- /See:/ 'cancelSpotInstanceRequests' smart constructor.
data CancelSpotInstanceRequests = CancelSpotInstanceRequests'
  { _csirDryRun ::
      !(Maybe Bool),
    _csirSpotInstanceRequestIds ::
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

-- | Creates a value of 'CancelSpotInstanceRequests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csirDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'csirSpotInstanceRequestIds' - One or more Spot Instance request IDs.
cancelSpotInstanceRequests ::
  CancelSpotInstanceRequests
cancelSpotInstanceRequests =
  CancelSpotInstanceRequests'
    { _csirDryRun = Nothing,
      _csirSpotInstanceRequestIds = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
csirDryRun :: Lens' CancelSpotInstanceRequests (Maybe Bool)
csirDryRun = lens _csirDryRun (\s a -> s {_csirDryRun = a})

-- | One or more Spot Instance request IDs.
csirSpotInstanceRequestIds :: Lens' CancelSpotInstanceRequests [Text]
csirSpotInstanceRequestIds = lens _csirSpotInstanceRequestIds (\s a -> s {_csirSpotInstanceRequestIds = a}) . _Coerce

instance AWSRequest CancelSpotInstanceRequests where
  type
    Rs CancelSpotInstanceRequests =
      CancelSpotInstanceRequestsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CancelSpotInstanceRequestsResponse'
            <$> ( x .@? "spotInstanceRequestSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable CancelSpotInstanceRequests

instance NFData CancelSpotInstanceRequests

instance ToHeaders CancelSpotInstanceRequests where
  toHeaders = const mempty

instance ToPath CancelSpotInstanceRequests where
  toPath = const "/"

instance ToQuery CancelSpotInstanceRequests where
  toQuery CancelSpotInstanceRequests' {..} =
    mconcat
      [ "Action"
          =: ("CancelSpotInstanceRequests" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _csirDryRun,
        toQueryList
          "SpotInstanceRequestId"
          _csirSpotInstanceRequestIds
      ]

-- | Contains the output of CancelSpotInstanceRequests.
--
--
--
-- /See:/ 'cancelSpotInstanceRequestsResponse' smart constructor.
data CancelSpotInstanceRequestsResponse = CancelSpotInstanceRequestsResponse'
  { _csirrrsCancelledSpotInstanceRequests ::
      !( Maybe
           [CancelledSpotInstanceRequest]
       ),
    _csirrrsResponseStatus ::
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

-- | Creates a value of 'CancelSpotInstanceRequestsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csirrrsCancelledSpotInstanceRequests' - One or more Spot Instance requests.
--
-- * 'csirrrsResponseStatus' - -- | The response status code.
cancelSpotInstanceRequestsResponse ::
  -- | 'csirrrsResponseStatus'
  Int ->
  CancelSpotInstanceRequestsResponse
cancelSpotInstanceRequestsResponse pResponseStatus_ =
  CancelSpotInstanceRequestsResponse'
    { _csirrrsCancelledSpotInstanceRequests =
        Nothing,
      _csirrrsResponseStatus =
        pResponseStatus_
    }

-- | One or more Spot Instance requests.
csirrrsCancelledSpotInstanceRequests :: Lens' CancelSpotInstanceRequestsResponse [CancelledSpotInstanceRequest]
csirrrsCancelledSpotInstanceRequests = lens _csirrrsCancelledSpotInstanceRequests (\s a -> s {_csirrrsCancelledSpotInstanceRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
csirrrsResponseStatus :: Lens' CancelSpotInstanceRequestsResponse Int
csirrrsResponseStatus = lens _csirrrsResponseStatus (\s a -> s {_csirrrsResponseStatus = a})

instance NFData CancelSpotInstanceRequestsResponse
