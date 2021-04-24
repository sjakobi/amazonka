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
-- Module      : Network.AWS.Greengrass.DisassociateServiceRoleFromAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the service role from your account. Without a service role, deployments will not work.
module Network.AWS.Greengrass.DisassociateServiceRoleFromAccount
  ( -- * Creating a Request
    disassociateServiceRoleFromAccount,
    DisassociateServiceRoleFromAccount,

    -- * Destructuring the Response
    disassociateServiceRoleFromAccountResponse,
    DisassociateServiceRoleFromAccountResponse,

    -- * Response Lenses
    dsrfarrsDisassociatedAt,
    dsrfarrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disassociateServiceRoleFromAccount' smart constructor.
data DisassociateServiceRoleFromAccount = DisassociateServiceRoleFromAccount'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisassociateServiceRoleFromAccount' with the minimum fields required to make a request.
disassociateServiceRoleFromAccount ::
  DisassociateServiceRoleFromAccount
disassociateServiceRoleFromAccount =
  DisassociateServiceRoleFromAccount'

instance
  AWSRequest
    DisassociateServiceRoleFromAccount
  where
  type
    Rs DisassociateServiceRoleFromAccount =
      DisassociateServiceRoleFromAccountResponse
  request = delete greengrass
  response =
    receiveJSON
      ( \s h x ->
          DisassociateServiceRoleFromAccountResponse'
            <$> (x .?> "DisassociatedAt") <*> (pure (fromEnum s))
      )

instance Hashable DisassociateServiceRoleFromAccount

instance NFData DisassociateServiceRoleFromAccount

instance ToHeaders DisassociateServiceRoleFromAccount where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DisassociateServiceRoleFromAccount where
  toPath = const "/greengrass/servicerole"

instance ToQuery DisassociateServiceRoleFromAccount where
  toQuery = const mempty

-- | /See:/ 'disassociateServiceRoleFromAccountResponse' smart constructor.
data DisassociateServiceRoleFromAccountResponse = DisassociateServiceRoleFromAccountResponse'
  { _dsrfarrsDisassociatedAt ::
      !( Maybe
           Text
       ),
    _dsrfarrsResponseStatus ::
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

-- | Creates a value of 'DisassociateServiceRoleFromAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrfarrsDisassociatedAt' - The time when the service role was disassociated from the account.
--
-- * 'dsrfarrsResponseStatus' - -- | The response status code.
disassociateServiceRoleFromAccountResponse ::
  -- | 'dsrfarrsResponseStatus'
  Int ->
  DisassociateServiceRoleFromAccountResponse
disassociateServiceRoleFromAccountResponse
  pResponseStatus_ =
    DisassociateServiceRoleFromAccountResponse'
      { _dsrfarrsDisassociatedAt =
          Nothing,
        _dsrfarrsResponseStatus =
          pResponseStatus_
      }

-- | The time when the service role was disassociated from the account.
dsrfarrsDisassociatedAt :: Lens' DisassociateServiceRoleFromAccountResponse (Maybe Text)
dsrfarrsDisassociatedAt = lens _dsrfarrsDisassociatedAt (\s a -> s {_dsrfarrsDisassociatedAt = a})

-- | -- | The response status code.
dsrfarrsResponseStatus :: Lens' DisassociateServiceRoleFromAccountResponse Int
dsrfarrsResponseStatus = lens _dsrfarrsResponseStatus (\s a -> s {_dsrfarrsResponseStatus = a})

instance
  NFData
    DisassociateServiceRoleFromAccountResponse
