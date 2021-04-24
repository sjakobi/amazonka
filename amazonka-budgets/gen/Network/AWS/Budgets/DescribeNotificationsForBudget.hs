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
-- Module      : Network.AWS.Budgets.DescribeNotificationsForBudget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the notifications that are associated with a budget.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Budgets.DescribeNotificationsForBudget
  ( -- * Creating a Request
    describeNotificationsForBudget,
    DescribeNotificationsForBudget,

    -- * Request Lenses
    dnfbNextToken,
    dnfbMaxResults,
    dnfbAccountId,
    dnfbBudgetName,

    -- * Destructuring the Response
    describeNotificationsForBudgetResponse,
    DescribeNotificationsForBudgetResponse,

    -- * Response Lenses
    dnfbrrsNextToken,
    dnfbrrsNotifications,
    dnfbrrsResponseStatus,
  )
where

import Network.AWS.Budgets.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request of DescribeNotificationsForBudget
--
--
--
-- /See:/ 'describeNotificationsForBudget' smart constructor.
data DescribeNotificationsForBudget = DescribeNotificationsForBudget'
  { _dnfbNextToken ::
      !( Maybe
           Text
       ),
    _dnfbMaxResults ::
      !( Maybe
           Nat
       ),
    _dnfbAccountId ::
      !Text,
    _dnfbBudgetName ::
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

-- | Creates a value of 'DescribeNotificationsForBudget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnfbNextToken' - The pagination token that you include in your request to indicate the next set of results that you want to retrieve.
--
-- * 'dnfbMaxResults' - An optional integer that represents how many entries a paginated response contains. The maximum is 100.
--
-- * 'dnfbAccountId' - The @accountId@ that is associated with the budget whose notifications you want descriptions of.
--
-- * 'dnfbBudgetName' - The name of the budget whose notifications you want descriptions of.
describeNotificationsForBudget ::
  -- | 'dnfbAccountId'
  Text ->
  -- | 'dnfbBudgetName'
  Text ->
  DescribeNotificationsForBudget
describeNotificationsForBudget
  pAccountId_
  pBudgetName_ =
    DescribeNotificationsForBudget'
      { _dnfbNextToken =
          Nothing,
        _dnfbMaxResults = Nothing,
        _dnfbAccountId = pAccountId_,
        _dnfbBudgetName = pBudgetName_
      }

-- | The pagination token that you include in your request to indicate the next set of results that you want to retrieve.
dnfbNextToken :: Lens' DescribeNotificationsForBudget (Maybe Text)
dnfbNextToken = lens _dnfbNextToken (\s a -> s {_dnfbNextToken = a})

-- | An optional integer that represents how many entries a paginated response contains. The maximum is 100.
dnfbMaxResults :: Lens' DescribeNotificationsForBudget (Maybe Natural)
dnfbMaxResults = lens _dnfbMaxResults (\s a -> s {_dnfbMaxResults = a}) . mapping _Nat

-- | The @accountId@ that is associated with the budget whose notifications you want descriptions of.
dnfbAccountId :: Lens' DescribeNotificationsForBudget Text
dnfbAccountId = lens _dnfbAccountId (\s a -> s {_dnfbAccountId = a})

-- | The name of the budget whose notifications you want descriptions of.
dnfbBudgetName :: Lens' DescribeNotificationsForBudget Text
dnfbBudgetName = lens _dnfbBudgetName (\s a -> s {_dnfbBudgetName = a})

instance AWSPager DescribeNotificationsForBudget where
  page rq rs
    | stop (rs ^. dnfbrrsNextToken) = Nothing
    | stop (rs ^. dnfbrrsNotifications) = Nothing
    | otherwise =
      Just $ rq & dnfbNextToken .~ rs ^. dnfbrrsNextToken

instance AWSRequest DescribeNotificationsForBudget where
  type
    Rs DescribeNotificationsForBudget =
      DescribeNotificationsForBudgetResponse
  request = postJSON budgets
  response =
    receiveJSON
      ( \s h x ->
          DescribeNotificationsForBudgetResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Notifications" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeNotificationsForBudget

instance NFData DescribeNotificationsForBudget

instance ToHeaders DescribeNotificationsForBudget where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSBudgetServiceGateway.DescribeNotificationsForBudget" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeNotificationsForBudget where
  toJSON DescribeNotificationsForBudget' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dnfbNextToken,
            ("MaxResults" .=) <$> _dnfbMaxResults,
            Just ("AccountId" .= _dnfbAccountId),
            Just ("BudgetName" .= _dnfbBudgetName)
          ]
      )

instance ToPath DescribeNotificationsForBudget where
  toPath = const "/"

instance ToQuery DescribeNotificationsForBudget where
  toQuery = const mempty

-- | Response of GetNotificationsForBudget
--
--
--
-- /See:/ 'describeNotificationsForBudgetResponse' smart constructor.
data DescribeNotificationsForBudgetResponse = DescribeNotificationsForBudgetResponse'
  { _dnfbrrsNextToken ::
      !( Maybe
           Text
       ),
    _dnfbrrsNotifications ::
      !( Maybe
           [Notification]
       ),
    _dnfbrrsResponseStatus ::
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

-- | Creates a value of 'DescribeNotificationsForBudgetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnfbrrsNextToken' - The pagination token in the service response that indicates the next set of results that you can retrieve.
--
-- * 'dnfbrrsNotifications' - A list of notifications that are associated with a budget.
--
-- * 'dnfbrrsResponseStatus' - -- | The response status code.
describeNotificationsForBudgetResponse ::
  -- | 'dnfbrrsResponseStatus'
  Int ->
  DescribeNotificationsForBudgetResponse
describeNotificationsForBudgetResponse
  pResponseStatus_ =
    DescribeNotificationsForBudgetResponse'
      { _dnfbrrsNextToken =
          Nothing,
        _dnfbrrsNotifications = Nothing,
        _dnfbrrsResponseStatus =
          pResponseStatus_
      }

-- | The pagination token in the service response that indicates the next set of results that you can retrieve.
dnfbrrsNextToken :: Lens' DescribeNotificationsForBudgetResponse (Maybe Text)
dnfbrrsNextToken = lens _dnfbrrsNextToken (\s a -> s {_dnfbrrsNextToken = a})

-- | A list of notifications that are associated with a budget.
dnfbrrsNotifications :: Lens' DescribeNotificationsForBudgetResponse [Notification]
dnfbrrsNotifications = lens _dnfbrrsNotifications (\s a -> s {_dnfbrrsNotifications = a}) . _Default . _Coerce

-- | -- | The response status code.
dnfbrrsResponseStatus :: Lens' DescribeNotificationsForBudgetResponse Int
dnfbrrsResponseStatus = lens _dnfbrrsResponseStatus (\s a -> s {_dnfbrrsResponseStatus = a})

instance
  NFData
    DescribeNotificationsForBudgetResponse
