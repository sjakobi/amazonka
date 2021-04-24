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
-- Module      : Network.AWS.ResourceGroups.UngroupResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified resources from the specified group.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:UngroupResources@
module Network.AWS.ResourceGroups.UngroupResources
  ( -- * Creating a Request
    ungroupResources,
    UngroupResources,

    -- * Request Lenses
    urGroup,
    urResourceARNs,

    -- * Destructuring the Response
    ungroupResourcesResponse,
    UngroupResourcesResponse,

    -- * Response Lenses
    urrrsSucceeded,
    urrrsPending,
    urrrsFailed,
    urrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'ungroupResources' smart constructor.
data UngroupResources = UngroupResources'
  { _urGroup ::
      !Text,
    _urResourceARNs :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UngroupResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urGroup' - The name or the ARN of the resource group from which to remove the resources.
--
-- * 'urResourceARNs' - The ARNs of the resources to be removed from the group.
ungroupResources ::
  -- | 'urGroup'
  Text ->
  -- | 'urResourceARNs'
  NonEmpty Text ->
  UngroupResources
ungroupResources pGroup_ pResourceARNs_ =
  UngroupResources'
    { _urGroup = pGroup_,
      _urResourceARNs = _List1 # pResourceARNs_
    }

-- | The name or the ARN of the resource group from which to remove the resources.
urGroup :: Lens' UngroupResources Text
urGroup = lens _urGroup (\s a -> s {_urGroup = a})

-- | The ARNs of the resources to be removed from the group.
urResourceARNs :: Lens' UngroupResources (NonEmpty Text)
urResourceARNs = lens _urResourceARNs (\s a -> s {_urResourceARNs = a}) . _List1

instance AWSRequest UngroupResources where
  type Rs UngroupResources = UngroupResourcesResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          UngroupResourcesResponse'
            <$> (x .?> "Succeeded")
            <*> (x .?> "Pending" .!@ mempty)
            <*> (x .?> "Failed" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UngroupResources

instance NFData UngroupResources

instance ToHeaders UngroupResources where
  toHeaders = const mempty

instance ToJSON UngroupResources where
  toJSON UngroupResources' {..} =
    object
      ( catMaybes
          [ Just ("Group" .= _urGroup),
            Just ("ResourceArns" .= _urResourceARNs)
          ]
      )

instance ToPath UngroupResources where
  toPath = const "/ungroup-resources"

instance ToQuery UngroupResources where
  toQuery = const mempty

-- | /See:/ 'ungroupResourcesResponse' smart constructor.
data UngroupResourcesResponse = UngroupResourcesResponse'
  { _urrrsSucceeded ::
      !(Maybe (List1 Text)),
    _urrrsPending ::
      !( Maybe
           [PendingResource]
       ),
    _urrrsFailed ::
      !( Maybe
           [FailedResource]
       ),
    _urrrsResponseStatus ::
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

-- | Creates a value of 'UngroupResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrrsSucceeded' - A list of resources that were successfully removed from the group by this operation.
--
-- * 'urrrsPending' - A list of any resources that are still in the process of being removed from the group by this operation. These pending removals continue asynchronously. You can check the status of pending removals by using the @'ListGroupResources' @ operation. After the resource is successfully removed, it no longer appears in the response.
--
-- * 'urrrsFailed' - A list of any resources that failed to be removed from the group by this operation.
--
-- * 'urrrsResponseStatus' - -- | The response status code.
ungroupResourcesResponse ::
  -- | 'urrrsResponseStatus'
  Int ->
  UngroupResourcesResponse
ungroupResourcesResponse pResponseStatus_ =
  UngroupResourcesResponse'
    { _urrrsSucceeded =
        Nothing,
      _urrrsPending = Nothing,
      _urrrsFailed = Nothing,
      _urrrsResponseStatus = pResponseStatus_
    }

-- | A list of resources that were successfully removed from the group by this operation.
urrrsSucceeded :: Lens' UngroupResourcesResponse (Maybe (NonEmpty Text))
urrrsSucceeded = lens _urrrsSucceeded (\s a -> s {_urrrsSucceeded = a}) . mapping _List1

-- | A list of any resources that are still in the process of being removed from the group by this operation. These pending removals continue asynchronously. You can check the status of pending removals by using the @'ListGroupResources' @ operation. After the resource is successfully removed, it no longer appears in the response.
urrrsPending :: Lens' UngroupResourcesResponse [PendingResource]
urrrsPending = lens _urrrsPending (\s a -> s {_urrrsPending = a}) . _Default . _Coerce

-- | A list of any resources that failed to be removed from the group by this operation.
urrrsFailed :: Lens' UngroupResourcesResponse [FailedResource]
urrrsFailed = lens _urrrsFailed (\s a -> s {_urrrsFailed = a}) . _Default . _Coerce

-- | -- | The response status code.
urrrsResponseStatus :: Lens' UngroupResourcesResponse Int
urrrsResponseStatus = lens _urrrsResponseStatus (\s a -> s {_urrrsResponseStatus = a})

instance NFData UngroupResourcesResponse
