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
-- Module      : Network.AWS.SageMaker.ListWorkforces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this operation to list all private and vendor workforces in an AWS Region. Note that you can only have one private workforce per AWS Region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListWorkforces
  ( -- * Creating a Request
    listWorkforces,
    ListWorkforces,

    -- * Request Lenses
    lwSortOrder,
    lwNextToken,
    lwNameContains,
    lwMaxResults,
    lwSortBy,

    -- * Destructuring the Response
    listWorkforcesResponse,
    ListWorkforcesResponse,

    -- * Response Lenses
    lwrwrsNextToken,
    lwrwrsResponseStatus,
    lwrwrsWorkforces,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listWorkforces' smart constructor.
data ListWorkforces = ListWorkforces'
  { _lwSortOrder ::
      !(Maybe SortOrder),
    _lwNextToken :: !(Maybe Text),
    _lwNameContains :: !(Maybe Text),
    _lwMaxResults :: !(Maybe Nat),
    _lwSortBy ::
      !(Maybe ListWorkforcesSortByOptions)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListWorkforces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwSortOrder' - Sort workforces in ascending or descending order.
--
-- * 'lwNextToken' - A token to resume pagination.
--
-- * 'lwNameContains' - A filter you can use to search for workforces using part of the workforce name.
--
-- * 'lwMaxResults' - The maximum number of workforces returned in the response.
--
-- * 'lwSortBy' - Sort workforces using the workforce name or creation date.
listWorkforces ::
  ListWorkforces
listWorkforces =
  ListWorkforces'
    { _lwSortOrder = Nothing,
      _lwNextToken = Nothing,
      _lwNameContains = Nothing,
      _lwMaxResults = Nothing,
      _lwSortBy = Nothing
    }

-- | Sort workforces in ascending or descending order.
lwSortOrder :: Lens' ListWorkforces (Maybe SortOrder)
lwSortOrder = lens _lwSortOrder (\s a -> s {_lwSortOrder = a})

-- | A token to resume pagination.
lwNextToken :: Lens' ListWorkforces (Maybe Text)
lwNextToken = lens _lwNextToken (\s a -> s {_lwNextToken = a})

-- | A filter you can use to search for workforces using part of the workforce name.
lwNameContains :: Lens' ListWorkforces (Maybe Text)
lwNameContains = lens _lwNameContains (\s a -> s {_lwNameContains = a})

-- | The maximum number of workforces returned in the response.
lwMaxResults :: Lens' ListWorkforces (Maybe Natural)
lwMaxResults = lens _lwMaxResults (\s a -> s {_lwMaxResults = a}) . mapping _Nat

-- | Sort workforces using the workforce name or creation date.
lwSortBy :: Lens' ListWorkforces (Maybe ListWorkforcesSortByOptions)
lwSortBy = lens _lwSortBy (\s a -> s {_lwSortBy = a})

instance AWSPager ListWorkforces where
  page rq rs
    | stop (rs ^. lwrwrsNextToken) = Nothing
    | stop (rs ^. lwrwrsWorkforces) = Nothing
    | otherwise =
      Just $ rq & lwNextToken .~ rs ^. lwrwrsNextToken

instance AWSRequest ListWorkforces where
  type Rs ListWorkforces = ListWorkforcesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListWorkforcesResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Workforces" .!@ mempty)
      )

instance Hashable ListWorkforces

instance NFData ListWorkforces

instance ToHeaders ListWorkforces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListWorkforces" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListWorkforces where
  toJSON ListWorkforces' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lwSortOrder,
            ("NextToken" .=) <$> _lwNextToken,
            ("NameContains" .=) <$> _lwNameContains,
            ("MaxResults" .=) <$> _lwMaxResults,
            ("SortBy" .=) <$> _lwSortBy
          ]
      )

instance ToPath ListWorkforces where
  toPath = const "/"

instance ToQuery ListWorkforces where
  toQuery = const mempty

-- | /See:/ 'listWorkforcesResponse' smart constructor.
data ListWorkforcesResponse = ListWorkforcesResponse'
  { _lwrwrsNextToken ::
      !(Maybe Text),
    _lwrwrsResponseStatus ::
      !Int,
    _lwrwrsWorkforces ::
      ![Workforce]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListWorkforcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwrwrsNextToken' - A token to resume pagination.
--
-- * 'lwrwrsResponseStatus' - -- | The response status code.
--
-- * 'lwrwrsWorkforces' - A list containing information about your workforce.
listWorkforcesResponse ::
  -- | 'lwrwrsResponseStatus'
  Int ->
  ListWorkforcesResponse
listWorkforcesResponse pResponseStatus_ =
  ListWorkforcesResponse'
    { _lwrwrsNextToken = Nothing,
      _lwrwrsResponseStatus = pResponseStatus_,
      _lwrwrsWorkforces = mempty
    }

-- | A token to resume pagination.
lwrwrsNextToken :: Lens' ListWorkforcesResponse (Maybe Text)
lwrwrsNextToken = lens _lwrwrsNextToken (\s a -> s {_lwrwrsNextToken = a})

-- | -- | The response status code.
lwrwrsResponseStatus :: Lens' ListWorkforcesResponse Int
lwrwrsResponseStatus = lens _lwrwrsResponseStatus (\s a -> s {_lwrwrsResponseStatus = a})

-- | A list containing information about your workforce.
lwrwrsWorkforces :: Lens' ListWorkforcesResponse [Workforce]
lwrwrsWorkforces = lens _lwrwrsWorkforces (\s a -> s {_lwrwrsWorkforces = a}) . _Coerce

instance NFData ListWorkforcesResponse
