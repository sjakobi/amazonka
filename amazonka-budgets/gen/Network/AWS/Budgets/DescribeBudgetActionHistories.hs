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
-- Module      : Network.AWS.Budgets.DescribeBudgetActionHistories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a budget action history detail.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Budgets.DescribeBudgetActionHistories
  ( -- * Creating a Request
    describeBudgetActionHistories,
    DescribeBudgetActionHistories,

    -- * Request Lenses
    dbahNextToken,
    dbahMaxResults,
    dbahTimePeriod,
    dbahAccountId,
    dbahBudgetName,
    dbahActionId,

    -- * Destructuring the Response
    describeBudgetActionHistoriesResponse,
    DescribeBudgetActionHistoriesResponse,

    -- * Response Lenses
    dbahrrsNextToken,
    dbahrrsResponseStatus,
    dbahrrsActionHistories,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeBudgetActionHistories' smart constructor.
data DescribeBudgetActionHistories = DescribeBudgetActionHistories'
  { _dbahNextToken ::
      !( Maybe
           Text
       ),
    _dbahMaxResults ::
      !( Maybe
           Nat
       ),
    _dbahTimePeriod ::
      !( Maybe
           TimePeriod
       ),
    _dbahAccountId ::
      !Text,
    _dbahBudgetName ::
      !Text,
    _dbahActionId ::
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

-- | Creates a value of 'DescribeBudgetActionHistories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbahNextToken' - Undocumented member.
--
-- * 'dbahMaxResults' - Undocumented member.
--
-- * 'dbahTimePeriod' - Undocumented member.
--
-- * 'dbahAccountId' - Undocumented member.
--
-- * 'dbahBudgetName' - Undocumented member.
--
-- * 'dbahActionId' - A system-generated universally unique identifier (UUID) for the action.
describeBudgetActionHistories ::
  -- | 'dbahAccountId'
  Text ->
  -- | 'dbahBudgetName'
  Text ->
  -- | 'dbahActionId'
  Text ->
  DescribeBudgetActionHistories
describeBudgetActionHistories
  pAccountId_
  pBudgetName_
  pActionId_ =
    DescribeBudgetActionHistories'
      { _dbahNextToken =
          Nothing,
        _dbahMaxResults = Nothing,
        _dbahTimePeriod = Nothing,
        _dbahAccountId = pAccountId_,
        _dbahBudgetName = pBudgetName_,
        _dbahActionId = pActionId_
      }

-- | Undocumented member.
dbahNextToken :: Lens' DescribeBudgetActionHistories (Maybe Text)
dbahNextToken = lens _dbahNextToken (\s a -> s {_dbahNextToken = a})

-- | Undocumented member.
dbahMaxResults :: Lens' DescribeBudgetActionHistories (Maybe Natural)
dbahMaxResults = lens _dbahMaxResults (\s a -> s {_dbahMaxResults = a}) . mapping _Nat

-- | Undocumented member.
dbahTimePeriod :: Lens' DescribeBudgetActionHistories (Maybe TimePeriod)
dbahTimePeriod = lens _dbahTimePeriod (\s a -> s {_dbahTimePeriod = a})

-- | Undocumented member.
dbahAccountId :: Lens' DescribeBudgetActionHistories Text
dbahAccountId = lens _dbahAccountId (\s a -> s {_dbahAccountId = a})

-- | Undocumented member.
dbahBudgetName :: Lens' DescribeBudgetActionHistories Text
dbahBudgetName = lens _dbahBudgetName (\s a -> s {_dbahBudgetName = a})

-- | A system-generated universally unique identifier (UUID) for the action.
dbahActionId :: Lens' DescribeBudgetActionHistories Text
dbahActionId = lens _dbahActionId (\s a -> s {_dbahActionId = a})

instance AWSPager DescribeBudgetActionHistories where
  page rq rs
    | stop (rs ^. dbahrrsNextToken) = Nothing
    | stop (rs ^. dbahrrsActionHistories) = Nothing
    | otherwise =
      Just $ rq & dbahNextToken .~ rs ^. dbahrrsNextToken

instance AWSRequest DescribeBudgetActionHistories where
  type
    Rs DescribeBudgetActionHistories =
      DescribeBudgetActionHistoriesResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          DescribeBudgetActionHistoriesResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "ActionHistories" .!@ mempty)
      )

instance Hashable DescribeBudgetActionHistories

instance NFData DescribeBudgetActionHistories

instance ToHeaders DescribeBudgetActionHistories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.DescribeBudgetActionHistories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBudgetActionHistories where
  toJSON DescribeBudgetActionHistories' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dbahNextToken,
            ("MaxResults" .=) <$> _dbahMaxResults,
            ("TimePeriod" .=) <$> _dbahTimePeriod,
            Just ("AccountId" .= _dbahAccountId),
            Just ("BudgetName" .= _dbahBudgetName),
            Just ("ActionId" .= _dbahActionId)
          ]
      )

instance ToPath DescribeBudgetActionHistories where
  toPath = const "/"

instance ToQuery DescribeBudgetActionHistories where
  toQuery = const mempty

-- | /See:/ 'describeBudgetActionHistoriesResponse' smart constructor.
data DescribeBudgetActionHistoriesResponse = DescribeBudgetActionHistoriesResponse'
  { _dbahrrsNextToken ::
      !( Maybe
           Text
       ),
    _dbahrrsResponseStatus ::
      !Int,
    _dbahrrsActionHistories ::
      ![ActionHistory]
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeBudgetActionHistoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbahrrsNextToken' - Undocumented member.
--
-- * 'dbahrrsResponseStatus' - -- | The response status code.
--
-- * 'dbahrrsActionHistories' - The historical record of the budget action resource.
describeBudgetActionHistoriesResponse ::
  -- | 'dbahrrsResponseStatus'
  Int ->
  DescribeBudgetActionHistoriesResponse
describeBudgetActionHistoriesResponse
  pResponseStatus_ =
    DescribeBudgetActionHistoriesResponse'
      { _dbahrrsNextToken =
          Nothing,
        _dbahrrsResponseStatus =
          pResponseStatus_,
        _dbahrrsActionHistories = mempty
      }

-- | Undocumented member.
dbahrrsNextToken :: Lens' DescribeBudgetActionHistoriesResponse (Maybe Text)
dbahrrsNextToken = lens _dbahrrsNextToken (\s a -> s {_dbahrrsNextToken = a})

-- | -- | The response status code.
dbahrrsResponseStatus :: Lens' DescribeBudgetActionHistoriesResponse Int
dbahrrsResponseStatus = lens _dbahrrsResponseStatus (\s a -> s {_dbahrrsResponseStatus = a})

-- | The historical record of the budget action resource.
dbahrrsActionHistories :: Lens' DescribeBudgetActionHistoriesResponse [ActionHistory]
dbahrrsActionHistories = lens _dbahrrsActionHistories (\s a -> s {_dbahrrsActionHistories = a}) . _Coerce

instance NFData DescribeBudgetActionHistoriesResponse
