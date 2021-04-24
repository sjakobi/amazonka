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
-- Module      : Network.AWS.ResourceGroups.UpdateGroupQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the resource query of a group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:UpdateGroupQuery@
module Network.AWS.ResourceGroups.UpdateGroupQuery
  ( -- * Creating a Request
    updateGroupQuery,
    UpdateGroupQuery,

    -- * Request Lenses
    ugqGroupName,
    ugqGroup,
    ugqResourceQuery,

    -- * Destructuring the Response
    updateGroupQueryResponse,
    UpdateGroupQueryResponse,

    -- * Response Lenses
    ugqrrsGroupQuery,
    ugqrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'updateGroupQuery' smart constructor.
data UpdateGroupQuery = UpdateGroupQuery'
  { _ugqGroupName ::
      !(Maybe Text),
    _ugqGroup :: !(Maybe Text),
    _ugqResourceQuery :: !ResourceQuery
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateGroupQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugqGroupName' - Don't use this parameter. Use @Group@ instead.
--
-- * 'ugqGroup' - The name or the ARN of the resource group to query.
--
-- * 'ugqResourceQuery' - The resource query to determine which AWS resources are members of this resource group.
updateGroupQuery ::
  -- | 'ugqResourceQuery'
  ResourceQuery ->
  UpdateGroupQuery
updateGroupQuery pResourceQuery_ =
  UpdateGroupQuery'
    { _ugqGroupName = Nothing,
      _ugqGroup = Nothing,
      _ugqResourceQuery = pResourceQuery_
    }

-- | Don't use this parameter. Use @Group@ instead.
ugqGroupName :: Lens' UpdateGroupQuery (Maybe Text)
ugqGroupName = lens _ugqGroupName (\s a -> s {_ugqGroupName = a})

-- | The name or the ARN of the resource group to query.
ugqGroup :: Lens' UpdateGroupQuery (Maybe Text)
ugqGroup = lens _ugqGroup (\s a -> s {_ugqGroup = a})

-- | The resource query to determine which AWS resources are members of this resource group.
ugqResourceQuery :: Lens' UpdateGroupQuery ResourceQuery
ugqResourceQuery = lens _ugqResourceQuery (\s a -> s {_ugqResourceQuery = a})

instance AWSRequest UpdateGroupQuery where
  type Rs UpdateGroupQuery = UpdateGroupQueryResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          UpdateGroupQueryResponse'
            <$> (x .?> "GroupQuery") <*> (pure (fromEnum s))
      )

instance Hashable UpdateGroupQuery

instance NFData UpdateGroupQuery

instance ToHeaders UpdateGroupQuery where
  toHeaders = const mempty

instance ToJSON UpdateGroupQuery where
  toJSON UpdateGroupQuery' {..} =
    object
      ( catMaybes
          [ ("GroupName" .=) <$> _ugqGroupName,
            ("Group" .=) <$> _ugqGroup,
            Just ("ResourceQuery" .= _ugqResourceQuery)
          ]
      )

instance ToPath UpdateGroupQuery where
  toPath = const "/update-group-query"

instance ToQuery UpdateGroupQuery where
  toQuery = const mempty

-- | /See:/ 'updateGroupQueryResponse' smart constructor.
data UpdateGroupQueryResponse = UpdateGroupQueryResponse'
  { _ugqrrsGroupQuery ::
      !(Maybe GroupQuery),
    _ugqrrsResponseStatus ::
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

-- | Creates a value of 'UpdateGroupQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugqrrsGroupQuery' - The updated resource query associated with the resource group after the update.
--
-- * 'ugqrrsResponseStatus' - -- | The response status code.
updateGroupQueryResponse ::
  -- | 'ugqrrsResponseStatus'
  Int ->
  UpdateGroupQueryResponse
updateGroupQueryResponse pResponseStatus_ =
  UpdateGroupQueryResponse'
    { _ugqrrsGroupQuery =
        Nothing,
      _ugqrrsResponseStatus = pResponseStatus_
    }

-- | The updated resource query associated with the resource group after the update.
ugqrrsGroupQuery :: Lens' UpdateGroupQueryResponse (Maybe GroupQuery)
ugqrrsGroupQuery = lens _ugqrrsGroupQuery (\s a -> s {_ugqrrsGroupQuery = a})

-- | -- | The response status code.
ugqrrsResponseStatus :: Lens' UpdateGroupQueryResponse Int
ugqrrsResponseStatus = lens _ugqrrsResponseStatus (\s a -> s {_ugqrrsResponseStatus = a})

instance NFData UpdateGroupQueryResponse
