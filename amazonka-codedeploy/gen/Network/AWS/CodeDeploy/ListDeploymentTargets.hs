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
-- Module      : Network.AWS.CodeDeploy.ListDeploymentTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of target IDs that are associated a deployment.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListDeploymentTargets
  ( -- * Creating a Request
    listDeploymentTargets,
    ListDeploymentTargets,

    -- * Request Lenses
    ldtDeploymentId,
    ldtNextToken,
    ldtTargetFilters,

    -- * Destructuring the Response
    listDeploymentTargetsResponse,
    ListDeploymentTargetsResponse,

    -- * Response Lenses
    ldtrrsTargetIds,
    ldtrrsNextToken,
    ldtrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDeploymentTargets' smart constructor.
data ListDeploymentTargets = ListDeploymentTargets'
  { _ldtDeploymentId ::
      !(Maybe Text),
    _ldtNextToken ::
      !(Maybe Text),
    _ldtTargetFilters ::
      !( Maybe
           ( Map
               TargetFilterName
               [Text]
           )
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

-- | Creates a value of 'ListDeploymentTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldtDeploymentId' - The unique ID of a deployment.
--
-- * 'ldtNextToken' - A token identifier returned from the previous @ListDeploymentTargets@ call. It can be used to return the next set of deployment targets in the list.
--
-- * 'ldtTargetFilters' - A key used to filter the returned targets. The two valid values are:     * @TargetStatus@ - A @TargetStatus@ filter string can be @Failed@ , @InProgress@ , @Pending@ , @Ready@ , @Skipped@ , @Succeeded@ , or @Unknown@ .      * @ServerInstanceLabel@ - A @ServerInstanceLabel@ filter string can be @Blue@ or @Green@ .
listDeploymentTargets ::
  ListDeploymentTargets
listDeploymentTargets =
  ListDeploymentTargets'
    { _ldtDeploymentId = Nothing,
      _ldtNextToken = Nothing,
      _ldtTargetFilters = Nothing
    }

-- | The unique ID of a deployment.
ldtDeploymentId :: Lens' ListDeploymentTargets (Maybe Text)
ldtDeploymentId = lens _ldtDeploymentId (\s a -> s {_ldtDeploymentId = a})

-- | A token identifier returned from the previous @ListDeploymentTargets@ call. It can be used to return the next set of deployment targets in the list.
ldtNextToken :: Lens' ListDeploymentTargets (Maybe Text)
ldtNextToken = lens _ldtNextToken (\s a -> s {_ldtNextToken = a})

-- | A key used to filter the returned targets. The two valid values are:     * @TargetStatus@ - A @TargetStatus@ filter string can be @Failed@ , @InProgress@ , @Pending@ , @Ready@ , @Skipped@ , @Succeeded@ , or @Unknown@ .      * @ServerInstanceLabel@ - A @ServerInstanceLabel@ filter string can be @Blue@ or @Green@ .
ldtTargetFilters :: Lens' ListDeploymentTargets (HashMap TargetFilterName [Text])
ldtTargetFilters = lens _ldtTargetFilters (\s a -> s {_ldtTargetFilters = a}) . _Default . _Map

instance AWSPager ListDeploymentTargets where
  page rq rs
    | stop (rs ^. ldtrrsNextToken) = Nothing
    | stop (rs ^. ldtrrsTargetIds) = Nothing
    | otherwise =
      Just $ rq & ldtNextToken .~ rs ^. ldtrrsNextToken

instance AWSRequest ListDeploymentTargets where
  type
    Rs ListDeploymentTargets =
      ListDeploymentTargetsResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          ListDeploymentTargetsResponse'
            <$> (x .?> "targetIds" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeploymentTargets

instance NFData ListDeploymentTargets

instance ToHeaders ListDeploymentTargets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.ListDeploymentTargets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDeploymentTargets where
  toJSON ListDeploymentTargets' {..} =
    object
      ( catMaybes
          [ ("deploymentId" .=) <$> _ldtDeploymentId,
            ("nextToken" .=) <$> _ldtNextToken,
            ("targetFilters" .=) <$> _ldtTargetFilters
          ]
      )

instance ToPath ListDeploymentTargets where
  toPath = const "/"

instance ToQuery ListDeploymentTargets where
  toQuery = const mempty

-- | /See:/ 'listDeploymentTargetsResponse' smart constructor.
data ListDeploymentTargetsResponse = ListDeploymentTargetsResponse'
  { _ldtrrsTargetIds ::
      !( Maybe
           [Text]
       ),
    _ldtrrsNextToken ::
      !( Maybe
           Text
       ),
    _ldtrrsResponseStatus ::
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

-- | Creates a value of 'ListDeploymentTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldtrrsTargetIds' - The unique IDs of deployment targets.
--
-- * 'ldtrrsNextToken' - If a large amount of information is returned, a token identifier is also returned. It can be used in a subsequent @ListDeploymentTargets@ call to return the next set of deployment targets in the list.
--
-- * 'ldtrrsResponseStatus' - -- | The response status code.
listDeploymentTargetsResponse ::
  -- | 'ldtrrsResponseStatus'
  Int ->
  ListDeploymentTargetsResponse
listDeploymentTargetsResponse pResponseStatus_ =
  ListDeploymentTargetsResponse'
    { _ldtrrsTargetIds =
        Nothing,
      _ldtrrsNextToken = Nothing,
      _ldtrrsResponseStatus = pResponseStatus_
    }

-- | The unique IDs of deployment targets.
ldtrrsTargetIds :: Lens' ListDeploymentTargetsResponse [Text]
ldtrrsTargetIds = lens _ldtrrsTargetIds (\s a -> s {_ldtrrsTargetIds = a}) . _Default . _Coerce

-- | If a large amount of information is returned, a token identifier is also returned. It can be used in a subsequent @ListDeploymentTargets@ call to return the next set of deployment targets in the list.
ldtrrsNextToken :: Lens' ListDeploymentTargetsResponse (Maybe Text)
ldtrrsNextToken = lens _ldtrrsNextToken (\s a -> s {_ldtrrsNextToken = a})

-- | -- | The response status code.
ldtrrsResponseStatus :: Lens' ListDeploymentTargetsResponse Int
ldtrrsResponseStatus = lens _ldtrrsResponseStatus (\s a -> s {_ldtrrsResponseStatus = a})

instance NFData ListDeploymentTargetsResponse
