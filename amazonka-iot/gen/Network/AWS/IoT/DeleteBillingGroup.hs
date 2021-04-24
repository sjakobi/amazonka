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
-- Module      : Network.AWS.IoT.DeleteBillingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the billing group.
module Network.AWS.IoT.DeleteBillingGroup
  ( -- * Creating a Request
    deleteBillingGroup,
    DeleteBillingGroup,

    -- * Request Lenses
    dbgExpectedVersion,
    dbgBillingGroupName,

    -- * Destructuring the Response
    deleteBillingGroupResponse,
    DeleteBillingGroupResponse,

    -- * Response Lenses
    dbgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteBillingGroup' smart constructor.
data DeleteBillingGroup = DeleteBillingGroup'
  { _dbgExpectedVersion ::
      !(Maybe Integer),
    _dbgBillingGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBillingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbgExpectedVersion' - The expected version of the billing group. If the version of the billing group does not match the expected version specified in the request, the @DeleteBillingGroup@ request is rejected with a @VersionConflictException@ .
--
-- * 'dbgBillingGroupName' - The name of the billing group.
deleteBillingGroup ::
  -- | 'dbgBillingGroupName'
  Text ->
  DeleteBillingGroup
deleteBillingGroup pBillingGroupName_ =
  DeleteBillingGroup'
    { _dbgExpectedVersion = Nothing,
      _dbgBillingGroupName = pBillingGroupName_
    }

-- | The expected version of the billing group. If the version of the billing group does not match the expected version specified in the request, the @DeleteBillingGroup@ request is rejected with a @VersionConflictException@ .
dbgExpectedVersion :: Lens' DeleteBillingGroup (Maybe Integer)
dbgExpectedVersion = lens _dbgExpectedVersion (\s a -> s {_dbgExpectedVersion = a})

-- | The name of the billing group.
dbgBillingGroupName :: Lens' DeleteBillingGroup Text
dbgBillingGroupName = lens _dbgBillingGroupName (\s a -> s {_dbgBillingGroupName = a})

instance AWSRequest DeleteBillingGroup where
  type
    Rs DeleteBillingGroup =
      DeleteBillingGroupResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteBillingGroupResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteBillingGroup

instance NFData DeleteBillingGroup

instance ToHeaders DeleteBillingGroup where
  toHeaders = const mempty

instance ToPath DeleteBillingGroup where
  toPath DeleteBillingGroup' {..} =
    mconcat
      ["/billing-groups/", toBS _dbgBillingGroupName]

instance ToQuery DeleteBillingGroup where
  toQuery DeleteBillingGroup' {..} =
    mconcat ["expectedVersion" =: _dbgExpectedVersion]

-- | /See:/ 'deleteBillingGroupResponse' smart constructor.
newtype DeleteBillingGroupResponse = DeleteBillingGroupResponse'
  { _dbgrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteBillingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbgrrsResponseStatus' - -- | The response status code.
deleteBillingGroupResponse ::
  -- | 'dbgrrsResponseStatus'
  Int ->
  DeleteBillingGroupResponse
deleteBillingGroupResponse pResponseStatus_ =
  DeleteBillingGroupResponse'
    { _dbgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dbgrrsResponseStatus :: Lens' DeleteBillingGroupResponse Int
dbgrrsResponseStatus = lens _dbgrrsResponseStatus (\s a -> s {_dbgrrsResponseStatus = a})

instance NFData DeleteBillingGroupResponse
