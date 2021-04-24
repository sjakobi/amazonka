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
-- Module      : Network.AWS.SageMaker.ListPipelineParametersForExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of parameters for a pipeline execution.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListPipelineParametersForExecution
  ( -- * Creating a Request
    listPipelineParametersForExecution,
    ListPipelineParametersForExecution,

    -- * Request Lenses
    lppfeNextToken,
    lppfeMaxResults,
    lppfePipelineExecutionARN,

    -- * Destructuring the Response
    listPipelineParametersForExecutionResponse,
    ListPipelineParametersForExecutionResponse,

    -- * Response Lenses
    lppferrsNextToken,
    lppferrsPipelineParameters,
    lppferrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listPipelineParametersForExecution' smart constructor.
data ListPipelineParametersForExecution = ListPipelineParametersForExecution'
  { _lppfeNextToken ::
      !( Maybe
           Text
       ),
    _lppfeMaxResults ::
      !( Maybe
           Nat
       ),
    _lppfePipelineExecutionARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPipelineParametersForExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppfeNextToken' - If the result of the previous @ListPipelineParametersForExecution@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of parameters, use the token in the next request.
--
-- * 'lppfeMaxResults' - The maximum number of parameters to return in the response.
--
-- * 'lppfePipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
listPipelineParametersForExecution ::
  -- | 'lppfePipelineExecutionARN'
  Text ->
  ListPipelineParametersForExecution
listPipelineParametersForExecution
  pPipelineExecutionARN_ =
    ListPipelineParametersForExecution'
      { _lppfeNextToken =
          Nothing,
        _lppfeMaxResults = Nothing,
        _lppfePipelineExecutionARN =
          pPipelineExecutionARN_
      }

-- | If the result of the previous @ListPipelineParametersForExecution@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of parameters, use the token in the next request.
lppfeNextToken :: Lens' ListPipelineParametersForExecution (Maybe Text)
lppfeNextToken = lens _lppfeNextToken (\s a -> s {_lppfeNextToken = a})

-- | The maximum number of parameters to return in the response.
lppfeMaxResults :: Lens' ListPipelineParametersForExecution (Maybe Natural)
lppfeMaxResults = lens _lppfeMaxResults (\s a -> s {_lppfeMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the pipeline execution.
lppfePipelineExecutionARN :: Lens' ListPipelineParametersForExecution Text
lppfePipelineExecutionARN = lens _lppfePipelineExecutionARN (\s a -> s {_lppfePipelineExecutionARN = a})

instance AWSPager ListPipelineParametersForExecution where
  page rq rs
    | stop (rs ^. lppferrsNextToken) = Nothing
    | stop (rs ^. lppferrsPipelineParameters) = Nothing
    | otherwise =
      Just $ rq & lppfeNextToken .~ rs ^. lppferrsNextToken

instance
  AWSRequest
    ListPipelineParametersForExecution
  where
  type
    Rs ListPipelineParametersForExecution =
      ListPipelineParametersForExecutionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListPipelineParametersForExecutionResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PipelineParameters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPipelineParametersForExecution

instance NFData ListPipelineParametersForExecution

instance ToHeaders ListPipelineParametersForExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListPipelineParametersForExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPipelineParametersForExecution where
  toJSON ListPipelineParametersForExecution' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lppfeNextToken,
            ("MaxResults" .=) <$> _lppfeMaxResults,
            Just
              ( "PipelineExecutionArn"
                  .= _lppfePipelineExecutionARN
              )
          ]
      )

instance ToPath ListPipelineParametersForExecution where
  toPath = const "/"

instance ToQuery ListPipelineParametersForExecution where
  toQuery = const mempty

-- | /See:/ 'listPipelineParametersForExecutionResponse' smart constructor.
data ListPipelineParametersForExecutionResponse = ListPipelineParametersForExecutionResponse'
  { _lppferrsNextToken ::
      !( Maybe
           Text
       ),
    _lppferrsPipelineParameters ::
      !( Maybe
           [Parameter]
       ),
    _lppferrsResponseStatus ::
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

-- | Creates a value of 'ListPipelineParametersForExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppferrsNextToken' - If the result of the previous @ListPipelineParametersForExecution@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of parameters, use the token in the next request.
--
-- * 'lppferrsPipelineParameters' - Contains a list of pipeline parameters. This list can be empty.
--
-- * 'lppferrsResponseStatus' - -- | The response status code.
listPipelineParametersForExecutionResponse ::
  -- | 'lppferrsResponseStatus'
  Int ->
  ListPipelineParametersForExecutionResponse
listPipelineParametersForExecutionResponse
  pResponseStatus_ =
    ListPipelineParametersForExecutionResponse'
      { _lppferrsNextToken =
          Nothing,
        _lppferrsPipelineParameters =
          Nothing,
        _lppferrsResponseStatus =
          pResponseStatus_
      }

-- | If the result of the previous @ListPipelineParametersForExecution@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of parameters, use the token in the next request.
lppferrsNextToken :: Lens' ListPipelineParametersForExecutionResponse (Maybe Text)
lppferrsNextToken = lens _lppferrsNextToken (\s a -> s {_lppferrsNextToken = a})

-- | Contains a list of pipeline parameters. This list can be empty.
lppferrsPipelineParameters :: Lens' ListPipelineParametersForExecutionResponse [Parameter]
lppferrsPipelineParameters = lens _lppferrsPipelineParameters (\s a -> s {_lppferrsPipelineParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
lppferrsResponseStatus :: Lens' ListPipelineParametersForExecutionResponse Int
lppferrsResponseStatus = lens _lppferrsResponseStatus (\s a -> s {_lppferrsResponseStatus = a})

instance
  NFData
    ListPipelineParametersForExecutionResponse
