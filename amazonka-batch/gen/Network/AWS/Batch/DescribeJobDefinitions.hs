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
-- Module      : Network.AWS.Batch.DescribeJobDefinitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a list of job definitions. You can specify a @status@ (such as @ACTIVE@ ) to only return job definitions that match that status.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Batch.DescribeJobDefinitions
  ( -- * Creating a Request
    describeJobDefinitions,
    DescribeJobDefinitions,

    -- * Request Lenses
    djdNextToken,
    djdStatus,
    djdJobDefinitions,
    djdMaxResults,
    djdJobDefinitionName,

    -- * Destructuring the Response
    describeJobDefinitionsResponse,
    DescribeJobDefinitionsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsJobDefinitions,
    desrsResponseStatus,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @DescribeJobDefinitions@ .
--
--
--
-- /See:/ 'describeJobDefinitions' smart constructor.
data DescribeJobDefinitions = DescribeJobDefinitions'
  { _djdNextToken ::
      !(Maybe Text),
    _djdStatus ::
      !(Maybe Text),
    _djdJobDefinitions ::
      !(Maybe [Text]),
    _djdMaxResults ::
      !(Maybe Int),
    _djdJobDefinitionName ::
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

-- | Creates a value of 'DescribeJobDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'djdNextToken' - The @nextToken@ value returned from a previous paginated @DescribeJobDefinitions@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
--
-- * 'djdStatus' - The status used to filter job definitions.
--
-- * 'djdJobDefinitions' - A list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.
--
-- * 'djdMaxResults' - The maximum number of results returned by @DescribeJobDefinitions@ in paginated output. When this parameter is used, @DescribeJobDefinitions@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeJobDefinitions@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @DescribeJobDefinitions@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'djdJobDefinitionName' - The name of the job definition to describe.
describeJobDefinitions ::
  DescribeJobDefinitions
describeJobDefinitions =
  DescribeJobDefinitions'
    { _djdNextToken = Nothing,
      _djdStatus = Nothing,
      _djdJobDefinitions = Nothing,
      _djdMaxResults = Nothing,
      _djdJobDefinitionName = Nothing
    }

-- | The @nextToken@ value returned from a previous paginated @DescribeJobDefinitions@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
djdNextToken :: Lens' DescribeJobDefinitions (Maybe Text)
djdNextToken = lens _djdNextToken (\s a -> s {_djdNextToken = a})

-- | The status used to filter job definitions.
djdStatus :: Lens' DescribeJobDefinitions (Maybe Text)
djdStatus = lens _djdStatus (\s a -> s {_djdStatus = a})

-- | A list of up to 100 job definition names or full Amazon Resource Name (ARN) entries.
djdJobDefinitions :: Lens' DescribeJobDefinitions [Text]
djdJobDefinitions = lens _djdJobDefinitions (\s a -> s {_djdJobDefinitions = a}) . _Default . _Coerce

-- | The maximum number of results returned by @DescribeJobDefinitions@ in paginated output. When this parameter is used, @DescribeJobDefinitions@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeJobDefinitions@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @DescribeJobDefinitions@ returns up to 100 results and a @nextToken@ value if applicable.
djdMaxResults :: Lens' DescribeJobDefinitions (Maybe Int)
djdMaxResults = lens _djdMaxResults (\s a -> s {_djdMaxResults = a})

-- | The name of the job definition to describe.
djdJobDefinitionName :: Lens' DescribeJobDefinitions (Maybe Text)
djdJobDefinitionName = lens _djdJobDefinitionName (\s a -> s {_djdJobDefinitionName = a})

instance AWSPager DescribeJobDefinitions where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsJobDefinitions) = Nothing
    | otherwise =
      Just $ rq & djdNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeJobDefinitions where
  type
    Rs DescribeJobDefinitions =
      DescribeJobDefinitionsResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          DescribeJobDefinitionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "jobDefinitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeJobDefinitions

instance NFData DescribeJobDefinitions

instance ToHeaders DescribeJobDefinitions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeJobDefinitions where
  toJSON DescribeJobDefinitions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _djdNextToken,
            ("status" .=) <$> _djdStatus,
            ("jobDefinitions" .=) <$> _djdJobDefinitions,
            ("maxResults" .=) <$> _djdMaxResults,
            ("jobDefinitionName" .=) <$> _djdJobDefinitionName
          ]
      )

instance ToPath DescribeJobDefinitions where
  toPath = const "/v1/describejobdefinitions"

instance ToQuery DescribeJobDefinitions where
  toQuery = const mempty

-- | /See:/ 'describeJobDefinitionsResponse' smart constructor.
data DescribeJobDefinitionsResponse = DescribeJobDefinitionsResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsJobDefinitions ::
      !( Maybe
           [JobDefinition]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeJobDefinitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The @nextToken@ value to include in a future @DescribeJobDefinitions@ request. When the results of a @DescribeJobDefinitions@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'desrsJobDefinitions' - The list of job definitions.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeJobDefinitionsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeJobDefinitionsResponse
describeJobDefinitionsResponse pResponseStatus_ =
  DescribeJobDefinitionsResponse'
    { _desrsNextToken =
        Nothing,
      _desrsJobDefinitions = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @DescribeJobDefinitions@ request. When the results of a @DescribeJobDefinitions@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
desrsNextToken :: Lens' DescribeJobDefinitionsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | The list of job definitions.
desrsJobDefinitions :: Lens' DescribeJobDefinitionsResponse [JobDefinition]
desrsJobDefinitions = lens _desrsJobDefinitions (\s a -> s {_desrsJobDefinitions = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeJobDefinitionsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeJobDefinitionsResponse
