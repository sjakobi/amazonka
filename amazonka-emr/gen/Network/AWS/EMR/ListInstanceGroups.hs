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
-- Module      : Network.AWS.EMR.ListInstanceGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides all available details about the instance groups in a cluster.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListInstanceGroups
  ( -- * Creating a Request
    listInstanceGroups,
    ListInstanceGroups,

    -- * Request Lenses
    ligMarker,
    ligClusterId,

    -- * Destructuring the Response
    listInstanceGroupsResponse,
    ListInstanceGroupsResponse,

    -- * Response Lenses
    ligrrsInstanceGroups,
    ligrrsMarker,
    ligrrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | This input determines which instance groups to retrieve.
--
--
--
-- /See:/ 'listInstanceGroups' smart constructor.
data ListInstanceGroups = ListInstanceGroups'
  { _ligMarker ::
      !(Maybe Text),
    _ligClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInstanceGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ligMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'ligClusterId' - The identifier of the cluster for which to list the instance groups.
listInstanceGroups ::
  -- | 'ligClusterId'
  Text ->
  ListInstanceGroups
listInstanceGroups pClusterId_ =
  ListInstanceGroups'
    { _ligMarker = Nothing,
      _ligClusterId = pClusterId_
    }

-- | The pagination token that indicates the next set of results to retrieve.
ligMarker :: Lens' ListInstanceGroups (Maybe Text)
ligMarker = lens _ligMarker (\s a -> s {_ligMarker = a})

-- | The identifier of the cluster for which to list the instance groups.
ligClusterId :: Lens' ListInstanceGroups Text
ligClusterId = lens _ligClusterId (\s a -> s {_ligClusterId = a})

instance AWSPager ListInstanceGroups where
  page rq rs
    | stop (rs ^. ligrrsMarker) = Nothing
    | stop (rs ^. ligrrsInstanceGroups) = Nothing
    | otherwise =
      Just $ rq & ligMarker .~ rs ^. ligrrsMarker

instance AWSRequest ListInstanceGroups where
  type
    Rs ListInstanceGroups =
      ListInstanceGroupsResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          ListInstanceGroupsResponse'
            <$> (x .?> "InstanceGroups" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListInstanceGroups

instance NFData ListInstanceGroups

instance ToHeaders ListInstanceGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ElasticMapReduce.ListInstanceGroups" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListInstanceGroups where
  toJSON ListInstanceGroups' {..} =
    object
      ( catMaybes
          [ ("Marker" .=) <$> _ligMarker,
            Just ("ClusterId" .= _ligClusterId)
          ]
      )

instance ToPath ListInstanceGroups where
  toPath = const "/"

instance ToQuery ListInstanceGroups where
  toQuery = const mempty

-- | This input determines which instance groups to retrieve.
--
--
--
-- /See:/ 'listInstanceGroupsResponse' smart constructor.
data ListInstanceGroupsResponse = ListInstanceGroupsResponse'
  { _ligrrsInstanceGroups ::
      !( Maybe
           [InstanceGroup]
       ),
    _ligrrsMarker ::
      !(Maybe Text),
    _ligrrsResponseStatus ::
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

-- | Creates a value of 'ListInstanceGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ligrrsInstanceGroups' - The list of instance groups for the cluster and given filters.
--
-- * 'ligrrsMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'ligrrsResponseStatus' - -- | The response status code.
listInstanceGroupsResponse ::
  -- | 'ligrrsResponseStatus'
  Int ->
  ListInstanceGroupsResponse
listInstanceGroupsResponse pResponseStatus_ =
  ListInstanceGroupsResponse'
    { _ligrrsInstanceGroups =
        Nothing,
      _ligrrsMarker = Nothing,
      _ligrrsResponseStatus = pResponseStatus_
    }

-- | The list of instance groups for the cluster and given filters.
ligrrsInstanceGroups :: Lens' ListInstanceGroupsResponse [InstanceGroup]
ligrrsInstanceGroups = lens _ligrrsInstanceGroups (\s a -> s {_ligrrsInstanceGroups = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
ligrrsMarker :: Lens' ListInstanceGroupsResponse (Maybe Text)
ligrrsMarker = lens _ligrrsMarker (\s a -> s {_ligrrsMarker = a})

-- | -- | The response status code.
ligrrsResponseStatus :: Lens' ListInstanceGroupsResponse Int
ligrrsResponseStatus = lens _ligrrsResponseStatus (\s a -> s {_ligrrsResponseStatus = a})

instance NFData ListInstanceGroupsResponse
