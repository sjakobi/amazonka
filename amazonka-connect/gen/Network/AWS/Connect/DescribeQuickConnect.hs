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
-- Module      : Network.AWS.Connect.DescribeQuickConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Describes the quick connect.
module Network.AWS.Connect.DescribeQuickConnect
  ( -- * Creating a Request
    describeQuickConnect,
    DescribeQuickConnect,

    -- * Request Lenses
    dqcInstanceId,
    dqcQuickConnectId,

    -- * Destructuring the Response
    describeQuickConnectResponse,
    DescribeQuickConnectResponse,

    -- * Response Lenses
    dqcrrsQuickConnect,
    dqcrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeQuickConnect' smart constructor.
data DescribeQuickConnect = DescribeQuickConnect'
  { _dqcInstanceId ::
      !Text,
    _dqcQuickConnectId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeQuickConnect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqcInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'dqcQuickConnectId' - The identifier for the quick connect.
describeQuickConnect ::
  -- | 'dqcInstanceId'
  Text ->
  -- | 'dqcQuickConnectId'
  Text ->
  DescribeQuickConnect
describeQuickConnect pInstanceId_ pQuickConnectId_ =
  DescribeQuickConnect'
    { _dqcInstanceId =
        pInstanceId_,
      _dqcQuickConnectId = pQuickConnectId_
    }

-- | The identifier of the Amazon Connect instance.
dqcInstanceId :: Lens' DescribeQuickConnect Text
dqcInstanceId = lens _dqcInstanceId (\s a -> s {_dqcInstanceId = a})

-- | The identifier for the quick connect.
dqcQuickConnectId :: Lens' DescribeQuickConnect Text
dqcQuickConnectId = lens _dqcQuickConnectId (\s a -> s {_dqcQuickConnectId = a})

instance AWSRequest DescribeQuickConnect where
  type
    Rs DescribeQuickConnect =
      DescribeQuickConnectResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeQuickConnectResponse'
            <$> (x .?> "QuickConnect") <*> (pure (fromEnum s))
      )

instance Hashable DescribeQuickConnect

instance NFData DescribeQuickConnect

instance ToHeaders DescribeQuickConnect where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeQuickConnect where
  toPath DescribeQuickConnect' {..} =
    mconcat
      [ "/quick-connects/",
        toBS _dqcInstanceId,
        "/",
        toBS _dqcQuickConnectId
      ]

instance ToQuery DescribeQuickConnect where
  toQuery = const mempty

-- | /See:/ 'describeQuickConnectResponse' smart constructor.
data DescribeQuickConnectResponse = DescribeQuickConnectResponse'
  { _dqcrrsQuickConnect ::
      !( Maybe
           QuickConnect
       ),
    _dqcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeQuickConnectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqcrrsQuickConnect' - Information about the quick connect.
--
-- * 'dqcrrsResponseStatus' - -- | The response status code.
describeQuickConnectResponse ::
  -- | 'dqcrrsResponseStatus'
  Int ->
  DescribeQuickConnectResponse
describeQuickConnectResponse pResponseStatus_ =
  DescribeQuickConnectResponse'
    { _dqcrrsQuickConnect =
        Nothing,
      _dqcrrsResponseStatus = pResponseStatus_
    }

-- | Information about the quick connect.
dqcrrsQuickConnect :: Lens' DescribeQuickConnectResponse (Maybe QuickConnect)
dqcrrsQuickConnect = lens _dqcrrsQuickConnect (\s a -> s {_dqcrrsQuickConnect = a})

-- | -- | The response status code.
dqcrrsResponseStatus :: Lens' DescribeQuickConnectResponse Int
dqcrrsResponseStatus = lens _dqcrrsResponseStatus (\s a -> s {_dqcrrsResponseStatus = a})

instance NFData DescribeQuickConnectResponse
