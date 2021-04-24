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
-- Module      : Network.AWS.EMR.ListInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListInstances
  ( -- * Creating a Request
    listInstances,
    ListInstances,

    -- * Request Lenses
    liInstanceFleetType,
    liInstanceGroupId,
    liInstanceStates,
    liInstanceFleetId,
    liInstanceGroupTypes,
    liMarker,
    liClusterId,

    -- * Destructuring the Response
    listInstancesResponse,
    ListInstancesResponse,

    -- * Response Lenses
    lirrsInstances,
    lirrsMarker,
    lirrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | This input determines which instances to list.
--
--
--
-- /See:/ 'listInstances' smart constructor.
data ListInstances = ListInstances'
  { _liInstanceFleetType ::
      !(Maybe InstanceFleetType),
    _liInstanceGroupId :: !(Maybe Text),
    _liInstanceStates ::
      !(Maybe [InstanceState]),
    _liInstanceFleetId :: !(Maybe Text),
    _liInstanceGroupTypes ::
      !(Maybe [InstanceGroupType]),
    _liMarker :: !(Maybe Text),
    _liClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liInstanceFleetType' - The node type of the instance fleet. For example MASTER, CORE, or TASK.
--
-- * 'liInstanceGroupId' - The identifier of the instance group for which to list the instances.
--
-- * 'liInstanceStates' - A list of instance states that will filter the instances returned with this request.
--
-- * 'liInstanceFleetId' - The unique identifier of the instance fleet.
--
-- * 'liInstanceGroupTypes' - The type of instance group for which to list the instances.
--
-- * 'liMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'liClusterId' - The identifier of the cluster for which to list the instances.
listInstances ::
  -- | 'liClusterId'
  Text ->
  ListInstances
listInstances pClusterId_ =
  ListInstances'
    { _liInstanceFleetType = Nothing,
      _liInstanceGroupId = Nothing,
      _liInstanceStates = Nothing,
      _liInstanceFleetId = Nothing,
      _liInstanceGroupTypes = Nothing,
      _liMarker = Nothing,
      _liClusterId = pClusterId_
    }

-- | The node type of the instance fleet. For example MASTER, CORE, or TASK.
liInstanceFleetType :: Lens' ListInstances (Maybe InstanceFleetType)
liInstanceFleetType = lens _liInstanceFleetType (\s a -> s {_liInstanceFleetType = a})

-- | The identifier of the instance group for which to list the instances.
liInstanceGroupId :: Lens' ListInstances (Maybe Text)
liInstanceGroupId = lens _liInstanceGroupId (\s a -> s {_liInstanceGroupId = a})

-- | A list of instance states that will filter the instances returned with this request.
liInstanceStates :: Lens' ListInstances [InstanceState]
liInstanceStates = lens _liInstanceStates (\s a -> s {_liInstanceStates = a}) . _Default . _Coerce

-- | The unique identifier of the instance fleet.
liInstanceFleetId :: Lens' ListInstances (Maybe Text)
liInstanceFleetId = lens _liInstanceFleetId (\s a -> s {_liInstanceFleetId = a})

-- | The type of instance group for which to list the instances.
liInstanceGroupTypes :: Lens' ListInstances [InstanceGroupType]
liInstanceGroupTypes = lens _liInstanceGroupTypes (\s a -> s {_liInstanceGroupTypes = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
liMarker :: Lens' ListInstances (Maybe Text)
liMarker = lens _liMarker (\s a -> s {_liMarker = a})

-- | The identifier of the cluster for which to list the instances.
liClusterId :: Lens' ListInstances Text
liClusterId = lens _liClusterId (\s a -> s {_liClusterId = a})

instance AWSPager ListInstances where
  page rq rs
    | stop (rs ^. lirrsMarker) = Nothing
    | stop (rs ^. lirrsInstances) = Nothing
    | otherwise =
      Just $ rq & liMarker .~ rs ^. lirrsMarker

instance AWSRequest ListInstances where
  type Rs ListInstances = ListInstancesResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          ListInstancesResponse'
            <$> (x .?> "Instances" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListInstances

instance NFData ListInstances

instance ToHeaders ListInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.ListInstances" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListInstances where
  toJSON ListInstances' {..} =
    object
      ( catMaybes
          [ ("InstanceFleetType" .=) <$> _liInstanceFleetType,
            ("InstanceGroupId" .=) <$> _liInstanceGroupId,
            ("InstanceStates" .=) <$> _liInstanceStates,
            ("InstanceFleetId" .=) <$> _liInstanceFleetId,
            ("InstanceGroupTypes" .=) <$> _liInstanceGroupTypes,
            ("Marker" .=) <$> _liMarker,
            Just ("ClusterId" .= _liClusterId)
          ]
      )

instance ToPath ListInstances where
  toPath = const "/"

instance ToQuery ListInstances where
  toQuery = const mempty

-- | This output contains the list of instances.
--
--
--
-- /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse'
  { _lirrsInstances ::
      !(Maybe [Instance]),
    _lirrsMarker ::
      !(Maybe Text),
    _lirrsResponseStatus ::
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

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsInstances' - The list of instances for the cluster and given filters.
--
-- * 'lirrsMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listInstancesResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListInstancesResponse
listInstancesResponse pResponseStatus_ =
  ListInstancesResponse'
    { _lirrsInstances = Nothing,
      _lirrsMarker = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | The list of instances for the cluster and given filters.
lirrsInstances :: Lens' ListInstancesResponse [Instance]
lirrsInstances = lens _lirrsInstances (\s a -> s {_lirrsInstances = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
lirrsMarker :: Lens' ListInstancesResponse (Maybe Text)
lirrsMarker = lens _lirrsMarker (\s a -> s {_lirrsMarker = a})

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListInstancesResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListInstancesResponse
