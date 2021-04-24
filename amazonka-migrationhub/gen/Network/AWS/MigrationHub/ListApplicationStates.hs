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
-- Module      : Network.AWS.MigrationHub.ListApplicationStates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the migration statuses for your applications. If you use the optional @ApplicationIds@ parameter, only the migration statuses for those applications will be returned.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MigrationHub.ListApplicationStates
  ( -- * Creating a Request
    listApplicationStates,
    ListApplicationStates,

    -- * Request Lenses
    lasNextToken,
    lasMaxResults,
    lasApplicationIds,

    -- * Destructuring the Response
    listApplicationStatesResponse,
    ListApplicationStatesResponse,

    -- * Response Lenses
    lasrrsApplicationStateList,
    lasrrsNextToken,
    lasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listApplicationStates' smart constructor.
data ListApplicationStates = ListApplicationStates'
  { _lasNextToken ::
      !(Maybe Text),
    _lasMaxResults ::
      !(Maybe Nat),
    _lasApplicationIds ::
      !(Maybe (List1 Text))
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListApplicationStates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasNextToken' - If a @NextToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @NextToken@ .
--
-- * 'lasMaxResults' - Maximum number of results to be returned per page.
--
-- * 'lasApplicationIds' - The configurationIds from the Application Discovery Service that uniquely identifies your applications.
listApplicationStates ::
  ListApplicationStates
listApplicationStates =
  ListApplicationStates'
    { _lasNextToken = Nothing,
      _lasMaxResults = Nothing,
      _lasApplicationIds = Nothing
    }

-- | If a @NextToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @NextToken@ .
lasNextToken :: Lens' ListApplicationStates (Maybe Text)
lasNextToken = lens _lasNextToken (\s a -> s {_lasNextToken = a})

-- | Maximum number of results to be returned per page.
lasMaxResults :: Lens' ListApplicationStates (Maybe Natural)
lasMaxResults = lens _lasMaxResults (\s a -> s {_lasMaxResults = a}) . mapping _Nat

-- | The configurationIds from the Application Discovery Service that uniquely identifies your applications.
lasApplicationIds :: Lens' ListApplicationStates (Maybe (NonEmpty Text))
lasApplicationIds = lens _lasApplicationIds (\s a -> s {_lasApplicationIds = a}) . mapping _List1

instance AWSPager ListApplicationStates where
  page rq rs
    | stop (rs ^. lasrrsNextToken) = Nothing
    | stop (rs ^. lasrrsApplicationStateList) = Nothing
    | otherwise =
      Just $ rq & lasNextToken .~ rs ^. lasrrsNextToken

instance AWSRequest ListApplicationStates where
  type
    Rs ListApplicationStates =
      ListApplicationStatesResponse
  request = postJSON migrationHub
  response =
    receiveJSON
      ( \s h x ->
          ListApplicationStatesResponse'
            <$> (x .?> "ApplicationStateList" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListApplicationStates

instance NFData ListApplicationStates

instance ToHeaders ListApplicationStates where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSMigrationHub.ListApplicationStates" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListApplicationStates where
  toJSON ListApplicationStates' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lasNextToken,
            ("MaxResults" .=) <$> _lasMaxResults,
            ("ApplicationIds" .=) <$> _lasApplicationIds
          ]
      )

instance ToPath ListApplicationStates where
  toPath = const "/"

instance ToQuery ListApplicationStates where
  toQuery = const mempty

-- | /See:/ 'listApplicationStatesResponse' smart constructor.
data ListApplicationStatesResponse = ListApplicationStatesResponse'
  { _lasrrsApplicationStateList ::
      !( Maybe
           [ApplicationState]
       ),
    _lasrrsNextToken ::
      !( Maybe
           Text
       ),
    _lasrrsResponseStatus ::
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

-- | Creates a value of 'ListApplicationStatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lasrrsApplicationStateList' - A list of Applications that exist in Application Discovery Service.
--
-- * 'lasrrsNextToken' - If a @NextToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @NextToken@ .
--
-- * 'lasrrsResponseStatus' - -- | The response status code.
listApplicationStatesResponse ::
  -- | 'lasrrsResponseStatus'
  Int ->
  ListApplicationStatesResponse
listApplicationStatesResponse pResponseStatus_ =
  ListApplicationStatesResponse'
    { _lasrrsApplicationStateList =
        Nothing,
      _lasrrsNextToken = Nothing,
      _lasrrsResponseStatus = pResponseStatus_
    }

-- | A list of Applications that exist in Application Discovery Service.
lasrrsApplicationStateList :: Lens' ListApplicationStatesResponse [ApplicationState]
lasrrsApplicationStateList = lens _lasrrsApplicationStateList (\s a -> s {_lasrrsApplicationStateList = a}) . _Default . _Coerce

-- | If a @NextToken@ was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in @NextToken@ .
lasrrsNextToken :: Lens' ListApplicationStatesResponse (Maybe Text)
lasrrsNextToken = lens _lasrrsNextToken (\s a -> s {_lasrrsNextToken = a})

-- | -- | The response status code.
lasrrsResponseStatus :: Lens' ListApplicationStatesResponse Int
lasrrsResponseStatus = lens _lasrrsResponseStatus (\s a -> s {_lasrrsResponseStatus = a})

instance NFData ListApplicationStatesResponse
