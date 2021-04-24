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
-- Module      : Network.AWS.Budgets.DescribeBudgetPerformanceHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the history for @DAILY@ , @MONTHLY@ , and @QUARTERLY@ budgets. Budget history isn't available for @ANNUAL@ budgets.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Budgets.DescribeBudgetPerformanceHistory
  ( -- * Creating a Request
    describeBudgetPerformanceHistory,
    DescribeBudgetPerformanceHistory,

    -- * Request Lenses
    dbphNextToken,
    dbphMaxResults,
    dbphTimePeriod,
    dbphAccountId,
    dbphBudgetName,

    -- * Destructuring the Response
    describeBudgetPerformanceHistoryResponse,
    DescribeBudgetPerformanceHistoryResponse,

    -- * Response Lenses
    dbphrrsBudgetPerformanceHistory,
    dbphrrsNextToken,
    dbphrrsResponseStatus,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBudgetPerformanceHistory' smart constructor.
data DescribeBudgetPerformanceHistory = DescribeBudgetPerformanceHistory'
  { _dbphNextToken ::
      !( Maybe
           Text
       ),
    _dbphMaxResults ::
      !( Maybe
           Nat
       ),
    _dbphTimePeriod ::
      !( Maybe
           TimePeriod
       ),
    _dbphAccountId ::
      !Text,
    _dbphBudgetName ::
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

-- | Creates a value of 'DescribeBudgetPerformanceHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbphNextToken' - Undocumented member.
--
-- * 'dbphMaxResults' - Undocumented member.
--
-- * 'dbphTimePeriod' - Retrieves how often the budget went into an @ALARM@ state for the specified time period.
--
-- * 'dbphAccountId' - Undocumented member.
--
-- * 'dbphBudgetName' - Undocumented member.
describeBudgetPerformanceHistory ::
  -- | 'dbphAccountId'
  Text ->
  -- | 'dbphBudgetName'
  Text ->
  DescribeBudgetPerformanceHistory
describeBudgetPerformanceHistory
  pAccountId_
  pBudgetName_ =
    DescribeBudgetPerformanceHistory'
      { _dbphNextToken =
          Nothing,
        _dbphMaxResults = Nothing,
        _dbphTimePeriod = Nothing,
        _dbphAccountId = pAccountId_,
        _dbphBudgetName = pBudgetName_
      }

-- | Undocumented member.
dbphNextToken :: Lens' DescribeBudgetPerformanceHistory (Maybe Text)
dbphNextToken = lens _dbphNextToken (\s a -> s {_dbphNextToken = a})

-- | Undocumented member.
dbphMaxResults :: Lens' DescribeBudgetPerformanceHistory (Maybe Natural)
dbphMaxResults = lens _dbphMaxResults (\s a -> s {_dbphMaxResults = a}) . mapping _Nat

-- | Retrieves how often the budget went into an @ALARM@ state for the specified time period.
dbphTimePeriod :: Lens' DescribeBudgetPerformanceHistory (Maybe TimePeriod)
dbphTimePeriod = lens _dbphTimePeriod (\s a -> s {_dbphTimePeriod = a})

-- | Undocumented member.
dbphAccountId :: Lens' DescribeBudgetPerformanceHistory Text
dbphAccountId = lens _dbphAccountId (\s a -> s {_dbphAccountId = a})

-- | Undocumented member.
dbphBudgetName :: Lens' DescribeBudgetPerformanceHistory Text
dbphBudgetName = lens _dbphBudgetName (\s a -> s {_dbphBudgetName = a})

instance AWSPager DescribeBudgetPerformanceHistory where
  page rq rs
    | stop (rs ^. dbphrrsNextToken) = Nothing
    | stop (rs ^. dbphrrsBudgetPerformanceHistory) =
      Nothing
    | otherwise =
      Just $ rq & dbphNextToken .~ rs ^. dbphrrsNextToken

instance AWSRequest DescribeBudgetPerformanceHistory where
  type
    Rs DescribeBudgetPerformanceHistory =
      DescribeBudgetPerformanceHistoryResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          DescribeBudgetPerformanceHistoryResponse'
            <$> (x .?> "BudgetPerformanceHistory")
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBudgetPerformanceHistory

instance NFData DescribeBudgetPerformanceHistory

instance ToHeaders DescribeBudgetPerformanceHistory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.DescribeBudgetPerformanceHistory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBudgetPerformanceHistory where
  toJSON DescribeBudgetPerformanceHistory' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dbphNextToken,
            ("MaxResults" .=) <$> _dbphMaxResults,
            ("TimePeriod" .=) <$> _dbphTimePeriod,
            Just ("AccountId" .= _dbphAccountId),
            Just ("BudgetName" .= _dbphBudgetName)
          ]
      )

instance ToPath DescribeBudgetPerformanceHistory where
  toPath = const "/"

instance ToQuery DescribeBudgetPerformanceHistory where
  toQuery = const mempty

-- | /See:/ 'describeBudgetPerformanceHistoryResponse' smart constructor.
data DescribeBudgetPerformanceHistoryResponse = DescribeBudgetPerformanceHistoryResponse'
  { _dbphrrsBudgetPerformanceHistory ::
      !( Maybe
           BudgetPerformanceHistory
       ),
    _dbphrrsNextToken ::
      !( Maybe
           Text
       ),
    _dbphrrsResponseStatus ::
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

-- | Creates a value of 'DescribeBudgetPerformanceHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbphrrsBudgetPerformanceHistory' - The history of how often the budget has gone into an @ALARM@ state. For @DAILY@ budgets, the history saves the state of the budget for the last 60 days. For @MONTHLY@ budgets, the history saves the state of the budget for the current month plus the last 12 months. For @QUARTERLY@ budgets, the history saves the state of the budget for the last four quarters.
--
-- * 'dbphrrsNextToken' - Undocumented member.
--
-- * 'dbphrrsResponseStatus' - -- | The response status code.
describeBudgetPerformanceHistoryResponse ::
  -- | 'dbphrrsResponseStatus'
  Int ->
  DescribeBudgetPerformanceHistoryResponse
describeBudgetPerformanceHistoryResponse
  pResponseStatus_ =
    DescribeBudgetPerformanceHistoryResponse'
      { _dbphrrsBudgetPerformanceHistory =
          Nothing,
        _dbphrrsNextToken = Nothing,
        _dbphrrsResponseStatus =
          pResponseStatus_
      }

-- | The history of how often the budget has gone into an @ALARM@ state. For @DAILY@ budgets, the history saves the state of the budget for the last 60 days. For @MONTHLY@ budgets, the history saves the state of the budget for the current month plus the last 12 months. For @QUARTERLY@ budgets, the history saves the state of the budget for the last four quarters.
dbphrrsBudgetPerformanceHistory :: Lens' DescribeBudgetPerformanceHistoryResponse (Maybe BudgetPerformanceHistory)
dbphrrsBudgetPerformanceHistory = lens _dbphrrsBudgetPerformanceHistory (\s a -> s {_dbphrrsBudgetPerformanceHistory = a})

-- | Undocumented member.
dbphrrsNextToken :: Lens' DescribeBudgetPerformanceHistoryResponse (Maybe Text)
dbphrrsNextToken = lens _dbphrrsNextToken (\s a -> s {_dbphrrsNextToken = a})

-- | -- | The response status code.
dbphrrsResponseStatus :: Lens' DescribeBudgetPerformanceHistoryResponse Int
dbphrrsResponseStatus = lens _dbphrrsResponseStatus (\s a -> s {_dbphrrsResponseStatus = a})

instance
  NFData
    DescribeBudgetPerformanceHistoryResponse
