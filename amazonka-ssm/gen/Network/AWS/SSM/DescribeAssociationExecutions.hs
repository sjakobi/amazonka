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
-- Module      : Network.AWS.SSM.DescribeAssociationExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this API action to view all executions for a specific association ID.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeAssociationExecutions
  ( -- * Creating a Request
    describeAssociationExecutions,
    DescribeAssociationExecutions,

    -- * Request Lenses
    dNextToken,
    dMaxResults,
    dFilters,
    dAssociationId,

    -- * Destructuring the Response
    describeAssociationExecutionsResponse,
    DescribeAssociationExecutionsResponse,

    -- * Response Lenses
    daerrsNextToken,
    daerrsAssociationExecutions,
    daerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeAssociationExecutions' smart constructor.
data DescribeAssociationExecutions = DescribeAssociationExecutions'
  { _dNextToken ::
      !( Maybe
           Text
       ),
    _dMaxResults ::
      !( Maybe
           Nat
       ),
    _dFilters ::
      !( Maybe
           ( List1
               AssociationExecutionFilter
           )
       ),
    _dAssociationId ::
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

-- | Creates a value of 'DescribeAssociationExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'dMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dFilters' - Filters for the request. You can specify the following filters and values. ExecutionId (EQUAL) Status (EQUAL) CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)
--
-- * 'dAssociationId' - The association ID for which you want to view execution history details.
describeAssociationExecutions ::
  -- | 'dAssociationId'
  Text ->
  DescribeAssociationExecutions
describeAssociationExecutions pAssociationId_ =
  DescribeAssociationExecutions'
    { _dNextToken =
        Nothing,
      _dMaxResults = Nothing,
      _dFilters = Nothing,
      _dAssociationId = pAssociationId_
    }

-- | A token to start the list. Use this token to get the next set of results.
dNextToken :: Lens' DescribeAssociationExecutions (Maybe Text)
dNextToken = lens _dNextToken (\s a -> s {_dNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dMaxResults :: Lens' DescribeAssociationExecutions (Maybe Natural)
dMaxResults = lens _dMaxResults (\s a -> s {_dMaxResults = a}) . mapping _Nat

-- | Filters for the request. You can specify the following filters and values. ExecutionId (EQUAL) Status (EQUAL) CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)
dFilters :: Lens' DescribeAssociationExecutions (Maybe (NonEmpty AssociationExecutionFilter))
dFilters = lens _dFilters (\s a -> s {_dFilters = a}) . mapping _List1

-- | The association ID for which you want to view execution history details.
dAssociationId :: Lens' DescribeAssociationExecutions Text
dAssociationId = lens _dAssociationId (\s a -> s {_dAssociationId = a})

instance AWSPager DescribeAssociationExecutions where
  page rq rs
    | stop (rs ^. daerrsNextToken) = Nothing
    | stop (rs ^. daerrsAssociationExecutions) = Nothing
    | otherwise =
      Just $ rq & dNextToken .~ rs ^. daerrsNextToken

instance AWSRequest DescribeAssociationExecutions where
  type
    Rs DescribeAssociationExecutions =
      DescribeAssociationExecutionsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeAssociationExecutionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AssociationExecutions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAssociationExecutions

instance NFData DescribeAssociationExecutions

instance ToHeaders DescribeAssociationExecutions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeAssociationExecutions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAssociationExecutions where
  toJSON DescribeAssociationExecutions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dNextToken,
            ("MaxResults" .=) <$> _dMaxResults,
            ("Filters" .=) <$> _dFilters,
            Just ("AssociationId" .= _dAssociationId)
          ]
      )

instance ToPath DescribeAssociationExecutions where
  toPath = const "/"

instance ToQuery DescribeAssociationExecutions where
  toQuery = const mempty

-- | /See:/ 'describeAssociationExecutionsResponse' smart constructor.
data DescribeAssociationExecutionsResponse = DescribeAssociationExecutionsResponse'
  { _daerrsNextToken ::
      !( Maybe
           Text
       ),
    _daerrsAssociationExecutions ::
      !( Maybe
           [AssociationExecution]
       ),
    _daerrsResponseStatus ::
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

-- | Creates a value of 'DescribeAssociationExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daerrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'daerrsAssociationExecutions' - A list of the executions for the specified association ID.
--
-- * 'daerrsResponseStatus' - -- | The response status code.
describeAssociationExecutionsResponse ::
  -- | 'daerrsResponseStatus'
  Int ->
  DescribeAssociationExecutionsResponse
describeAssociationExecutionsResponse
  pResponseStatus_ =
    DescribeAssociationExecutionsResponse'
      { _daerrsNextToken =
          Nothing,
        _daerrsAssociationExecutions =
          Nothing,
        _daerrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of items to return. Use this token to get the next set of results.
daerrsNextToken :: Lens' DescribeAssociationExecutionsResponse (Maybe Text)
daerrsNextToken = lens _daerrsNextToken (\s a -> s {_daerrsNextToken = a})

-- | A list of the executions for the specified association ID.
daerrsAssociationExecutions :: Lens' DescribeAssociationExecutionsResponse [AssociationExecution]
daerrsAssociationExecutions = lens _daerrsAssociationExecutions (\s a -> s {_daerrsAssociationExecutions = a}) . _Default . _Coerce

-- | -- | The response status code.
daerrsResponseStatus :: Lens' DescribeAssociationExecutionsResponse Int
daerrsResponseStatus = lens _daerrsResponseStatus (\s a -> s {_daerrsResponseStatus = a})

instance NFData DescribeAssociationExecutionsResponse
