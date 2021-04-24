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
-- Module      : Network.AWS.SSM.DescribeAutomationExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides details about all active and terminated Automation executions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeAutomationExecutions
  ( -- * Creating a Request
    describeAutomationExecutions,
    DescribeAutomationExecutions,

    -- * Request Lenses
    daeNextToken,
    daeMaxResults,
    daeFilters,

    -- * Destructuring the Response
    describeAutomationExecutionsResponse,
    DescribeAutomationExecutionsResponse,

    -- * Response Lenses
    daerarsNextToken,
    daerarsAutomationExecutionMetadataList,
    daerarsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeAutomationExecutions' smart constructor.
data DescribeAutomationExecutions = DescribeAutomationExecutions'
  { _daeNextToken ::
      !(Maybe Text),
    _daeMaxResults ::
      !(Maybe Nat),
    _daeFilters ::
      !( Maybe
           ( List1
               AutomationExecutionFilter
           )
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAutomationExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daeNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'daeMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'daeFilters' - Filters used to limit the scope of executions that are requested.
describeAutomationExecutions ::
  DescribeAutomationExecutions
describeAutomationExecutions =
  DescribeAutomationExecutions'
    { _daeNextToken =
        Nothing,
      _daeMaxResults = Nothing,
      _daeFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
daeNextToken :: Lens' DescribeAutomationExecutions (Maybe Text)
daeNextToken = lens _daeNextToken (\s a -> s {_daeNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
daeMaxResults :: Lens' DescribeAutomationExecutions (Maybe Natural)
daeMaxResults = lens _daeMaxResults (\s a -> s {_daeMaxResults = a}) . mapping _Nat

-- | Filters used to limit the scope of executions that are requested.
daeFilters :: Lens' DescribeAutomationExecutions (Maybe (NonEmpty AutomationExecutionFilter))
daeFilters = lens _daeFilters (\s a -> s {_daeFilters = a}) . mapping _List1

instance AWSPager DescribeAutomationExecutions where
  page rq rs
    | stop (rs ^. daerarsNextToken) = Nothing
    | stop (rs ^. daerarsAutomationExecutionMetadataList) =
      Nothing
    | otherwise =
      Just $ rq & daeNextToken .~ rs ^. daerarsNextToken

instance AWSRequest DescribeAutomationExecutions where
  type
    Rs DescribeAutomationExecutions =
      DescribeAutomationExecutionsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeAutomationExecutionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AutomationExecutionMetadataList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAutomationExecutions

instance NFData DescribeAutomationExecutions

instance ToHeaders DescribeAutomationExecutions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeAutomationExecutions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAutomationExecutions where
  toJSON DescribeAutomationExecutions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _daeNextToken,
            ("MaxResults" .=) <$> _daeMaxResults,
            ("Filters" .=) <$> _daeFilters
          ]
      )

instance ToPath DescribeAutomationExecutions where
  toPath = const "/"

instance ToQuery DescribeAutomationExecutions where
  toQuery = const mempty

-- | /See:/ 'describeAutomationExecutionsResponse' smart constructor.
data DescribeAutomationExecutionsResponse = DescribeAutomationExecutionsResponse'
  { _daerarsNextToken ::
      !( Maybe
           Text
       ),
    _daerarsAutomationExecutionMetadataList ::
      !( Maybe
           [AutomationExecutionMetadata]
       ),
    _daerarsResponseStatus ::
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

-- | Creates a value of 'DescribeAutomationExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daerarsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'daerarsAutomationExecutionMetadataList' - The list of details about each automation execution which has occurred which matches the filter specification, if any.
--
-- * 'daerarsResponseStatus' - -- | The response status code.
describeAutomationExecutionsResponse ::
  -- | 'daerarsResponseStatus'
  Int ->
  DescribeAutomationExecutionsResponse
describeAutomationExecutionsResponse pResponseStatus_ =
  DescribeAutomationExecutionsResponse'
    { _daerarsNextToken =
        Nothing,
      _daerarsAutomationExecutionMetadataList =
        Nothing,
      _daerarsResponseStatus =
        pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
daerarsNextToken :: Lens' DescribeAutomationExecutionsResponse (Maybe Text)
daerarsNextToken = lens _daerarsNextToken (\s a -> s {_daerarsNextToken = a})

-- | The list of details about each automation execution which has occurred which matches the filter specification, if any.
daerarsAutomationExecutionMetadataList :: Lens' DescribeAutomationExecutionsResponse [AutomationExecutionMetadata]
daerarsAutomationExecutionMetadataList = lens _daerarsAutomationExecutionMetadataList (\s a -> s {_daerarsAutomationExecutionMetadataList = a}) . _Default . _Coerce

-- | -- | The response status code.
daerarsResponseStatus :: Lens' DescribeAutomationExecutionsResponse Int
daerarsResponseStatus = lens _daerarsResponseStatus (\s a -> s {_daerarsResponseStatus = a})

instance NFData DescribeAutomationExecutionsResponse
