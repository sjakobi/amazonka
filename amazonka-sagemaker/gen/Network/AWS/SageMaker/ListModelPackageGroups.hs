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
-- Module      : Network.AWS.SageMaker.ListModelPackageGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the model groups in your AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListModelPackageGroups
  ( -- * Creating a Request
    listModelPackageGroups,
    ListModelPackageGroups,

    -- * Request Lenses
    lmpgSortOrder,
    lmpgNextToken,
    lmpgNameContains,
    lmpgMaxResults,
    lmpgCreationTimeBefore,
    lmpgSortBy,
    lmpgCreationTimeAfter,

    -- * Destructuring the Response
    listModelPackageGroupsResponse,
    ListModelPackageGroupsResponse,

    -- * Response Lenses
    lmpgrrsNextToken,
    lmpgrrsResponseStatus,
    lmpgrrsModelPackageGroupSummaryList,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listModelPackageGroups' smart constructor.
data ListModelPackageGroups = ListModelPackageGroups'
  { _lmpgSortOrder ::
      !(Maybe SortOrder),
    _lmpgNextToken ::
      !(Maybe Text),
    _lmpgNameContains ::
      !(Maybe Text),
    _lmpgMaxResults ::
      !(Maybe Nat),
    _lmpgCreationTimeBefore ::
      !(Maybe POSIX),
    _lmpgSortBy ::
      !( Maybe
           ModelPackageGroupSortBy
       ),
    _lmpgCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListModelPackageGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmpgSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lmpgNextToken' - If the result of the previous @ListModelPackageGroups@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model groups, use the token in the next request.
--
-- * 'lmpgNameContains' - A string in the model group name. This filter returns only model groups whose name contains the specified string.
--
-- * 'lmpgMaxResults' - The maximum number of results to return in the response.
--
-- * 'lmpgCreationTimeBefore' - A filter that returns only model groups created before the specified time.
--
-- * 'lmpgSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'lmpgCreationTimeAfter' - A filter that returns only model groups created after the specified time.
listModelPackageGroups ::
  ListModelPackageGroups
listModelPackageGroups =
  ListModelPackageGroups'
    { _lmpgSortOrder = Nothing,
      _lmpgNextToken = Nothing,
      _lmpgNameContains = Nothing,
      _lmpgMaxResults = Nothing,
      _lmpgCreationTimeBefore = Nothing,
      _lmpgSortBy = Nothing,
      _lmpgCreationTimeAfter = Nothing
    }

-- | The sort order for results. The default is @Ascending@ .
lmpgSortOrder :: Lens' ListModelPackageGroups (Maybe SortOrder)
lmpgSortOrder = lens _lmpgSortOrder (\s a -> s {_lmpgSortOrder = a})

-- | If the result of the previous @ListModelPackageGroups@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model groups, use the token in the next request.
lmpgNextToken :: Lens' ListModelPackageGroups (Maybe Text)
lmpgNextToken = lens _lmpgNextToken (\s a -> s {_lmpgNextToken = a})

-- | A string in the model group name. This filter returns only model groups whose name contains the specified string.
lmpgNameContains :: Lens' ListModelPackageGroups (Maybe Text)
lmpgNameContains = lens _lmpgNameContains (\s a -> s {_lmpgNameContains = a})

-- | The maximum number of results to return in the response.
lmpgMaxResults :: Lens' ListModelPackageGroups (Maybe Natural)
lmpgMaxResults = lens _lmpgMaxResults (\s a -> s {_lmpgMaxResults = a}) . mapping _Nat

-- | A filter that returns only model groups created before the specified time.
lmpgCreationTimeBefore :: Lens' ListModelPackageGroups (Maybe UTCTime)
lmpgCreationTimeBefore = lens _lmpgCreationTimeBefore (\s a -> s {_lmpgCreationTimeBefore = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
lmpgSortBy :: Lens' ListModelPackageGroups (Maybe ModelPackageGroupSortBy)
lmpgSortBy = lens _lmpgSortBy (\s a -> s {_lmpgSortBy = a})

-- | A filter that returns only model groups created after the specified time.
lmpgCreationTimeAfter :: Lens' ListModelPackageGroups (Maybe UTCTime)
lmpgCreationTimeAfter = lens _lmpgCreationTimeAfter (\s a -> s {_lmpgCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListModelPackageGroups where
  page rq rs
    | stop (rs ^. lmpgrrsNextToken) = Nothing
    | stop (rs ^. lmpgrrsModelPackageGroupSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lmpgNextToken .~ rs ^. lmpgrrsNextToken

instance AWSRequest ListModelPackageGroups where
  type
    Rs ListModelPackageGroups =
      ListModelPackageGroupsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListModelPackageGroupsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "ModelPackageGroupSummaryList" .!@ mempty)
      )

instance Hashable ListModelPackageGroups

instance NFData ListModelPackageGroups

instance ToHeaders ListModelPackageGroups where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListModelPackageGroups" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListModelPackageGroups where
  toJSON ListModelPackageGroups' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lmpgSortOrder,
            ("NextToken" .=) <$> _lmpgNextToken,
            ("NameContains" .=) <$> _lmpgNameContains,
            ("MaxResults" .=) <$> _lmpgMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lmpgCreationTimeBefore,
            ("SortBy" .=) <$> _lmpgSortBy,
            ("CreationTimeAfter" .=) <$> _lmpgCreationTimeAfter
          ]
      )

instance ToPath ListModelPackageGroups where
  toPath = const "/"

instance ToQuery ListModelPackageGroups where
  toQuery = const mempty

-- | /See:/ 'listModelPackageGroupsResponse' smart constructor.
data ListModelPackageGroupsResponse = ListModelPackageGroupsResponse'
  { _lmpgrrsNextToken ::
      !( Maybe
           Text
       ),
    _lmpgrrsResponseStatus ::
      !Int,
    _lmpgrrsModelPackageGroupSummaryList ::
      ![ModelPackageGroupSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListModelPackageGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmpgrrsNextToken' - If the response is truncated, SageMaker returns this token. To retrieve the next set of model groups, use it in the subsequent request.
--
-- * 'lmpgrrsResponseStatus' - -- | The response status code.
--
-- * 'lmpgrrsModelPackageGroupSummaryList' - A list of summaries of the model groups in your AWS account.
listModelPackageGroupsResponse ::
  -- | 'lmpgrrsResponseStatus'
  Int ->
  ListModelPackageGroupsResponse
listModelPackageGroupsResponse pResponseStatus_ =
  ListModelPackageGroupsResponse'
    { _lmpgrrsNextToken =
        Nothing,
      _lmpgrrsResponseStatus = pResponseStatus_,
      _lmpgrrsModelPackageGroupSummaryList =
        mempty
    }

-- | If the response is truncated, SageMaker returns this token. To retrieve the next set of model groups, use it in the subsequent request.
lmpgrrsNextToken :: Lens' ListModelPackageGroupsResponse (Maybe Text)
lmpgrrsNextToken = lens _lmpgrrsNextToken (\s a -> s {_lmpgrrsNextToken = a})

-- | -- | The response status code.
lmpgrrsResponseStatus :: Lens' ListModelPackageGroupsResponse Int
lmpgrrsResponseStatus = lens _lmpgrrsResponseStatus (\s a -> s {_lmpgrrsResponseStatus = a})

-- | A list of summaries of the model groups in your AWS account.
lmpgrrsModelPackageGroupSummaryList :: Lens' ListModelPackageGroupsResponse [ModelPackageGroupSummary]
lmpgrrsModelPackageGroupSummaryList = lens _lmpgrrsModelPackageGroupSummaryList (\s a -> s {_lmpgrrsModelPackageGroupSummaryList = a}) . _Coerce

instance NFData ListModelPackageGroupsResponse
