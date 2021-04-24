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
-- Module      : Network.AWS.Greengrass.GetServiceRoleForAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the service role that is attached to your account.
module Network.AWS.Greengrass.GetServiceRoleForAccount
  ( -- * Creating a Request
    getServiceRoleForAccount,
    GetServiceRoleForAccount,

    -- * Destructuring the Response
    getServiceRoleForAccountResponse,
    GetServiceRoleForAccountResponse,

    -- * Response Lenses
    gsrfarrsRoleARN,
    gsrfarrsAssociatedAt,
    gsrfarrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getServiceRoleForAccount' smart constructor.
data GetServiceRoleForAccount = GetServiceRoleForAccount'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetServiceRoleForAccount' with the minimum fields required to make a request.
getServiceRoleForAccount ::
  GetServiceRoleForAccount
getServiceRoleForAccount = GetServiceRoleForAccount'

instance AWSRequest GetServiceRoleForAccount where
  type
    Rs GetServiceRoleForAccount =
      GetServiceRoleForAccountResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetServiceRoleForAccountResponse'
            <$> (x .?> "RoleArn")
            <*> (x .?> "AssociatedAt")
            <*> (pure (fromEnum s))
      )

instance Hashable GetServiceRoleForAccount

instance NFData GetServiceRoleForAccount

instance ToHeaders GetServiceRoleForAccount where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetServiceRoleForAccount where
  toPath = const "/greengrass/servicerole"

instance ToQuery GetServiceRoleForAccount where
  toQuery = const mempty

-- | /See:/ 'getServiceRoleForAccountResponse' smart constructor.
data GetServiceRoleForAccountResponse = GetServiceRoleForAccountResponse'
  { _gsrfarrsRoleARN ::
      !( Maybe
           Text
       ),
    _gsrfarrsAssociatedAt ::
      !( Maybe
           Text
       ),
    _gsrfarrsResponseStatus ::
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

-- | Creates a value of 'GetServiceRoleForAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrfarrsRoleARN' - The ARN of the role which is associated with the account.
--
-- * 'gsrfarrsAssociatedAt' - The time when the service role was associated with the account.
--
-- * 'gsrfarrsResponseStatus' - -- | The response status code.
getServiceRoleForAccountResponse ::
  -- | 'gsrfarrsResponseStatus'
  Int ->
  GetServiceRoleForAccountResponse
getServiceRoleForAccountResponse pResponseStatus_ =
  GetServiceRoleForAccountResponse'
    { _gsrfarrsRoleARN =
        Nothing,
      _gsrfarrsAssociatedAt = Nothing,
      _gsrfarrsResponseStatus =
        pResponseStatus_
    }

-- | The ARN of the role which is associated with the account.
gsrfarrsRoleARN :: Lens' GetServiceRoleForAccountResponse (Maybe Text)
gsrfarrsRoleARN = lens _gsrfarrsRoleARN (\s a -> s {_gsrfarrsRoleARN = a})

-- | The time when the service role was associated with the account.
gsrfarrsAssociatedAt :: Lens' GetServiceRoleForAccountResponse (Maybe Text)
gsrfarrsAssociatedAt = lens _gsrfarrsAssociatedAt (\s a -> s {_gsrfarrsAssociatedAt = a})

-- | -- | The response status code.
gsrfarrsResponseStatus :: Lens' GetServiceRoleForAccountResponse Int
gsrfarrsResponseStatus = lens _gsrfarrsResponseStatus (\s a -> s {_gsrfarrsResponseStatus = a})

instance NFData GetServiceRoleForAccountResponse
