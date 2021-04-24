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
-- Module      : Network.AWS.ECS.ListTaskDefinitionFamilies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any @ACTIVE@ task definition revisions).
--
--
-- You can filter out task definition families that do not contain any @ACTIVE@ task definition revisions by setting the @status@ parameter to @ACTIVE@ . You can also filter the results with the @familyPrefix@ parameter.
--
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListTaskDefinitionFamilies
  ( -- * Creating a Request
    listTaskDefinitionFamilies,
    ListTaskDefinitionFamilies,

    -- * Request Lenses
    ltdfNextToken,
    ltdfStatus,
    ltdfMaxResults,
    ltdfFamilyPrefix,

    -- * Destructuring the Response
    listTaskDefinitionFamiliesResponse,
    ListTaskDefinitionFamiliesResponse,

    -- * Response Lenses
    ltdfrrsNextToken,
    ltdfrrsFamilies,
    ltdfrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTaskDefinitionFamilies' smart constructor.
data ListTaskDefinitionFamilies = ListTaskDefinitionFamilies'
  { _ltdfNextToken ::
      !(Maybe Text),
    _ltdfStatus ::
      !( Maybe
           TaskDefinitionFamilyStatus
       ),
    _ltdfMaxResults ::
      !(Maybe Int),
    _ltdfFamilyPrefix ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTaskDefinitionFamilies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltdfNextToken' - The @nextToken@ value returned from a @ListTaskDefinitionFamilies@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
--
-- * 'ltdfStatus' - The task definition family status with which to filter the @ListTaskDefinitionFamilies@ results. By default, both @ACTIVE@ and @INACTIVE@ task definition families are listed. If this parameter is set to @ACTIVE@ , only task definition families that have an @ACTIVE@ task definition revision are returned. If this parameter is set to @INACTIVE@ , only task definition families that do not have any @ACTIVE@ task definition revisions are returned. If you paginate the resulting output, be sure to keep the @status@ value constant in each subsequent request.
--
-- * 'ltdfMaxResults' - The maximum number of task definition family results returned by @ListTaskDefinitionFamilies@ in paginated output. When this parameter is used, @ListTaskDefinitions@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListTaskDefinitionFamilies@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListTaskDefinitionFamilies@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'ltdfFamilyPrefix' - The @familyPrefix@ is a string that is used to filter the results of @ListTaskDefinitionFamilies@ . If you specify a @familyPrefix@ , only task definition family names that begin with the @familyPrefix@ string are returned.
listTaskDefinitionFamilies ::
  ListTaskDefinitionFamilies
listTaskDefinitionFamilies =
  ListTaskDefinitionFamilies'
    { _ltdfNextToken =
        Nothing,
      _ltdfStatus = Nothing,
      _ltdfMaxResults = Nothing,
      _ltdfFamilyPrefix = Nothing
    }

-- | The @nextToken@ value returned from a @ListTaskDefinitionFamilies@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
ltdfNextToken :: Lens' ListTaskDefinitionFamilies (Maybe Text)
ltdfNextToken = lens _ltdfNextToken (\s a -> s {_ltdfNextToken = a})

-- | The task definition family status with which to filter the @ListTaskDefinitionFamilies@ results. By default, both @ACTIVE@ and @INACTIVE@ task definition families are listed. If this parameter is set to @ACTIVE@ , only task definition families that have an @ACTIVE@ task definition revision are returned. If this parameter is set to @INACTIVE@ , only task definition families that do not have any @ACTIVE@ task definition revisions are returned. If you paginate the resulting output, be sure to keep the @status@ value constant in each subsequent request.
ltdfStatus :: Lens' ListTaskDefinitionFamilies (Maybe TaskDefinitionFamilyStatus)
ltdfStatus = lens _ltdfStatus (\s a -> s {_ltdfStatus = a})

-- | The maximum number of task definition family results returned by @ListTaskDefinitionFamilies@ in paginated output. When this parameter is used, @ListTaskDefinitions@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListTaskDefinitionFamilies@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListTaskDefinitionFamilies@ returns up to 100 results and a @nextToken@ value if applicable.
ltdfMaxResults :: Lens' ListTaskDefinitionFamilies (Maybe Int)
ltdfMaxResults = lens _ltdfMaxResults (\s a -> s {_ltdfMaxResults = a})

-- | The @familyPrefix@ is a string that is used to filter the results of @ListTaskDefinitionFamilies@ . If you specify a @familyPrefix@ , only task definition family names that begin with the @familyPrefix@ string are returned.
ltdfFamilyPrefix :: Lens' ListTaskDefinitionFamilies (Maybe Text)
ltdfFamilyPrefix = lens _ltdfFamilyPrefix (\s a -> s {_ltdfFamilyPrefix = a})

instance AWSPager ListTaskDefinitionFamilies where
  page rq rs
    | stop (rs ^. ltdfrrsNextToken) = Nothing
    | stop (rs ^. ltdfrrsFamilies) = Nothing
    | otherwise =
      Just $ rq & ltdfNextToken .~ rs ^. ltdfrrsNextToken

instance AWSRequest ListTaskDefinitionFamilies where
  type
    Rs ListTaskDefinitionFamilies =
      ListTaskDefinitionFamiliesResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          ListTaskDefinitionFamiliesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "families" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTaskDefinitionFamilies

instance NFData ListTaskDefinitionFamilies

instance ToHeaders ListTaskDefinitionFamilies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.ListTaskDefinitionFamilies" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTaskDefinitionFamilies where
  toJSON ListTaskDefinitionFamilies' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ltdfNextToken,
            ("status" .=) <$> _ltdfStatus,
            ("maxResults" .=) <$> _ltdfMaxResults,
            ("familyPrefix" .=) <$> _ltdfFamilyPrefix
          ]
      )

instance ToPath ListTaskDefinitionFamilies where
  toPath = const "/"

instance ToQuery ListTaskDefinitionFamilies where
  toQuery = const mempty

-- | /See:/ 'listTaskDefinitionFamiliesResponse' smart constructor.
data ListTaskDefinitionFamiliesResponse = ListTaskDefinitionFamiliesResponse'
  { _ltdfrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltdfrrsFamilies ::
      !( Maybe
           [Text]
       ),
    _ltdfrrsResponseStatus ::
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

-- | Creates a value of 'ListTaskDefinitionFamiliesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltdfrrsNextToken' - The @nextToken@ value to include in a future @ListTaskDefinitionFamilies@ request. When the results of a @ListTaskDefinitionFamilies@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'ltdfrrsFamilies' - The list of task definition family names that match the @ListTaskDefinitionFamilies@ request.
--
-- * 'ltdfrrsResponseStatus' - -- | The response status code.
listTaskDefinitionFamiliesResponse ::
  -- | 'ltdfrrsResponseStatus'
  Int ->
  ListTaskDefinitionFamiliesResponse
listTaskDefinitionFamiliesResponse pResponseStatus_ =
  ListTaskDefinitionFamiliesResponse'
    { _ltdfrrsNextToken =
        Nothing,
      _ltdfrrsFamilies = Nothing,
      _ltdfrrsResponseStatus =
        pResponseStatus_
    }

-- | The @nextToken@ value to include in a future @ListTaskDefinitionFamilies@ request. When the results of a @ListTaskDefinitionFamilies@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
ltdfrrsNextToken :: Lens' ListTaskDefinitionFamiliesResponse (Maybe Text)
ltdfrrsNextToken = lens _ltdfrrsNextToken (\s a -> s {_ltdfrrsNextToken = a})

-- | The list of task definition family names that match the @ListTaskDefinitionFamilies@ request.
ltdfrrsFamilies :: Lens' ListTaskDefinitionFamiliesResponse [Text]
ltdfrrsFamilies = lens _ltdfrrsFamilies (\s a -> s {_ltdfrrsFamilies = a}) . _Default . _Coerce

-- | -- | The response status code.
ltdfrrsResponseStatus :: Lens' ListTaskDefinitionFamiliesResponse Int
ltdfrrsResponseStatus = lens _ltdfrrsResponseStatus (\s a -> s {_ltdfrrsResponseStatus = a})

instance NFData ListTaskDefinitionFamiliesResponse
