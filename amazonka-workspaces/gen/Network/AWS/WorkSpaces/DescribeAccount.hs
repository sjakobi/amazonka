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
-- Module      : Network.AWS.WorkSpaces.DescribeAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes the configuration of Bring Your Own License (BYOL) for the specified account.
module Network.AWS.WorkSpaces.DescribeAccount
  ( -- * Creating a Request
    describeAccount,
    DescribeAccount,

    -- * Destructuring the Response
    describeAccountResponse,
    DescribeAccountResponse,

    -- * Response Lenses
    darrsDedicatedTenancySupport,
    darrsDedicatedTenancyManagementCidrRange,
    darrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeAccount' smart constructor.
data DescribeAccount = DescribeAccount'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAccount' with the minimum fields required to make a request.
describeAccount ::
  DescribeAccount
describeAccount = DescribeAccount'

instance AWSRequest DescribeAccount where
  type Rs DescribeAccount = DescribeAccountResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeAccountResponse'
            <$> (x .?> "DedicatedTenancySupport")
            <*> (x .?> "DedicatedTenancyManagementCidrRange")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccount

instance NFData DescribeAccount

instance ToHeaders DescribeAccount where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkspacesService.DescribeAccount" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAccount where
  toJSON = const (Object mempty)

instance ToPath DescribeAccount where
  toPath = const "/"

instance ToQuery DescribeAccount where
  toQuery = const mempty

-- | /See:/ 'describeAccountResponse' smart constructor.
data DescribeAccountResponse = DescribeAccountResponse'
  { _darrsDedicatedTenancySupport ::
      !( Maybe
           DedicatedTenancySupportResultEnum
       ),
    _darrsDedicatedTenancyManagementCidrRange ::
      !(Maybe Text),
    _darrsResponseStatus ::
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

-- | Creates a value of 'DescribeAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsDedicatedTenancySupport' - The status of BYOL (whether BYOL is enabled or disabled).
--
-- * 'darrsDedicatedTenancyManagementCidrRange' - The IP address range, specified as an IPv4 CIDR block, used for the management network interface. The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeAccountResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeAccountResponse
describeAccountResponse pResponseStatus_ =
  DescribeAccountResponse'
    { _darrsDedicatedTenancySupport =
        Nothing,
      _darrsDedicatedTenancyManagementCidrRange =
        Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | The status of BYOL (whether BYOL is enabled or disabled).
darrsDedicatedTenancySupport :: Lens' DescribeAccountResponse (Maybe DedicatedTenancySupportResultEnum)
darrsDedicatedTenancySupport = lens _darrsDedicatedTenancySupport (\s a -> s {_darrsDedicatedTenancySupport = a})

-- | The IP address range, specified as an IPv4 CIDR block, used for the management network interface. The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.
darrsDedicatedTenancyManagementCidrRange :: Lens' DescribeAccountResponse (Maybe Text)
darrsDedicatedTenancyManagementCidrRange = lens _darrsDedicatedTenancyManagementCidrRange (\s a -> s {_darrsDedicatedTenancyManagementCidrRange = a})

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeAccountResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeAccountResponse
