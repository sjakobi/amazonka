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
-- Module      : Network.AWS.ResourceGroups.GroupResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds the specified resources to the specified group.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:GroupResources@
module Network.AWS.ResourceGroups.GroupResources
  ( -- * Creating a Request
    groupResources,
    GroupResources,

    -- * Request Lenses
    grGroup,
    grResourceARNs,

    -- * Destructuring the Response
    groupResourcesResponse,
    GroupResourcesResponse,

    -- * Response Lenses
    grrrsSucceeded,
    grrrsPending,
    grrrsFailed,
    grrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'groupResources' smart constructor.
data GroupResources = GroupResources'
  { _grGroup ::
      !Text,
    _grResourceARNs :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grGroup' - The name or the ARN of the resource group to add resources to.
--
-- * 'grResourceARNs' - The list of ARNs for resources to be added to the group.
groupResources ::
  -- | 'grGroup'
  Text ->
  -- | 'grResourceARNs'
  NonEmpty Text ->
  GroupResources
groupResources pGroup_ pResourceARNs_ =
  GroupResources'
    { _grGroup = pGroup_,
      _grResourceARNs = _List1 # pResourceARNs_
    }

-- | The name or the ARN of the resource group to add resources to.
grGroup :: Lens' GroupResources Text
grGroup = lens _grGroup (\s a -> s {_grGroup = a})

-- | The list of ARNs for resources to be added to the group.
grResourceARNs :: Lens' GroupResources (NonEmpty Text)
grResourceARNs = lens _grResourceARNs (\s a -> s {_grResourceARNs = a}) . _List1

instance AWSRequest GroupResources where
  type Rs GroupResources = GroupResourcesResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          GroupResourcesResponse'
            <$> (x .?> "Succeeded")
            <*> (x .?> "Pending" .!@ mempty)
            <*> (x .?> "Failed" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GroupResources

instance NFData GroupResources

instance ToHeaders GroupResources where
  toHeaders = const mempty

instance ToJSON GroupResources where
  toJSON GroupResources' {..} =
    object
      ( catMaybes
          [ Just ("Group" .= _grGroup),
            Just ("ResourceArns" .= _grResourceARNs)
          ]
      )

instance ToPath GroupResources where
  toPath = const "/group-resources"

instance ToQuery GroupResources where
  toQuery = const mempty

-- | /See:/ 'groupResourcesResponse' smart constructor.
data GroupResourcesResponse = GroupResourcesResponse'
  { _grrrsSucceeded ::
      !(Maybe (List1 Text)),
    _grrrsPending ::
      !( Maybe
           [PendingResource]
       ),
    _grrrsFailed ::
      !(Maybe [FailedResource]),
    _grrrsResponseStatus ::
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

-- | Creates a value of 'GroupResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrsSucceeded' - A list of ARNs of resources that were successfully added to the group by this operation.
--
-- * 'grrrsPending' - A list of ARNs of any resources that are still in the process of being added to the group by this operation. These pending additions continue asynchronously. You can check the status of pending additions by using the @'ListGroupResources' @ operation, and checking the @Resources@ array in the response and the @Status@ field of each object in that array.
--
-- * 'grrrsFailed' - A list of ARNs of any resources that failed to be added to the group by this operation.
--
-- * 'grrrsResponseStatus' - -- | The response status code.
groupResourcesResponse ::
  -- | 'grrrsResponseStatus'
  Int ->
  GroupResourcesResponse
groupResourcesResponse pResponseStatus_ =
  GroupResourcesResponse'
    { _grrrsSucceeded = Nothing,
      _grrrsPending = Nothing,
      _grrrsFailed = Nothing,
      _grrrsResponseStatus = pResponseStatus_
    }

-- | A list of ARNs of resources that were successfully added to the group by this operation.
grrrsSucceeded :: Lens' GroupResourcesResponse (Maybe (NonEmpty Text))
grrrsSucceeded = lens _grrrsSucceeded (\s a -> s {_grrrsSucceeded = a}) . mapping _List1

-- | A list of ARNs of any resources that are still in the process of being added to the group by this operation. These pending additions continue asynchronously. You can check the status of pending additions by using the @'ListGroupResources' @ operation, and checking the @Resources@ array in the response and the @Status@ field of each object in that array.
grrrsPending :: Lens' GroupResourcesResponse [PendingResource]
grrrsPending = lens _grrrsPending (\s a -> s {_grrrsPending = a}) . _Default . _Coerce

-- | A list of ARNs of any resources that failed to be added to the group by this operation.
grrrsFailed :: Lens' GroupResourcesResponse [FailedResource]
grrrsFailed = lens _grrrsFailed (\s a -> s {_grrrsFailed = a}) . _Default . _Coerce

-- | -- | The response status code.
grrrsResponseStatus :: Lens' GroupResourcesResponse Int
grrrsResponseStatus = lens _grrrsResponseStatus (\s a -> s {_grrrsResponseStatus = a})

instance NFData GroupResourcesResponse
