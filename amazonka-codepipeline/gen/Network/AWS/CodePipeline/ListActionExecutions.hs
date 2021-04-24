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
-- Module      : Network.AWS.CodePipeline.ListActionExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the action executions that have occurred in a pipeline.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodePipeline.ListActionExecutions
  ( -- * Creating a Request
    listActionExecutions,
    ListActionExecutions,

    -- * Request Lenses
    laeNextToken,
    laeMaxResults,
    laeFilter,
    laePipelineName,

    -- * Destructuring the Response
    listActionExecutionsResponse,
    ListActionExecutionsResponse,

    -- * Response Lenses
    laerrsNextToken,
    laerrsActionExecutionDetails,
    laerrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listActionExecutions' smart constructor.
data ListActionExecutions = ListActionExecutions'
  { _laeNextToken ::
      !(Maybe Text),
    _laeMaxResults ::
      !(Maybe Nat),
    _laeFilter ::
      !( Maybe
           ActionExecutionFilter
       ),
    _laePipelineName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListActionExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laeNextToken' - The token that was returned from the previous @ListActionExecutions@ call, which can be used to return the next set of action executions in the list.
--
-- * 'laeMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value. Action execution history is retained for up to 12 months, based on action execution start times. Default value is 100.
--
-- * 'laeFilter' - Input information used to filter action execution history.
--
-- * 'laePipelineName' - The name of the pipeline for which you want to list action execution history.
listActionExecutions ::
  -- | 'laePipelineName'
  Text ->
  ListActionExecutions
listActionExecutions pPipelineName_ =
  ListActionExecutions'
    { _laeNextToken = Nothing,
      _laeMaxResults = Nothing,
      _laeFilter = Nothing,
      _laePipelineName = pPipelineName_
    }

-- | The token that was returned from the previous @ListActionExecutions@ call, which can be used to return the next set of action executions in the list.
laeNextToken :: Lens' ListActionExecutions (Maybe Text)
laeNextToken = lens _laeNextToken (\s a -> s {_laeNextToken = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value. Action execution history is retained for up to 12 months, based on action execution start times. Default value is 100.
laeMaxResults :: Lens' ListActionExecutions (Maybe Natural)
laeMaxResults = lens _laeMaxResults (\s a -> s {_laeMaxResults = a}) . mapping _Nat

-- | Input information used to filter action execution history.
laeFilter :: Lens' ListActionExecutions (Maybe ActionExecutionFilter)
laeFilter = lens _laeFilter (\s a -> s {_laeFilter = a})

-- | The name of the pipeline for which you want to list action execution history.
laePipelineName :: Lens' ListActionExecutions Text
laePipelineName = lens _laePipelineName (\s a -> s {_laePipelineName = a})

instance AWSPager ListActionExecutions where
  page rq rs
    | stop (rs ^. laerrsNextToken) = Nothing
    | stop (rs ^. laerrsActionExecutionDetails) = Nothing
    | otherwise =
      Just $ rq & laeNextToken .~ rs ^. laerrsNextToken

instance AWSRequest ListActionExecutions where
  type
    Rs ListActionExecutions =
      ListActionExecutionsResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          ListActionExecutionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "actionExecutionDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListActionExecutions

instance NFData ListActionExecutions

instance ToHeaders ListActionExecutions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.ListActionExecutions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListActionExecutions where
  toJSON ListActionExecutions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _laeNextToken,
            ("maxResults" .=) <$> _laeMaxResults,
            ("filter" .=) <$> _laeFilter,
            Just ("pipelineName" .= _laePipelineName)
          ]
      )

instance ToPath ListActionExecutions where
  toPath = const "/"

instance ToQuery ListActionExecutions where
  toQuery = const mempty

-- | /See:/ 'listActionExecutionsResponse' smart constructor.
data ListActionExecutionsResponse = ListActionExecutionsResponse'
  { _laerrsNextToken ::
      !(Maybe Text),
    _laerrsActionExecutionDetails ::
      !( Maybe
           [ActionExecutionDetail]
       ),
    _laerrsResponseStatus ::
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

-- | Creates a value of 'ListActionExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laerrsNextToken' - If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent @ListActionExecutions@ call to return the next set of action executions in the list.
--
-- * 'laerrsActionExecutionDetails' - The details for a list of recent executions, such as action execution ID.
--
-- * 'laerrsResponseStatus' - -- | The response status code.
listActionExecutionsResponse ::
  -- | 'laerrsResponseStatus'
  Int ->
  ListActionExecutionsResponse
listActionExecutionsResponse pResponseStatus_ =
  ListActionExecutionsResponse'
    { _laerrsNextToken =
        Nothing,
      _laerrsActionExecutionDetails = Nothing,
      _laerrsResponseStatus = pResponseStatus_
    }

-- | If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent @ListActionExecutions@ call to return the next set of action executions in the list.
laerrsNextToken :: Lens' ListActionExecutionsResponse (Maybe Text)
laerrsNextToken = lens _laerrsNextToken (\s a -> s {_laerrsNextToken = a})

-- | The details for a list of recent executions, such as action execution ID.
laerrsActionExecutionDetails :: Lens' ListActionExecutionsResponse [ActionExecutionDetail]
laerrsActionExecutionDetails = lens _laerrsActionExecutionDetails (\s a -> s {_laerrsActionExecutionDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
laerrsResponseStatus :: Lens' ListActionExecutionsResponse Int
laerrsResponseStatus = lens _laerrsResponseStatus (\s a -> s {_laerrsResponseStatus = a})

instance NFData ListActionExecutionsResponse
