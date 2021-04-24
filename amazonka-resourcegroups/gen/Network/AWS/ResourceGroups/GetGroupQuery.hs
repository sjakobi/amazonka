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
-- Module      : Network.AWS.ResourceGroups.GetGroupQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the resource query associated with the specified resource group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:GetGroupQuery@
module Network.AWS.ResourceGroups.GetGroupQuery
  ( -- * Creating a Request
    getGroupQuery,
    GetGroupQuery,

    -- * Request Lenses
    ggqGroupName,
    ggqGroup,

    -- * Destructuring the Response
    getGroupQueryResponse,
    GetGroupQueryResponse,

    -- * Response Lenses
    ggqrrsGroupQuery,
    ggqrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'getGroupQuery' smart constructor.
data GetGroupQuery = GetGroupQuery'
  { _ggqGroupName ::
      !(Maybe Text),
    _ggqGroup :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggqGroupName' - Don't use this parameter. Use @Group@ instead.
--
-- * 'ggqGroup' - The name or the ARN of the resource group to query.
getGroupQuery ::
  GetGroupQuery
getGroupQuery =
  GetGroupQuery'
    { _ggqGroupName = Nothing,
      _ggqGroup = Nothing
    }

-- | Don't use this parameter. Use @Group@ instead.
ggqGroupName :: Lens' GetGroupQuery (Maybe Text)
ggqGroupName = lens _ggqGroupName (\s a -> s {_ggqGroupName = a})

-- | The name or the ARN of the resource group to query.
ggqGroup :: Lens' GetGroupQuery (Maybe Text)
ggqGroup = lens _ggqGroup (\s a -> s {_ggqGroup = a})

instance AWSRequest GetGroupQuery where
  type Rs GetGroupQuery = GetGroupQueryResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          GetGroupQueryResponse'
            <$> (x .?> "GroupQuery") <*> (pure (fromEnum s))
      )

instance Hashable GetGroupQuery

instance NFData GetGroupQuery

instance ToHeaders GetGroupQuery where
  toHeaders = const mempty

instance ToJSON GetGroupQuery where
  toJSON GetGroupQuery' {..} =
    object
      ( catMaybes
          [ ("GroupName" .=) <$> _ggqGroupName,
            ("Group" .=) <$> _ggqGroup
          ]
      )

instance ToPath GetGroupQuery where
  toPath = const "/get-group-query"

instance ToQuery GetGroupQuery where
  toQuery = const mempty

-- | /See:/ 'getGroupQueryResponse' smart constructor.
data GetGroupQueryResponse = GetGroupQueryResponse'
  { _ggqrrsGroupQuery ::
      !(Maybe GroupQuery),
    _ggqrrsResponseStatus ::
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

-- | Creates a value of 'GetGroupQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggqrrsGroupQuery' - The resource query associated with the specified group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
--
-- * 'ggqrrsResponseStatus' - -- | The response status code.
getGroupQueryResponse ::
  -- | 'ggqrrsResponseStatus'
  Int ->
  GetGroupQueryResponse
getGroupQueryResponse pResponseStatus_ =
  GetGroupQueryResponse'
    { _ggqrrsGroupQuery = Nothing,
      _ggqrrsResponseStatus = pResponseStatus_
    }

-- | The resource query associated with the specified group. For more information about resource queries, see <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups> .
ggqrrsGroupQuery :: Lens' GetGroupQueryResponse (Maybe GroupQuery)
ggqrrsGroupQuery = lens _ggqrrsGroupQuery (\s a -> s {_ggqrrsGroupQuery = a})

-- | -- | The response status code.
ggqrrsResponseStatus :: Lens' GetGroupQueryResponse Int
ggqrrsResponseStatus = lens _ggqrrsResponseStatus (\s a -> s {_ggqrrsResponseStatus = a})

instance NFData GetGroupQueryResponse
