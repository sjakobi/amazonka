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
-- Module      : Network.AWS.Organizations.DescribeAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves AWS Organizations-related information about the specified account.
--
--
-- This operation can be called only from the organization's management account or by a member account that is a delegated administrator for an AWS service.
module Network.AWS.Organizations.DescribeAccount
  ( -- * Creating a Request
    describeAccount,
    DescribeAccount,

    -- * Request Lenses
    daAccountId,

    -- * Destructuring the Response
    describeAccountResponse,
    DescribeAccountResponse,

    -- * Response Lenses
    darrsAccount,
    darrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAccount' smart constructor.
newtype DescribeAccount = DescribeAccount'
  { _daAccountId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daAccountId' - The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the 'ListAccounts' or 'ListAccountsForParent' operations. The <http://wikipedia.org/wiki/regex regex pattern> for an account ID string requires exactly 12 digits.
describeAccount ::
  -- | 'daAccountId'
  Text ->
  DescribeAccount
describeAccount pAccountId_ =
  DescribeAccount' {_daAccountId = pAccountId_}

-- | The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the 'ListAccounts' or 'ListAccountsForParent' operations. The <http://wikipedia.org/wiki/regex regex pattern> for an account ID string requires exactly 12 digits.
daAccountId :: Lens' DescribeAccount Text
daAccountId = lens _daAccountId (\s a -> s {_daAccountId = a})

instance AWSRequest DescribeAccount where
  type Rs DescribeAccount = DescribeAccountResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          DescribeAccountResponse'
            <$> (x .?> "Account") <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccount

instance NFData DescribeAccount

instance ToHeaders DescribeAccount where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.DescribeAccount" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAccount where
  toJSON DescribeAccount' {..} =
    object
      (catMaybes [Just ("AccountId" .= _daAccountId)])

instance ToPath DescribeAccount where
  toPath = const "/"

instance ToQuery DescribeAccount where
  toQuery = const mempty

-- | /See:/ 'describeAccountResponse' smart constructor.
data DescribeAccountResponse = DescribeAccountResponse'
  { _darrsAccount ::
      !(Maybe Account),
    _darrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsAccount' - A structure that contains information about the requested account.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeAccountResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeAccountResponse
describeAccountResponse pResponseStatus_ =
  DescribeAccountResponse'
    { _darrsAccount = Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | A structure that contains information about the requested account.
darrsAccount :: Lens' DescribeAccountResponse (Maybe Account)
darrsAccount = lens _darrsAccount (\s a -> s {_darrsAccount = a})

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeAccountResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeAccountResponse
