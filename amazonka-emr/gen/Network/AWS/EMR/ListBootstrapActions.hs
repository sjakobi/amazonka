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
-- Module      : Network.AWS.EMR.ListBootstrapActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about the bootstrap actions associated with a cluster.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EMR.ListBootstrapActions
  ( -- * Creating a Request
    listBootstrapActions,
    ListBootstrapActions,

    -- * Request Lenses
    lbaMarker,
    lbaClusterId,

    -- * Destructuring the Response
    listBootstrapActionsResponse,
    ListBootstrapActionsResponse,

    -- * Response Lenses
    lbarrsBootstrapActions,
    lbarrsMarker,
    lbarrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | This input determines which bootstrap actions to retrieve.
--
--
--
-- /See:/ 'listBootstrapActions' smart constructor.
data ListBootstrapActions = ListBootstrapActions'
  { _lbaMarker ::
      !(Maybe Text),
    _lbaClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBootstrapActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbaMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'lbaClusterId' - The cluster identifier for the bootstrap actions to list.
listBootstrapActions ::
  -- | 'lbaClusterId'
  Text ->
  ListBootstrapActions
listBootstrapActions pClusterId_ =
  ListBootstrapActions'
    { _lbaMarker = Nothing,
      _lbaClusterId = pClusterId_
    }

-- | The pagination token that indicates the next set of results to retrieve.
lbaMarker :: Lens' ListBootstrapActions (Maybe Text)
lbaMarker = lens _lbaMarker (\s a -> s {_lbaMarker = a})

-- | The cluster identifier for the bootstrap actions to list.
lbaClusterId :: Lens' ListBootstrapActions Text
lbaClusterId = lens _lbaClusterId (\s a -> s {_lbaClusterId = a})

instance AWSPager ListBootstrapActions where
  page rq rs
    | stop (rs ^. lbarrsMarker) = Nothing
    | stop (rs ^. lbarrsBootstrapActions) = Nothing
    | otherwise =
      Just $ rq & lbaMarker .~ rs ^. lbarrsMarker

instance AWSRequest ListBootstrapActions where
  type
    Rs ListBootstrapActions =
      ListBootstrapActionsResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          ListBootstrapActionsResponse'
            <$> (x .?> "BootstrapActions" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListBootstrapActions

instance NFData ListBootstrapActions

instance ToHeaders ListBootstrapActions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ElasticMapReduce.ListBootstrapActions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBootstrapActions where
  toJSON ListBootstrapActions' {..} =
    object
      ( catMaybes
          [ ("Marker" .=) <$> _lbaMarker,
            Just ("ClusterId" .= _lbaClusterId)
          ]
      )

instance ToPath ListBootstrapActions where
  toPath = const "/"

instance ToQuery ListBootstrapActions where
  toQuery = const mempty

-- | This output contains the bootstrap actions detail.
--
--
--
-- /See:/ 'listBootstrapActionsResponse' smart constructor.
data ListBootstrapActionsResponse = ListBootstrapActionsResponse'
  { _lbarrsBootstrapActions ::
      !( Maybe
           [Command]
       ),
    _lbarrsMarker ::
      !(Maybe Text),
    _lbarrsResponseStatus ::
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

-- | Creates a value of 'ListBootstrapActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbarrsBootstrapActions' - The bootstrap actions associated with the cluster.
--
-- * 'lbarrsMarker' - The pagination token that indicates the next set of results to retrieve.
--
-- * 'lbarrsResponseStatus' - -- | The response status code.
listBootstrapActionsResponse ::
  -- | 'lbarrsResponseStatus'
  Int ->
  ListBootstrapActionsResponse
listBootstrapActionsResponse pResponseStatus_ =
  ListBootstrapActionsResponse'
    { _lbarrsBootstrapActions =
        Nothing,
      _lbarrsMarker = Nothing,
      _lbarrsResponseStatus = pResponseStatus_
    }

-- | The bootstrap actions associated with the cluster.
lbarrsBootstrapActions :: Lens' ListBootstrapActionsResponse [Command]
lbarrsBootstrapActions = lens _lbarrsBootstrapActions (\s a -> s {_lbarrsBootstrapActions = a}) . _Default . _Coerce

-- | The pagination token that indicates the next set of results to retrieve.
lbarrsMarker :: Lens' ListBootstrapActionsResponse (Maybe Text)
lbarrsMarker = lens _lbarrsMarker (\s a -> s {_lbarrsMarker = a})

-- | -- | The response status code.
lbarrsResponseStatus :: Lens' ListBootstrapActionsResponse Int
lbarrsResponseStatus = lens _lbarrsResponseStatus (\s a -> s {_lbarrsResponseStatus = a})

instance NFData ListBootstrapActionsResponse
