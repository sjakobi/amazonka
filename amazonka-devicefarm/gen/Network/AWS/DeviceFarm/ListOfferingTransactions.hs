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
-- Module      : Network.AWS.DeviceFarm.ListOfferingTransactions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a @NotEligible@ error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support@amazon.com> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListOfferingTransactions
  ( -- * Creating a Request
    listOfferingTransactions,
    ListOfferingTransactions,

    -- * Request Lenses
    lotNextToken,

    -- * Destructuring the Response
    listOfferingTransactionsResponse,
    ListOfferingTransactionsResponse,

    -- * Response Lenses
    lotrrsOfferingTransactions,
    lotrrsNextToken,
    lotrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to list the offering transaction history.
--
--
--
-- /See:/ 'listOfferingTransactions' smart constructor.
newtype ListOfferingTransactions = ListOfferingTransactions'
  { _lotNextToken ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListOfferingTransactions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lotNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
listOfferingTransactions ::
  ListOfferingTransactions
listOfferingTransactions =
  ListOfferingTransactions' {_lotNextToken = Nothing}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lotNextToken :: Lens' ListOfferingTransactions (Maybe Text)
lotNextToken = lens _lotNextToken (\s a -> s {_lotNextToken = a})

instance AWSPager ListOfferingTransactions where
  page rq rs
    | stop (rs ^. lotrrsNextToken) = Nothing
    | stop (rs ^. lotrrsOfferingTransactions) = Nothing
    | otherwise =
      Just $ rq & lotNextToken .~ rs ^. lotrrsNextToken

instance AWSRequest ListOfferingTransactions where
  type
    Rs ListOfferingTransactions =
      ListOfferingTransactionsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListOfferingTransactionsResponse'
            <$> (x .?> "offeringTransactions" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListOfferingTransactions

instance NFData ListOfferingTransactions

instance ToHeaders ListOfferingTransactions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListOfferingTransactions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOfferingTransactions where
  toJSON ListOfferingTransactions' {..} =
    object
      (catMaybes [("nextToken" .=) <$> _lotNextToken])

instance ToPath ListOfferingTransactions where
  toPath = const "/"

instance ToQuery ListOfferingTransactions where
  toQuery = const mempty

-- | Returns the transaction log of the specified offerings.
--
--
--
-- /See:/ 'listOfferingTransactionsResponse' smart constructor.
data ListOfferingTransactionsResponse = ListOfferingTransactionsResponse'
  { _lotrrsOfferingTransactions ::
      !( Maybe
           [OfferingTransaction]
       ),
    _lotrrsNextToken ::
      !( Maybe
           Text
       ),
    _lotrrsResponseStatus ::
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

-- | Creates a value of 'ListOfferingTransactionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lotrrsOfferingTransactions' - The audit log of subscriptions you have purchased and modified through AWS Device Farm.
--
-- * 'lotrrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lotrrsResponseStatus' - -- | The response status code.
listOfferingTransactionsResponse ::
  -- | 'lotrrsResponseStatus'
  Int ->
  ListOfferingTransactionsResponse
listOfferingTransactionsResponse pResponseStatus_ =
  ListOfferingTransactionsResponse'
    { _lotrrsOfferingTransactions =
        Nothing,
      _lotrrsNextToken = Nothing,
      _lotrrsResponseStatus = pResponseStatus_
    }

-- | The audit log of subscriptions you have purchased and modified through AWS Device Farm.
lotrrsOfferingTransactions :: Lens' ListOfferingTransactionsResponse [OfferingTransaction]
lotrrsOfferingTransactions = lens _lotrrsOfferingTransactions (\s a -> s {_lotrrsOfferingTransactions = a}) . _Default . _Coerce

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lotrrsNextToken :: Lens' ListOfferingTransactionsResponse (Maybe Text)
lotrrsNextToken = lens _lotrrsNextToken (\s a -> s {_lotrrsNextToken = a})

-- | -- | The response status code.
lotrrsResponseStatus :: Lens' ListOfferingTransactionsResponse Int
lotrrsResponseStatus = lens _lotrrsResponseStatus (\s a -> s {_lotrrsResponseStatus = a})

instance NFData ListOfferingTransactionsResponse
