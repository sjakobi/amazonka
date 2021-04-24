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
-- Module      : Network.AWS.WorkSpaces.DescribeAccountModifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes modifications to the configuration of Bring Your Own License (BYOL) for the specified account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkSpaces.DescribeAccountModifications
  ( -- * Creating a Request
    describeAccountModifications,
    DescribeAccountModifications,

    -- * Request Lenses
    damNextToken,

    -- * Destructuring the Response
    describeAccountModificationsResponse,
    DescribeAccountModificationsResponse,

    -- * Response Lenses
    damrrsNextToken,
    damrrsAccountModifications,
    damrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeAccountModifications' smart constructor.
newtype DescribeAccountModifications = DescribeAccountModifications'
  { _damNextToken ::
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

-- | Creates a value of 'DescribeAccountModifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damNextToken' - If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
describeAccountModifications ::
  DescribeAccountModifications
describeAccountModifications =
  DescribeAccountModifications'
    { _damNextToken =
        Nothing
    }

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
damNextToken :: Lens' DescribeAccountModifications (Maybe Text)
damNextToken = lens _damNextToken (\s a -> s {_damNextToken = a})

instance AWSPager DescribeAccountModifications where
  page rq rs
    | stop (rs ^. damrrsNextToken) = Nothing
    | stop (rs ^. damrrsAccountModifications) = Nothing
    | otherwise =
      Just $ rq & damNextToken .~ rs ^. damrrsNextToken

instance AWSRequest DescribeAccountModifications where
  type
    Rs DescribeAccountModifications =
      DescribeAccountModificationsResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeAccountModificationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AccountModifications" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccountModifications

instance NFData DescribeAccountModifications

instance ToHeaders DescribeAccountModifications where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.DescribeAccountModifications" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAccountModifications where
  toJSON DescribeAccountModifications' {..} =
    object
      (catMaybes [("NextToken" .=) <$> _damNextToken])

instance ToPath DescribeAccountModifications where
  toPath = const "/"

instance ToQuery DescribeAccountModifications where
  toQuery = const mempty

-- | /See:/ 'describeAccountModificationsResponse' smart constructor.
data DescribeAccountModificationsResponse = DescribeAccountModificationsResponse'
  { _damrrsNextToken ::
      !( Maybe
           Text
       ),
    _damrrsAccountModifications ::
      !( Maybe
           [AccountModification]
       ),
    _damrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAccountModificationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damrrsNextToken' - The token to use to retrieve the next set of results, or null if no more results are available.
--
-- * 'damrrsAccountModifications' - The list of modifications to the configuration of BYOL.
--
-- * 'damrrsResponseStatus' - -- | The response status code.
describeAccountModificationsResponse ::
  -- | 'damrrsResponseStatus'
  Int ->
  DescribeAccountModificationsResponse
describeAccountModificationsResponse pResponseStatus_ =
  DescribeAccountModificationsResponse'
    { _damrrsNextToken =
        Nothing,
      _damrrsAccountModifications = Nothing,
      _damrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next set of results, or null if no more results are available.
damrrsNextToken :: Lens' DescribeAccountModificationsResponse (Maybe Text)
damrrsNextToken = lens _damrrsNextToken (\s a -> s {_damrrsNextToken = a})

-- | The list of modifications to the configuration of BYOL.
damrrsAccountModifications :: Lens' DescribeAccountModificationsResponse [AccountModification]
damrrsAccountModifications = lens _damrrsAccountModifications (\s a -> s {_damrrsAccountModifications = a}) . _Default . _Coerce

-- | -- | The response status code.
damrrsResponseStatus :: Lens' DescribeAccountModificationsResponse Int
damrrsResponseStatus = lens _damrrsResponseStatus (\s a -> s {_damrrsResponseStatus = a})

instance NFData DescribeAccountModificationsResponse
