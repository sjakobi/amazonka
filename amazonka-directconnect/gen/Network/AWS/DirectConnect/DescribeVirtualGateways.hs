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
-- Module      : Network.AWS.DirectConnect.DescribeVirtualGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the virtual private gateways owned by the AWS account.
--
--
-- You can create one or more AWS Direct Connect private virtual interfaces linked to a virtual private gateway.
module Network.AWS.DirectConnect.DescribeVirtualGateways
  ( -- * Creating a Request
    describeVirtualGateways,
    DescribeVirtualGateways,

    -- * Destructuring the Response
    describeVirtualGatewaysResponse,
    DescribeVirtualGatewaysResponse,

    -- * Response Lenses
    dvgrrsVirtualGateways,
    dvgrrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVirtualGateways' smart constructor.
data DescribeVirtualGateways = DescribeVirtualGateways'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeVirtualGateways' with the minimum fields required to make a request.
describeVirtualGateways ::
  DescribeVirtualGateways
describeVirtualGateways = DescribeVirtualGateways'

instance AWSRequest DescribeVirtualGateways where
  type
    Rs DescribeVirtualGateways =
      DescribeVirtualGatewaysResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeVirtualGatewaysResponse'
            <$> (x .?> "virtualGateways" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVirtualGateways

instance NFData DescribeVirtualGateways

instance ToHeaders DescribeVirtualGateways where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DescribeVirtualGateways" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeVirtualGateways where
  toJSON = const (Object mempty)

instance ToPath DescribeVirtualGateways where
  toPath = const "/"

instance ToQuery DescribeVirtualGateways where
  toQuery = const mempty

-- | /See:/ 'describeVirtualGatewaysResponse' smart constructor.
data DescribeVirtualGatewaysResponse = DescribeVirtualGatewaysResponse'
  { _dvgrrsVirtualGateways ::
      !( Maybe
           [VirtualGateway]
       ),
    _dvgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVirtualGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvgrrsVirtualGateways' - The virtual private gateways.
--
-- * 'dvgrrsResponseStatus' - -- | The response status code.
describeVirtualGatewaysResponse ::
  -- | 'dvgrrsResponseStatus'
  Int ->
  DescribeVirtualGatewaysResponse
describeVirtualGatewaysResponse pResponseStatus_ =
  DescribeVirtualGatewaysResponse'
    { _dvgrrsVirtualGateways =
        Nothing,
      _dvgrrsResponseStatus = pResponseStatus_
    }

-- | The virtual private gateways.
dvgrrsVirtualGateways :: Lens' DescribeVirtualGatewaysResponse [VirtualGateway]
dvgrrsVirtualGateways = lens _dvgrrsVirtualGateways (\s a -> s {_dvgrrsVirtualGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
dvgrrsResponseStatus :: Lens' DescribeVirtualGatewaysResponse Int
dvgrrsResponseStatus = lens _dvgrrsResponseStatus (\s a -> s {_dvgrrsResponseStatus = a})

instance NFData DescribeVirtualGatewaysResponse
