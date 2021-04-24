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
-- Module      : Network.AWS.Glue.ListWorkflows
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists names of workflows created in the account.
module Network.AWS.Glue.ListWorkflows
  ( -- * Creating a Request
    listWorkflows,
    ListWorkflows,

    -- * Request Lenses
    lwNextToken,
    lwMaxResults,

    -- * Destructuring the Response
    listWorkflowsResponse,
    ListWorkflowsResponse,

    -- * Response Lenses
    lwrrsNextToken,
    lwrrsWorkflows,
    lwrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listWorkflows' smart constructor.
data ListWorkflows = ListWorkflows'
  { _lwNextToken ::
      !(Maybe Text),
    _lwMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListWorkflows' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwNextToken' - A continuation token, if this is a continuation request.
--
-- * 'lwMaxResults' - The maximum size of a list to return.
listWorkflows ::
  ListWorkflows
listWorkflows =
  ListWorkflows'
    { _lwNextToken = Nothing,
      _lwMaxResults = Nothing
    }

-- | A continuation token, if this is a continuation request.
lwNextToken :: Lens' ListWorkflows (Maybe Text)
lwNextToken = lens _lwNextToken (\s a -> s {_lwNextToken = a})

-- | The maximum size of a list to return.
lwMaxResults :: Lens' ListWorkflows (Maybe Natural)
lwMaxResults = lens _lwMaxResults (\s a -> s {_lwMaxResults = a}) . mapping _Nat

instance AWSRequest ListWorkflows where
  type Rs ListWorkflows = ListWorkflowsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          ListWorkflowsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Workflows")
            <*> (pure (fromEnum s))
      )

instance Hashable ListWorkflows

instance NFData ListWorkflows

instance ToHeaders ListWorkflows where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.ListWorkflows" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListWorkflows where
  toJSON ListWorkflows' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lwNextToken,
            ("MaxResults" .=) <$> _lwMaxResults
          ]
      )

instance ToPath ListWorkflows where
  toPath = const "/"

instance ToQuery ListWorkflows where
  toQuery = const mempty

-- | /See:/ 'listWorkflowsResponse' smart constructor.
data ListWorkflowsResponse = ListWorkflowsResponse'
  { _lwrrsNextToken ::
      !(Maybe Text),
    _lwrrsWorkflows ::
      !(Maybe (List1 Text)),
    _lwrrsResponseStatus ::
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

-- | Creates a value of 'ListWorkflowsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwrrsNextToken' - A continuation token, if not all workflow names have been returned.
--
-- * 'lwrrsWorkflows' - List of names of workflows in the account.
--
-- * 'lwrrsResponseStatus' - -- | The response status code.
listWorkflowsResponse ::
  -- | 'lwrrsResponseStatus'
  Int ->
  ListWorkflowsResponse
listWorkflowsResponse pResponseStatus_ =
  ListWorkflowsResponse'
    { _lwrrsNextToken = Nothing,
      _lwrrsWorkflows = Nothing,
      _lwrrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if not all workflow names have been returned.
lwrrsNextToken :: Lens' ListWorkflowsResponse (Maybe Text)
lwrrsNextToken = lens _lwrrsNextToken (\s a -> s {_lwrrsNextToken = a})

-- | List of names of workflows in the account.
lwrrsWorkflows :: Lens' ListWorkflowsResponse (Maybe (NonEmpty Text))
lwrrsWorkflows = lens _lwrrsWorkflows (\s a -> s {_lwrrsWorkflows = a}) . mapping _List1

-- | -- | The response status code.
lwrrsResponseStatus :: Lens' ListWorkflowsResponse Int
lwrrsResponseStatus = lens _lwrrsResponseStatus (\s a -> s {_lwrrsResponseStatus = a})

instance NFData ListWorkflowsResponse
