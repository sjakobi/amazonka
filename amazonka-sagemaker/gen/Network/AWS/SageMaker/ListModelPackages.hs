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
-- Module      : Network.AWS.SageMaker.ListModelPackages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the model packages that have been created.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListModelPackages
  ( -- * Creating a Request
    listModelPackages,
    ListModelPackages,

    -- * Request Lenses
    lmpSortOrder,
    lmpNextToken,
    lmpNameContains,
    lmpMaxResults,
    lmpCreationTimeBefore,
    lmpModelApprovalStatus,
    lmpSortBy,
    lmpCreationTimeAfter,
    lmpModelPackageGroupName,
    lmpModelPackageType,

    -- * Destructuring the Response
    listModelPackagesResponse,
    ListModelPackagesResponse,

    -- * Response Lenses
    lmprrsNextToken,
    lmprrsResponseStatus,
    lmprrsModelPackageSummaryList,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listModelPackages' smart constructor.
data ListModelPackages = ListModelPackages'
  { _lmpSortOrder ::
      !(Maybe SortOrder),
    _lmpNextToken :: !(Maybe Text),
    _lmpNameContains :: !(Maybe Text),
    _lmpMaxResults :: !(Maybe Nat),
    _lmpCreationTimeBefore ::
      !(Maybe POSIX),
    _lmpModelApprovalStatus ::
      !(Maybe ModelApprovalStatus),
    _lmpSortBy ::
      !(Maybe ModelPackageSortBy),
    _lmpCreationTimeAfter ::
      !(Maybe POSIX),
    _lmpModelPackageGroupName ::
      !(Maybe Text),
    _lmpModelPackageType ::
      !(Maybe ModelPackageType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListModelPackages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmpSortOrder' - The sort order for the results. The default is @Ascending@ .
--
-- * 'lmpNextToken' - If the response to a previous @ListModelPackages@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model packages, use the token in the next request.
--
-- * 'lmpNameContains' - A string in the model package name. This filter returns only model packages whose name contains the specified string.
--
-- * 'lmpMaxResults' - The maximum number of model packages to return in the response.
--
-- * 'lmpCreationTimeBefore' - A filter that returns only model packages created before the specified time (timestamp).
--
-- * 'lmpModelApprovalStatus' - A filter that returns only the model packages with the specified approval status.
--
-- * 'lmpSortBy' - The parameter by which to sort the results. The default is @CreationTime@ .
--
-- * 'lmpCreationTimeAfter' - A filter that returns only model packages created after the specified time (timestamp).
--
-- * 'lmpModelPackageGroupName' - A filter that returns only model versions that belong to the specified model group.
--
-- * 'lmpModelPackageType' - A filter that returns onlyl the model packages of the specified type. This can be one of the following values.     * @VERSIONED@ - List only versioned models.     * @UNVERSIONED@ - List only unversioined models.     * @BOTH@ - List both versioned and unversioned models.
listModelPackages ::
  ListModelPackages
listModelPackages =
  ListModelPackages'
    { _lmpSortOrder = Nothing,
      _lmpNextToken = Nothing,
      _lmpNameContains = Nothing,
      _lmpMaxResults = Nothing,
      _lmpCreationTimeBefore = Nothing,
      _lmpModelApprovalStatus = Nothing,
      _lmpSortBy = Nothing,
      _lmpCreationTimeAfter = Nothing,
      _lmpModelPackageGroupName = Nothing,
      _lmpModelPackageType = Nothing
    }

-- | The sort order for the results. The default is @Ascending@ .
lmpSortOrder :: Lens' ListModelPackages (Maybe SortOrder)
lmpSortOrder = lens _lmpSortOrder (\s a -> s {_lmpSortOrder = a})

-- | If the response to a previous @ListModelPackages@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model packages, use the token in the next request.
lmpNextToken :: Lens' ListModelPackages (Maybe Text)
lmpNextToken = lens _lmpNextToken (\s a -> s {_lmpNextToken = a})

-- | A string in the model package name. This filter returns only model packages whose name contains the specified string.
lmpNameContains :: Lens' ListModelPackages (Maybe Text)
lmpNameContains = lens _lmpNameContains (\s a -> s {_lmpNameContains = a})

-- | The maximum number of model packages to return in the response.
lmpMaxResults :: Lens' ListModelPackages (Maybe Natural)
lmpMaxResults = lens _lmpMaxResults (\s a -> s {_lmpMaxResults = a}) . mapping _Nat

-- | A filter that returns only model packages created before the specified time (timestamp).
lmpCreationTimeBefore :: Lens' ListModelPackages (Maybe UTCTime)
lmpCreationTimeBefore = lens _lmpCreationTimeBefore (\s a -> s {_lmpCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only the model packages with the specified approval status.
lmpModelApprovalStatus :: Lens' ListModelPackages (Maybe ModelApprovalStatus)
lmpModelApprovalStatus = lens _lmpModelApprovalStatus (\s a -> s {_lmpModelApprovalStatus = a})

-- | The parameter by which to sort the results. The default is @CreationTime@ .
lmpSortBy :: Lens' ListModelPackages (Maybe ModelPackageSortBy)
lmpSortBy = lens _lmpSortBy (\s a -> s {_lmpSortBy = a})

-- | A filter that returns only model packages created after the specified time (timestamp).
lmpCreationTimeAfter :: Lens' ListModelPackages (Maybe UTCTime)
lmpCreationTimeAfter = lens _lmpCreationTimeAfter (\s a -> s {_lmpCreationTimeAfter = a}) . mapping _Time

-- | A filter that returns only model versions that belong to the specified model group.
lmpModelPackageGroupName :: Lens' ListModelPackages (Maybe Text)
lmpModelPackageGroupName = lens _lmpModelPackageGroupName (\s a -> s {_lmpModelPackageGroupName = a})

-- | A filter that returns onlyl the model packages of the specified type. This can be one of the following values.     * @VERSIONED@ - List only versioned models.     * @UNVERSIONED@ - List only unversioined models.     * @BOTH@ - List both versioned and unversioned models.
lmpModelPackageType :: Lens' ListModelPackages (Maybe ModelPackageType)
lmpModelPackageType = lens _lmpModelPackageType (\s a -> s {_lmpModelPackageType = a})

instance AWSPager ListModelPackages where
  page rq rs
    | stop (rs ^. lmprrsNextToken) = Nothing
    | stop (rs ^. lmprrsModelPackageSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lmpNextToken .~ rs ^. lmprrsNextToken

instance AWSRequest ListModelPackages where
  type Rs ListModelPackages = ListModelPackagesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListModelPackagesResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "ModelPackageSummaryList" .!@ mempty)
      )

instance Hashable ListModelPackages

instance NFData ListModelPackages

instance ToHeaders ListModelPackages where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListModelPackages" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListModelPackages where
  toJSON ListModelPackages' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lmpSortOrder,
            ("NextToken" .=) <$> _lmpNextToken,
            ("NameContains" .=) <$> _lmpNameContains,
            ("MaxResults" .=) <$> _lmpMaxResults,
            ("CreationTimeBefore" .=) <$> _lmpCreationTimeBefore,
            ("ModelApprovalStatus" .=)
              <$> _lmpModelApprovalStatus,
            ("SortBy" .=) <$> _lmpSortBy,
            ("CreationTimeAfter" .=) <$> _lmpCreationTimeAfter,
            ("ModelPackageGroupName" .=)
              <$> _lmpModelPackageGroupName,
            ("ModelPackageType" .=) <$> _lmpModelPackageType
          ]
      )

instance ToPath ListModelPackages where
  toPath = const "/"

instance ToQuery ListModelPackages where
  toQuery = const mempty

-- | /See:/ 'listModelPackagesResponse' smart constructor.
data ListModelPackagesResponse = ListModelPackagesResponse'
  { _lmprrsNextToken ::
      !(Maybe Text),
    _lmprrsResponseStatus ::
      !Int,
    _lmprrsModelPackageSummaryList ::
      ![ModelPackageSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListModelPackagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmprrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of model packages, use it in the subsequent request.
--
-- * 'lmprrsResponseStatus' - -- | The response status code.
--
-- * 'lmprrsModelPackageSummaryList' - An array of @ModelPackageSummary@ objects, each of which lists a model package.
listModelPackagesResponse ::
  -- | 'lmprrsResponseStatus'
  Int ->
  ListModelPackagesResponse
listModelPackagesResponse pResponseStatus_ =
  ListModelPackagesResponse'
    { _lmprrsNextToken =
        Nothing,
      _lmprrsResponseStatus = pResponseStatus_,
      _lmprrsModelPackageSummaryList = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of model packages, use it in the subsequent request.
lmprrsNextToken :: Lens' ListModelPackagesResponse (Maybe Text)
lmprrsNextToken = lens _lmprrsNextToken (\s a -> s {_lmprrsNextToken = a})

-- | -- | The response status code.
lmprrsResponseStatus :: Lens' ListModelPackagesResponse Int
lmprrsResponseStatus = lens _lmprrsResponseStatus (\s a -> s {_lmprrsResponseStatus = a})

-- | An array of @ModelPackageSummary@ objects, each of which lists a model package.
lmprrsModelPackageSummaryList :: Lens' ListModelPackagesResponse [ModelPackageSummary]
lmprrsModelPackageSummaryList = lens _lmprrsModelPackageSummaryList (\s a -> s {_lmprrsModelPackageSummaryList = a}) . _Coerce

instance NFData ListModelPackagesResponse
