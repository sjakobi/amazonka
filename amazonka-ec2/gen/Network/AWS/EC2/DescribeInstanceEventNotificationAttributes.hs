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
-- Module      : Network.AWS.EC2.DescribeInstanceEventNotificationAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the tag keys that are registered to appear in scheduled event notifications for resources in the current Region.
module Network.AWS.EC2.DescribeInstanceEventNotificationAttributes
  ( -- * Creating a Request
    describeInstanceEventNotificationAttributes,
    DescribeInstanceEventNotificationAttributes,

    -- * Request Lenses
    dienasDryRun,

    -- * Destructuring the Response
    describeInstanceEventNotificationAttributesResponse,
    DescribeInstanceEventNotificationAttributesResponse,

    -- * Response Lenses
    drsInstanceTagAttribute,
    drsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstanceEventNotificationAttributes' smart constructor.
newtype DescribeInstanceEventNotificationAttributes = DescribeInstanceEventNotificationAttributes'
  { _dienasDryRun ::
      Maybe
        Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceEventNotificationAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dienasDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
describeInstanceEventNotificationAttributes ::
  DescribeInstanceEventNotificationAttributes
describeInstanceEventNotificationAttributes =
  DescribeInstanceEventNotificationAttributes'
    { _dienasDryRun =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dienasDryRun :: Lens' DescribeInstanceEventNotificationAttributes (Maybe Bool)
dienasDryRun = lens _dienasDryRun (\s a -> s {_dienasDryRun = a})

instance
  AWSRequest
    DescribeInstanceEventNotificationAttributes
  where
  type
    Rs DescribeInstanceEventNotificationAttributes =
      DescribeInstanceEventNotificationAttributesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeInstanceEventNotificationAttributesResponse'
            <$> (x .@? "instanceTagAttribute")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeInstanceEventNotificationAttributes

instance
  NFData
    DescribeInstanceEventNotificationAttributes

instance
  ToHeaders
    DescribeInstanceEventNotificationAttributes
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeInstanceEventNotificationAttributes
  where
  toPath = const "/"

instance
  ToQuery
    DescribeInstanceEventNotificationAttributes
  where
  toQuery
    DescribeInstanceEventNotificationAttributes' {..} =
      mconcat
        [ "Action"
            =: ( "DescribeInstanceEventNotificationAttributes" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _dienasDryRun
        ]

-- | /See:/ 'describeInstanceEventNotificationAttributesResponse' smart constructor.
data DescribeInstanceEventNotificationAttributesResponse = DescribeInstanceEventNotificationAttributesResponse'
  { _drsInstanceTagAttribute ::
      !( Maybe
           InstanceTagNotificationAttribute
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceEventNotificationAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsInstanceTagAttribute' - Information about the registered tag keys.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeInstanceEventNotificationAttributesResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeInstanceEventNotificationAttributesResponse
describeInstanceEventNotificationAttributesResponse
  pResponseStatus_ =
    DescribeInstanceEventNotificationAttributesResponse'
      { _drsInstanceTagAttribute =
          Nothing,
        _drsResponseStatus =
          pResponseStatus_
      }

-- | Information about the registered tag keys.
drsInstanceTagAttribute :: Lens' DescribeInstanceEventNotificationAttributesResponse (Maybe InstanceTagNotificationAttribute)
drsInstanceTagAttribute = lens _drsInstanceTagAttribute (\s a -> s {_drsInstanceTagAttribute = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeInstanceEventNotificationAttributesResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance
  NFData
    DescribeInstanceEventNotificationAttributesResponse
