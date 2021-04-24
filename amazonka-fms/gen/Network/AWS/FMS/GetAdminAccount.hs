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
-- Module      : Network.AWS.FMS.GetAdminAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.
module Network.AWS.FMS.GetAdminAccount
  ( -- * Creating a Request
    getAdminAccount,
    GetAdminAccount,

    -- * Destructuring the Response
    getAdminAccountResponse,
    GetAdminAccountResponse,

    -- * Response Lenses
    gaarrsAdminAccount,
    gaarrsRoleStatus,
    gaarrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAdminAccount' smart constructor.
data GetAdminAccount = GetAdminAccount'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAdminAccount' with the minimum fields required to make a request.
getAdminAccount ::
  GetAdminAccount
getAdminAccount = GetAdminAccount'

instance AWSRequest GetAdminAccount where
  type Rs GetAdminAccount = GetAdminAccountResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          GetAdminAccountResponse'
            <$> (x .?> "AdminAccount")
            <*> (x .?> "RoleStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAdminAccount

instance NFData GetAdminAccount

instance ToHeaders GetAdminAccount where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSFMS_20180101.GetAdminAccount" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAdminAccount where
  toJSON = const (Object mempty)

instance ToPath GetAdminAccount where
  toPath = const "/"

instance ToQuery GetAdminAccount where
  toQuery = const mempty

-- | /See:/ 'getAdminAccountResponse' smart constructor.
data GetAdminAccountResponse = GetAdminAccountResponse'
  { _gaarrsAdminAccount ::
      !(Maybe Text),
    _gaarrsRoleStatus ::
      !( Maybe
           AccountRoleStatus
       ),
    _gaarrsResponseStatus ::
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

-- | Creates a value of 'GetAdminAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaarrsAdminAccount' - The AWS account that is set as the AWS Firewall Manager administrator.
--
-- * 'gaarrsRoleStatus' - The status of the AWS account that you set as the AWS Firewall Manager administrator.
--
-- * 'gaarrsResponseStatus' - -- | The response status code.
getAdminAccountResponse ::
  -- | 'gaarrsResponseStatus'
  Int ->
  GetAdminAccountResponse
getAdminAccountResponse pResponseStatus_ =
  GetAdminAccountResponse'
    { _gaarrsAdminAccount =
        Nothing,
      _gaarrsRoleStatus = Nothing,
      _gaarrsResponseStatus = pResponseStatus_
    }

-- | The AWS account that is set as the AWS Firewall Manager administrator.
gaarrsAdminAccount :: Lens' GetAdminAccountResponse (Maybe Text)
gaarrsAdminAccount = lens _gaarrsAdminAccount (\s a -> s {_gaarrsAdminAccount = a})

-- | The status of the AWS account that you set as the AWS Firewall Manager administrator.
gaarrsRoleStatus :: Lens' GetAdminAccountResponse (Maybe AccountRoleStatus)
gaarrsRoleStatus = lens _gaarrsRoleStatus (\s a -> s {_gaarrsRoleStatus = a})

-- | -- | The response status code.
gaarrsResponseStatus :: Lens' GetAdminAccountResponse Int
gaarrsResponseStatus = lens _gaarrsResponseStatus (\s a -> s {_gaarrsResponseStatus = a})

instance NFData GetAdminAccountResponse
