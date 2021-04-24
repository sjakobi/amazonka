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
-- Module      : Network.AWS.Inspector.DescribeResourceGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the resource groups that are specified by the ARNs of the resource groups.
module Network.AWS.Inspector.DescribeResourceGroups
  ( -- * Creating a Request
    describeResourceGroups,
    DescribeResourceGroups,

    -- * Request Lenses
    drgResourceGroupARNs,

    -- * Destructuring the Response
    describeResourceGroupsResponse,
    DescribeResourceGroupsResponse,

    -- * Response Lenses
    drgrrsResponseStatus,
    drgrrsResourceGroups,
    drgrrsFailedItems,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeResourceGroups' smart constructor.
newtype DescribeResourceGroups = DescribeResourceGroups'
  { _drgResourceGroupARNs ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeResourceGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgResourceGroupARNs' - The ARN that specifies the resource group that you want to describe.
describeResourceGroups ::
  -- | 'drgResourceGroupARNs'
  NonEmpty Text ->
  DescribeResourceGroups
describeResourceGroups pResourceGroupARNs_ =
  DescribeResourceGroups'
    { _drgResourceGroupARNs =
        _List1 # pResourceGroupARNs_
    }

-- | The ARN that specifies the resource group that you want to describe.
drgResourceGroupARNs :: Lens' DescribeResourceGroups (NonEmpty Text)
drgResourceGroupARNs = lens _drgResourceGroupARNs (\s a -> s {_drgResourceGroupARNs = a}) . _List1

instance AWSRequest DescribeResourceGroups where
  type
    Rs DescribeResourceGroups =
      DescribeResourceGroupsResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          DescribeResourceGroupsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "resourceGroups" .!@ mempty)
            <*> (x .?> "failedItems" .!@ mempty)
      )

instance Hashable DescribeResourceGroups

instance NFData DescribeResourceGroups

instance ToHeaders DescribeResourceGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.DescribeResourceGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeResourceGroups where
  toJSON DescribeResourceGroups' {..} =
    object
      ( catMaybes
          [ Just
              ("resourceGroupArns" .= _drgResourceGroupARNs)
          ]
      )

instance ToPath DescribeResourceGroups where
  toPath = const "/"

instance ToQuery DescribeResourceGroups where
  toQuery = const mempty

-- | /See:/ 'describeResourceGroupsResponse' smart constructor.
data DescribeResourceGroupsResponse = DescribeResourceGroupsResponse'
  { _drgrrsResponseStatus ::
      !Int,
    _drgrrsResourceGroups ::
      ![ResourceGroup],
    _drgrrsFailedItems ::
      !( Map
           Text
           FailedItemDetails
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeResourceGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drgrrsResponseStatus' - -- | The response status code.
--
-- * 'drgrrsResourceGroups' - Information about a resource group.
--
-- * 'drgrrsFailedItems' - Resource group details that cannot be described. An error code is provided for each failed item.
describeResourceGroupsResponse ::
  -- | 'drgrrsResponseStatus'
  Int ->
  DescribeResourceGroupsResponse
describeResourceGroupsResponse pResponseStatus_ =
  DescribeResourceGroupsResponse'
    { _drgrrsResponseStatus =
        pResponseStatus_,
      _drgrrsResourceGroups = mempty,
      _drgrrsFailedItems = mempty
    }

-- | -- | The response status code.
drgrrsResponseStatus :: Lens' DescribeResourceGroupsResponse Int
drgrrsResponseStatus = lens _drgrrsResponseStatus (\s a -> s {_drgrrsResponseStatus = a})

-- | Information about a resource group.
drgrrsResourceGroups :: Lens' DescribeResourceGroupsResponse [ResourceGroup]
drgrrsResourceGroups = lens _drgrrsResourceGroups (\s a -> s {_drgrrsResourceGroups = a}) . _Coerce

-- | Resource group details that cannot be described. An error code is provided for each failed item.
drgrrsFailedItems :: Lens' DescribeResourceGroupsResponse (HashMap Text FailedItemDetails)
drgrrsFailedItems = lens _drgrrsFailedItems (\s a -> s {_drgrrsFailedItems = a}) . _Map

instance NFData DescribeResourceGroupsResponse
