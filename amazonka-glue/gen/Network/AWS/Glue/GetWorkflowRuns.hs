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
-- Module      : Network.AWS.Glue.GetWorkflowRuns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for all runs of a given workflow.
module Network.AWS.Glue.GetWorkflowRuns
  ( -- * Creating a Request
    getWorkflowRuns,
    GetWorkflowRuns,

    -- * Request Lenses
    gwrNextToken,
    gwrMaxResults,
    gwrIncludeGraph,
    gwrName,

    -- * Destructuring the Response
    getWorkflowRunsResponse,
    GetWorkflowRunsResponse,

    -- * Response Lenses
    gwrrwrsNextToken,
    gwrrwrsRuns,
    gwrrwrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getWorkflowRuns' smart constructor.
data GetWorkflowRuns = GetWorkflowRuns'
  { _gwrNextToken ::
      !(Maybe Text),
    _gwrMaxResults :: !(Maybe Nat),
    _gwrIncludeGraph :: !(Maybe Bool),
    _gwrName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetWorkflowRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwrNextToken' - The maximum size of the response.
--
-- * 'gwrMaxResults' - The maximum number of workflow runs to be included in the response.
--
-- * 'gwrIncludeGraph' - Specifies whether to include the workflow graph in response or not.
--
-- * 'gwrName' - Name of the workflow whose metadata of runs should be returned.
getWorkflowRuns ::
  -- | 'gwrName'
  Text ->
  GetWorkflowRuns
getWorkflowRuns pName_ =
  GetWorkflowRuns'
    { _gwrNextToken = Nothing,
      _gwrMaxResults = Nothing,
      _gwrIncludeGraph = Nothing,
      _gwrName = pName_
    }

-- | The maximum size of the response.
gwrNextToken :: Lens' GetWorkflowRuns (Maybe Text)
gwrNextToken = lens _gwrNextToken (\s a -> s {_gwrNextToken = a})

-- | The maximum number of workflow runs to be included in the response.
gwrMaxResults :: Lens' GetWorkflowRuns (Maybe Natural)
gwrMaxResults = lens _gwrMaxResults (\s a -> s {_gwrMaxResults = a}) . mapping _Nat

-- | Specifies whether to include the workflow graph in response or not.
gwrIncludeGraph :: Lens' GetWorkflowRuns (Maybe Bool)
gwrIncludeGraph = lens _gwrIncludeGraph (\s a -> s {_gwrIncludeGraph = a})

-- | Name of the workflow whose metadata of runs should be returned.
gwrName :: Lens' GetWorkflowRuns Text
gwrName = lens _gwrName (\s a -> s {_gwrName = a})

instance AWSRequest GetWorkflowRuns where
  type Rs GetWorkflowRuns = GetWorkflowRunsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetWorkflowRunsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Runs")
            <*> (pure (fromEnum s))
      )

instance Hashable GetWorkflowRuns

instance NFData GetWorkflowRuns

instance ToHeaders GetWorkflowRuns where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetWorkflowRuns" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetWorkflowRuns where
  toJSON GetWorkflowRuns' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gwrNextToken,
            ("MaxResults" .=) <$> _gwrMaxResults,
            ("IncludeGraph" .=) <$> _gwrIncludeGraph,
            Just ("Name" .= _gwrName)
          ]
      )

instance ToPath GetWorkflowRuns where
  toPath = const "/"

instance ToQuery GetWorkflowRuns where
  toQuery = const mempty

-- | /See:/ 'getWorkflowRunsResponse' smart constructor.
data GetWorkflowRunsResponse = GetWorkflowRunsResponse'
  { _gwrrwrsNextToken ::
      !(Maybe Text),
    _gwrrwrsRuns ::
      !( Maybe
           ( List1
               WorkflowRun
           )
       ),
    _gwrrwrsResponseStatus ::
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

-- | Creates a value of 'GetWorkflowRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gwrrwrsNextToken' - A continuation token, if not all requested workflow runs have been returned.
--
-- * 'gwrrwrsRuns' - A list of workflow run metadata objects.
--
-- * 'gwrrwrsResponseStatus' - -- | The response status code.
getWorkflowRunsResponse ::
  -- | 'gwrrwrsResponseStatus'
  Int ->
  GetWorkflowRunsResponse
getWorkflowRunsResponse pResponseStatus_ =
  GetWorkflowRunsResponse'
    { _gwrrwrsNextToken =
        Nothing,
      _gwrrwrsRuns = Nothing,
      _gwrrwrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if not all requested workflow runs have been returned.
gwrrwrsNextToken :: Lens' GetWorkflowRunsResponse (Maybe Text)
gwrrwrsNextToken = lens _gwrrwrsNextToken (\s a -> s {_gwrrwrsNextToken = a})

-- | A list of workflow run metadata objects.
gwrrwrsRuns :: Lens' GetWorkflowRunsResponse (Maybe (NonEmpty WorkflowRun))
gwrrwrsRuns = lens _gwrrwrsRuns (\s a -> s {_gwrrwrsRuns = a}) . mapping _List1

-- | -- | The response status code.
gwrrwrsResponseStatus :: Lens' GetWorkflowRunsResponse Int
gwrrwrsResponseStatus = lens _gwrrwrsResponseStatus (\s a -> s {_gwrrwrsResponseStatus = a})

instance NFData GetWorkflowRunsResponse
