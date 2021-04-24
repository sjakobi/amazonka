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
-- Module      : Network.AWS.SageMaker.ListPipelineExecutionSteps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of @PipeLineExecutionStep@ objects.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListPipelineExecutionSteps
  ( -- * Creating a Request
    listPipelineExecutionSteps,
    ListPipelineExecutionSteps,

    -- * Request Lenses
    lpesSortOrder,
    lpesNextToken,
    lpesMaxResults,
    lpesPipelineExecutionARN,

    -- * Destructuring the Response
    listPipelineExecutionStepsResponse,
    ListPipelineExecutionStepsResponse,

    -- * Response Lenses
    lpesrrsNextToken,
    lpesrrsPipelineExecutionSteps,
    lpesrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listPipelineExecutionSteps' smart constructor.
data ListPipelineExecutionSteps = ListPipelineExecutionSteps'
  { _lpesSortOrder ::
      !( Maybe
           SortOrder
       ),
    _lpesNextToken ::
      !(Maybe Text),
    _lpesMaxResults ::
      !(Maybe Nat),
    _lpesPipelineExecutionARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPipelineExecutionSteps' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpesSortOrder' - The field by which to sort results. The default is @CreatedTime@ .
--
-- * 'lpesNextToken' - If the result of the previous @ListPipelineExecutionSteps@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline execution steps, use the token in the next request.
--
-- * 'lpesMaxResults' - The maximum number of pipeline execution steps to return in the response.
--
-- * 'lpesPipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
listPipelineExecutionSteps ::
  ListPipelineExecutionSteps
listPipelineExecutionSteps =
  ListPipelineExecutionSteps'
    { _lpesSortOrder =
        Nothing,
      _lpesNextToken = Nothing,
      _lpesMaxResults = Nothing,
      _lpesPipelineExecutionARN = Nothing
    }

-- | The field by which to sort results. The default is @CreatedTime@ .
lpesSortOrder :: Lens' ListPipelineExecutionSteps (Maybe SortOrder)
lpesSortOrder = lens _lpesSortOrder (\s a -> s {_lpesSortOrder = a})

-- | If the result of the previous @ListPipelineExecutionSteps@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline execution steps, use the token in the next request.
lpesNextToken :: Lens' ListPipelineExecutionSteps (Maybe Text)
lpesNextToken = lens _lpesNextToken (\s a -> s {_lpesNextToken = a})

-- | The maximum number of pipeline execution steps to return in the response.
lpesMaxResults :: Lens' ListPipelineExecutionSteps (Maybe Natural)
lpesMaxResults = lens _lpesMaxResults (\s a -> s {_lpesMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the pipeline execution.
lpesPipelineExecutionARN :: Lens' ListPipelineExecutionSteps (Maybe Text)
lpesPipelineExecutionARN = lens _lpesPipelineExecutionARN (\s a -> s {_lpesPipelineExecutionARN = a})

instance AWSPager ListPipelineExecutionSteps where
  page rq rs
    | stop (rs ^. lpesrrsNextToken) = Nothing
    | stop (rs ^. lpesrrsPipelineExecutionSteps) =
      Nothing
    | otherwise =
      Just $ rq & lpesNextToken .~ rs ^. lpesrrsNextToken

instance AWSRequest ListPipelineExecutionSteps where
  type
    Rs ListPipelineExecutionSteps =
      ListPipelineExecutionStepsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListPipelineExecutionStepsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PipelineExecutionSteps" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPipelineExecutionSteps

instance NFData ListPipelineExecutionSteps

instance ToHeaders ListPipelineExecutionSteps where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListPipelineExecutionSteps" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPipelineExecutionSteps where
  toJSON ListPipelineExecutionSteps' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lpesSortOrder,
            ("NextToken" .=) <$> _lpesNextToken,
            ("MaxResults" .=) <$> _lpesMaxResults,
            ("PipelineExecutionArn" .=)
              <$> _lpesPipelineExecutionARN
          ]
      )

instance ToPath ListPipelineExecutionSteps where
  toPath = const "/"

instance ToQuery ListPipelineExecutionSteps where
  toQuery = const mempty

-- | /See:/ 'listPipelineExecutionStepsResponse' smart constructor.
data ListPipelineExecutionStepsResponse = ListPipelineExecutionStepsResponse'
  { _lpesrrsNextToken ::
      !( Maybe
           Text
       ),
    _lpesrrsPipelineExecutionSteps ::
      !( Maybe
           [PipelineExecutionStep]
       ),
    _lpesrrsResponseStatus ::
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

-- | Creates a value of 'ListPipelineExecutionStepsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpesrrsNextToken' - If the result of the previous @ListPipelineExecutionSteps@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline execution steps, use the token in the next request.
--
-- * 'lpesrrsPipelineExecutionSteps' - A list of @PipeLineExecutionStep@ objects. Each @PipeLineExecutionStep@ consists of StepName, StartTime, EndTime, StepStatus, and Metadata. Metadata is an object with properties for each job that contains relevant information about the job created by the step.
--
-- * 'lpesrrsResponseStatus' - -- | The response status code.
listPipelineExecutionStepsResponse ::
  -- | 'lpesrrsResponseStatus'
  Int ->
  ListPipelineExecutionStepsResponse
listPipelineExecutionStepsResponse pResponseStatus_ =
  ListPipelineExecutionStepsResponse'
    { _lpesrrsNextToken =
        Nothing,
      _lpesrrsPipelineExecutionSteps =
        Nothing,
      _lpesrrsResponseStatus =
        pResponseStatus_
    }

-- | If the result of the previous @ListPipelineExecutionSteps@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of pipeline execution steps, use the token in the next request.
lpesrrsNextToken :: Lens' ListPipelineExecutionStepsResponse (Maybe Text)
lpesrrsNextToken = lens _lpesrrsNextToken (\s a -> s {_lpesrrsNextToken = a})

-- | A list of @PipeLineExecutionStep@ objects. Each @PipeLineExecutionStep@ consists of StepName, StartTime, EndTime, StepStatus, and Metadata. Metadata is an object with properties for each job that contains relevant information about the job created by the step.
lpesrrsPipelineExecutionSteps :: Lens' ListPipelineExecutionStepsResponse [PipelineExecutionStep]
lpesrrsPipelineExecutionSteps = lens _lpesrrsPipelineExecutionSteps (\s a -> s {_lpesrrsPipelineExecutionSteps = a}) . _Default . _Coerce

-- | -- | The response status code.
lpesrrsResponseStatus :: Lens' ListPipelineExecutionStepsResponse Int
lpesrrsResponseStatus = lens _lpesrrsResponseStatus (\s a -> s {_lpesrrsResponseStatus = a})

instance NFData ListPipelineExecutionStepsResponse
