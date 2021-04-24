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
-- Module      : Network.AWS.CodePipeline.ListPipelines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a summary of all of the pipelines associated with your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodePipeline.ListPipelines
  ( -- * Creating a Request
    listPipelines,
    ListPipelines,

    -- * Request Lenses
    lpNextToken,
    lpMaxResults,

    -- * Destructuring the Response
    listPipelinesResponse,
    ListPipelinesResponse,

    -- * Response Lenses
    lprrsNextToken,
    lprrsPipelines,
    lprrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListPipelines@ action.
--
--
--
-- /See:/ 'listPipelines' smart constructor.
data ListPipelines = ListPipelines'
  { _lpNextToken ::
      !(Maybe Text),
    _lpMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPipelines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpNextToken' - An identifier that was returned from the previous list pipelines call. It can be used to return the next set of pipelines in the list.
--
-- * 'lpMaxResults' - The maximum number of pipelines to return in a single call. To retrieve the remaining pipelines, make another call with the returned nextToken value. The minimum value you can specify is 1. The maximum accepted value is 1000.
listPipelines ::
  ListPipelines
listPipelines =
  ListPipelines'
    { _lpNextToken = Nothing,
      _lpMaxResults = Nothing
    }

-- | An identifier that was returned from the previous list pipelines call. It can be used to return the next set of pipelines in the list.
lpNextToken :: Lens' ListPipelines (Maybe Text)
lpNextToken = lens _lpNextToken (\s a -> s {_lpNextToken = a})

-- | The maximum number of pipelines to return in a single call. To retrieve the remaining pipelines, make another call with the returned nextToken value. The minimum value you can specify is 1. The maximum accepted value is 1000.
lpMaxResults :: Lens' ListPipelines (Maybe Natural)
lpMaxResults = lens _lpMaxResults (\s a -> s {_lpMaxResults = a}) . mapping _Nat

instance AWSPager ListPipelines where
  page rq rs
    | stop (rs ^. lprrsNextToken) = Nothing
    | stop (rs ^. lprrsPipelines) = Nothing
    | otherwise =
      Just $ rq & lpNextToken .~ rs ^. lprrsNextToken

instance AWSRequest ListPipelines where
  type Rs ListPipelines = ListPipelinesResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          ListPipelinesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "pipelines" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPipelines

instance NFData ListPipelines

instance ToHeaders ListPipelines where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.ListPipelines" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPipelines where
  toJSON ListPipelines' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lpNextToken,
            ("maxResults" .=) <$> _lpMaxResults
          ]
      )

instance ToPath ListPipelines where
  toPath = const "/"

instance ToQuery ListPipelines where
  toQuery = const mempty

-- | Represents the output of a @ListPipelines@ action.
--
--
--
-- /See:/ 'listPipelinesResponse' smart constructor.
data ListPipelinesResponse = ListPipelinesResponse'
  { _lprrsNextToken ::
      !(Maybe Text),
    _lprrsPipelines ::
      !(Maybe [PipelineSummary]),
    _lprrsResponseStatus ::
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

-- | Creates a value of 'ListPipelinesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsNextToken' - If the amount of returned information is significantly large, an identifier is also returned. It can be used in a subsequent list pipelines call to return the next set of pipelines in the list.
--
-- * 'lprrsPipelines' - The list of pipelines.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPipelinesResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPipelinesResponse
listPipelinesResponse pResponseStatus_ =
  ListPipelinesResponse'
    { _lprrsNextToken = Nothing,
      _lprrsPipelines = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | If the amount of returned information is significantly large, an identifier is also returned. It can be used in a subsequent list pipelines call to return the next set of pipelines in the list.
lprrsNextToken :: Lens' ListPipelinesResponse (Maybe Text)
lprrsNextToken = lens _lprrsNextToken (\s a -> s {_lprrsNextToken = a})

-- | The list of pipelines.
lprrsPipelines :: Lens' ListPipelinesResponse [PipelineSummary]
lprrsPipelines = lens _lprrsPipelines (\s a -> s {_lprrsPipelines = a}) . _Default . _Coerce

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPipelinesResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPipelinesResponse
