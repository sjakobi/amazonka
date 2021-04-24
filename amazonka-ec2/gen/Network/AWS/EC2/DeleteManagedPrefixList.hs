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
-- Module      : Network.AWS.EC2.DeleteManagedPrefixList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified managed prefix list. You must first remove all references to the prefix list in your resources.
module Network.AWS.EC2.DeleteManagedPrefixList
  ( -- * Creating a Request
    deleteManagedPrefixList,
    DeleteManagedPrefixList,

    -- * Request Lenses
    dmplmDryRun,
    dmplmPrefixListId,

    -- * Destructuring the Response
    deleteManagedPrefixListResponse,
    DeleteManagedPrefixListResponse,

    -- * Response Lenses
    dmplrrsPrefixList,
    dmplrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteManagedPrefixList' smart constructor.
data DeleteManagedPrefixList = DeleteManagedPrefixList'
  { _dmplmDryRun ::
      !(Maybe Bool),
    _dmplmPrefixListId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteManagedPrefixList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmplmDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dmplmPrefixListId' - The ID of the prefix list.
deleteManagedPrefixList ::
  -- | 'dmplmPrefixListId'
  Text ->
  DeleteManagedPrefixList
deleteManagedPrefixList pPrefixListId_ =
  DeleteManagedPrefixList'
    { _dmplmDryRun = Nothing,
      _dmplmPrefixListId = pPrefixListId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dmplmDryRun :: Lens' DeleteManagedPrefixList (Maybe Bool)
dmplmDryRun = lens _dmplmDryRun (\s a -> s {_dmplmDryRun = a})

-- | The ID of the prefix list.
dmplmPrefixListId :: Lens' DeleteManagedPrefixList Text
dmplmPrefixListId = lens _dmplmPrefixListId (\s a -> s {_dmplmPrefixListId = a})

instance AWSRequest DeleteManagedPrefixList where
  type
    Rs DeleteManagedPrefixList =
      DeleteManagedPrefixListResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteManagedPrefixListResponse'
            <$> (x .@? "prefixList") <*> (pure (fromEnum s))
      )

instance Hashable DeleteManagedPrefixList

instance NFData DeleteManagedPrefixList

instance ToHeaders DeleteManagedPrefixList where
  toHeaders = const mempty

instance ToPath DeleteManagedPrefixList where
  toPath = const "/"

instance ToQuery DeleteManagedPrefixList where
  toQuery DeleteManagedPrefixList' {..} =
    mconcat
      [ "Action"
          =: ("DeleteManagedPrefixList" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dmplmDryRun,
        "PrefixListId" =: _dmplmPrefixListId
      ]

-- | /See:/ 'deleteManagedPrefixListResponse' smart constructor.
data DeleteManagedPrefixListResponse = DeleteManagedPrefixListResponse'
  { _dmplrrsPrefixList ::
      !( Maybe
           ManagedPrefixList
       ),
    _dmplrrsResponseStatus ::
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

-- | Creates a value of 'DeleteManagedPrefixListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmplrrsPrefixList' - Information about the prefix list.
--
-- * 'dmplrrsResponseStatus' - -- | The response status code.
deleteManagedPrefixListResponse ::
  -- | 'dmplrrsResponseStatus'
  Int ->
  DeleteManagedPrefixListResponse
deleteManagedPrefixListResponse pResponseStatus_ =
  DeleteManagedPrefixListResponse'
    { _dmplrrsPrefixList =
        Nothing,
      _dmplrrsResponseStatus = pResponseStatus_
    }

-- | Information about the prefix list.
dmplrrsPrefixList :: Lens' DeleteManagedPrefixListResponse (Maybe ManagedPrefixList)
dmplrrsPrefixList = lens _dmplrrsPrefixList (\s a -> s {_dmplrrsPrefixList = a})

-- | -- | The response status code.
dmplrrsResponseStatus :: Lens' DeleteManagedPrefixListResponse Int
dmplrrsResponseStatus = lens _dmplrrsResponseStatus (\s a -> s {_dmplrrsResponseStatus = a})

instance NFData DeleteManagedPrefixListResponse
