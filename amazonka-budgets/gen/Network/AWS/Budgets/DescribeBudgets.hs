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
-- Module      : Network.AWS.Budgets.DescribeBudgets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the budgets that are associated with an account.
--
--
-- /Important:/ The Request Syntax section shows the @BudgetLimit@ syntax. For @PlannedBudgetLimits@ , see the <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples Examples> section.
--
--
-- This operation returns paginated results.
module Network.AWS.Budgets.DescribeBudgets
  ( -- * Creating a Request
    describeBudgets,
    DescribeBudgets,

    -- * Request Lenses
    dbsNextToken,
    dbsMaxResults,
    dbsAccountId,

    -- * Destructuring the Response
    describeBudgetsResponse,
    DescribeBudgetsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsBudgets,
    desrsResponseStatus,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request of DescribeBudgets
--
--
--
-- /See:/ 'describeBudgets' smart constructor.
data DescribeBudgets = DescribeBudgets'
  { _dbsNextToken ::
      !(Maybe Text),
    _dbsMaxResults :: !(Maybe Nat),
    _dbsAccountId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeBudgets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbsNextToken' - The pagination token that you include in your request to indicate the next set of results that you want to retrieve.
--
-- * 'dbsMaxResults' - An optional integer that represents how many entries a paginated response contains. The maximum is 100.
--
-- * 'dbsAccountId' - The @accountId@ that is associated with the budgets that you want descriptions of.
describeBudgets ::
  -- | 'dbsAccountId'
  Text ->
  DescribeBudgets
describeBudgets pAccountId_ =
  DescribeBudgets'
    { _dbsNextToken = Nothing,
      _dbsMaxResults = Nothing,
      _dbsAccountId = pAccountId_
    }

-- | The pagination token that you include in your request to indicate the next set of results that you want to retrieve.
dbsNextToken :: Lens' DescribeBudgets (Maybe Text)
dbsNextToken = lens _dbsNextToken (\s a -> s {_dbsNextToken = a})

-- | An optional integer that represents how many entries a paginated response contains. The maximum is 100.
dbsMaxResults :: Lens' DescribeBudgets (Maybe Natural)
dbsMaxResults = lens _dbsMaxResults (\s a -> s {_dbsMaxResults = a}) . mapping _Nat

-- | The @accountId@ that is associated with the budgets that you want descriptions of.
dbsAccountId :: Lens' DescribeBudgets Text
dbsAccountId = lens _dbsAccountId (\s a -> s {_dbsAccountId = a})

instance AWSPager DescribeBudgets where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsBudgets) = Nothing
    | otherwise =
      Just $ rq & dbsNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeBudgets where
  type Rs DescribeBudgets = DescribeBudgetsResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          DescribeBudgetsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Budgets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBudgets

instance NFData DescribeBudgets

instance ToHeaders DescribeBudgets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.DescribeBudgets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBudgets where
  toJSON DescribeBudgets' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dbsNextToken,
            ("MaxResults" .=) <$> _dbsMaxResults,
            Just ("AccountId" .= _dbsAccountId)
          ]
      )

instance ToPath DescribeBudgets where
  toPath = const "/"

instance ToQuery DescribeBudgets where
  toQuery = const mempty

-- | Response of DescribeBudgets
--
--
--
-- /See:/ 'describeBudgetsResponse' smart constructor.
data DescribeBudgetsResponse = DescribeBudgetsResponse'
  { _desrsNextToken ::
      !(Maybe Text),
    _desrsBudgets ::
      !(Maybe [Budget]),
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

-- | Creates a value of 'DescribeBudgetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The pagination token in the service response that indicates the next set of results that you can retrieve.
--
-- * 'desrsBudgets' - A list of budgets.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeBudgetsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeBudgetsResponse
describeBudgetsResponse pResponseStatus_ =
  DescribeBudgetsResponse'
    { _desrsNextToken = Nothing,
      _desrsBudgets = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The pagination token in the service response that indicates the next set of results that you can retrieve.
desrsNextToken :: Lens' DescribeBudgetsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | A list of budgets.
desrsBudgets :: Lens' DescribeBudgetsResponse [Budget]
desrsBudgets = lens _desrsBudgets (\s a -> s {_desrsBudgets = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeBudgetsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeBudgetsResponse
