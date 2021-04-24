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
-- Module      : Network.AWS.CostExplorer.GetCostCategories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an array of Cost Category names and values incurred cost.
module Network.AWS.CostExplorer.GetCostCategories
  ( -- * Creating a Request
    getCostCategories,
    GetCostCategories,

    -- * Request Lenses
    gccMaxResults,
    gccSearchString,
    gccNextPageToken,
    gccCostCategoryName,
    gccSortBy,
    gccFilter,
    gccTimePeriod,

    -- * Destructuring the Response
    getCostCategoriesResponse,
    GetCostCategoriesResponse,

    -- * Response Lenses
    gccrrsCostCategoryValues,
    gccrrsNextPageToken,
    gccrrsCostCategoryNames,
    gccrrsResponseStatus,
    gccrrsReturnSize,
    gccrrsTotalSize,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCostCategories' smart constructor.
data GetCostCategories = GetCostCategories'
  { _gccMaxResults ::
      !(Maybe Nat),
    _gccSearchString :: !(Maybe Text),
    _gccNextPageToken :: !(Maybe Text),
    _gccCostCategoryName ::
      !(Maybe Text),
    _gccSortBy ::
      !(Maybe [SortDefinition]),
    _gccFilter :: !(Maybe Expression),
    _gccTimePeriod :: !DateInterval
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCostCategories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccMaxResults' - This field is only used when @SortBy@ is provided in the request. The maximum number of objects that to be returned for this request. If @MaxResults@ is not specified with @SortBy@ , the request will return 1000 results as the default value for this parameter. For @GetCostCategories@ , MaxResults has an upper limit of 1000.
--
-- * 'gccSearchString' - The value that you want to search the filter values for. If you do not specify a @CostCategoryName@ , @SearchString@ will be used to filter Cost Category names that match the @SearchString@ pattern. If you do specifiy a @CostCategoryName@ , @SearchString@ will be used to filter Cost Category values that match the @SearchString@ pattern.
--
-- * 'gccNextPageToken' - If the number of objects that are still available for retrieval exceeds the limit, AWS returns a NextPageToken value in the response. To retrieve the next batch of objects, provide the NextPageToken from the prior call in your next request.
--
-- * 'gccCostCategoryName' - Undocumented member.
--
-- * 'gccSortBy' - The value by which you want to sort the data. The key represents cost and usage metrics. The following values are supported:     * @BlendedCost@      * @UnblendedCost@      * @AmortizedCost@      * @NetAmortizedCost@      * @NetUnblendedCost@      * @UsageQuantity@      * @NormalizedUsageAmount@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ . When using @SortBy@ , @NextPageToken@ and @SearchString@ are not supported.
--
-- * 'gccFilter' - Undocumented member.
--
-- * 'gccTimePeriod' - Undocumented member.
getCostCategories ::
  -- | 'gccTimePeriod'
  DateInterval ->
  GetCostCategories
getCostCategories pTimePeriod_ =
  GetCostCategories'
    { _gccMaxResults = Nothing,
      _gccSearchString = Nothing,
      _gccNextPageToken = Nothing,
      _gccCostCategoryName = Nothing,
      _gccSortBy = Nothing,
      _gccFilter = Nothing,
      _gccTimePeriod = pTimePeriod_
    }

-- | This field is only used when @SortBy@ is provided in the request. The maximum number of objects that to be returned for this request. If @MaxResults@ is not specified with @SortBy@ , the request will return 1000 results as the default value for this parameter. For @GetCostCategories@ , MaxResults has an upper limit of 1000.
gccMaxResults :: Lens' GetCostCategories (Maybe Natural)
gccMaxResults = lens _gccMaxResults (\s a -> s {_gccMaxResults = a}) . mapping _Nat

-- | The value that you want to search the filter values for. If you do not specify a @CostCategoryName@ , @SearchString@ will be used to filter Cost Category names that match the @SearchString@ pattern. If you do specifiy a @CostCategoryName@ , @SearchString@ will be used to filter Cost Category values that match the @SearchString@ pattern.
gccSearchString :: Lens' GetCostCategories (Maybe Text)
gccSearchString = lens _gccSearchString (\s a -> s {_gccSearchString = a})

-- | If the number of objects that are still available for retrieval exceeds the limit, AWS returns a NextPageToken value in the response. To retrieve the next batch of objects, provide the NextPageToken from the prior call in your next request.
gccNextPageToken :: Lens' GetCostCategories (Maybe Text)
gccNextPageToken = lens _gccNextPageToken (\s a -> s {_gccNextPageToken = a})

-- | Undocumented member.
gccCostCategoryName :: Lens' GetCostCategories (Maybe Text)
gccCostCategoryName = lens _gccCostCategoryName (\s a -> s {_gccCostCategoryName = a})

-- | The value by which you want to sort the data. The key represents cost and usage metrics. The following values are supported:     * @BlendedCost@      * @UnblendedCost@      * @AmortizedCost@      * @NetAmortizedCost@      * @NetUnblendedCost@      * @UsageQuantity@      * @NormalizedUsageAmount@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ . When using @SortBy@ , @NextPageToken@ and @SearchString@ are not supported.
gccSortBy :: Lens' GetCostCategories [SortDefinition]
gccSortBy = lens _gccSortBy (\s a -> s {_gccSortBy = a}) . _Default . _Coerce

-- | Undocumented member.
gccFilter :: Lens' GetCostCategories (Maybe Expression)
gccFilter = lens _gccFilter (\s a -> s {_gccFilter = a})

-- | Undocumented member.
gccTimePeriod :: Lens' GetCostCategories DateInterval
gccTimePeriod = lens _gccTimePeriod (\s a -> s {_gccTimePeriod = a})

instance AWSRequest GetCostCategories where
  type Rs GetCostCategories = GetCostCategoriesResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetCostCategoriesResponse'
            <$> (x .?> "CostCategoryValues" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (x .?> "CostCategoryNames" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "ReturnSize")
            <*> (x .:> "TotalSize")
      )

instance Hashable GetCostCategories

instance NFData GetCostCategories

instance ToHeaders GetCostCategories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetCostCategories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCostCategories where
  toJSON GetCostCategories' {..} =
    object
      ( catMaybes
          [ ("MaxResults" .=) <$> _gccMaxResults,
            ("SearchString" .=) <$> _gccSearchString,
            ("NextPageToken" .=) <$> _gccNextPageToken,
            ("CostCategoryName" .=) <$> _gccCostCategoryName,
            ("SortBy" .=) <$> _gccSortBy,
            ("Filter" .=) <$> _gccFilter,
            Just ("TimePeriod" .= _gccTimePeriod)
          ]
      )

instance ToPath GetCostCategories where
  toPath = const "/"

instance ToQuery GetCostCategories where
  toQuery = const mempty

-- | /See:/ 'getCostCategoriesResponse' smart constructor.
data GetCostCategoriesResponse = GetCostCategoriesResponse'
  { _gccrrsCostCategoryValues ::
      !(Maybe [Text]),
    _gccrrsNextPageToken ::
      !(Maybe Text),
    _gccrrsCostCategoryNames ::
      !(Maybe [Text]),
    _gccrrsResponseStatus ::
      !Int,
    _gccrrsReturnSize ::
      !Int,
    _gccrrsTotalSize ::
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

-- | Creates a value of 'GetCostCategoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccrrsCostCategoryValues' - The Cost Category values. @CostCategoryValues@ are not returned if @CostCategoryName@ is not specified in the request.
--
-- * 'gccrrsNextPageToken' - If the number of objects that are still available for retrieval exceeds the limit, AWS returns a NextPageToken value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.
--
-- * 'gccrrsCostCategoryNames' - The names of the Cost Categories.
--
-- * 'gccrrsResponseStatus' - -- | The response status code.
--
-- * 'gccrrsReturnSize' - The number of objects returned.
--
-- * 'gccrrsTotalSize' - The total number of objects.
getCostCategoriesResponse ::
  -- | 'gccrrsResponseStatus'
  Int ->
  -- | 'gccrrsReturnSize'
  Int ->
  -- | 'gccrrsTotalSize'
  Int ->
  GetCostCategoriesResponse
getCostCategoriesResponse
  pResponseStatus_
  pReturnSize_
  pTotalSize_ =
    GetCostCategoriesResponse'
      { _gccrrsCostCategoryValues =
          Nothing,
        _gccrrsNextPageToken = Nothing,
        _gccrrsCostCategoryNames = Nothing,
        _gccrrsResponseStatus = pResponseStatus_,
        _gccrrsReturnSize = pReturnSize_,
        _gccrrsTotalSize = pTotalSize_
      }

-- | The Cost Category values. @CostCategoryValues@ are not returned if @CostCategoryName@ is not specified in the request.
gccrrsCostCategoryValues :: Lens' GetCostCategoriesResponse [Text]
gccrrsCostCategoryValues = lens _gccrrsCostCategoryValues (\s a -> s {_gccrrsCostCategoryValues = a}) . _Default . _Coerce

-- | If the number of objects that are still available for retrieval exceeds the limit, AWS returns a NextPageToken value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.
gccrrsNextPageToken :: Lens' GetCostCategoriesResponse (Maybe Text)
gccrrsNextPageToken = lens _gccrrsNextPageToken (\s a -> s {_gccrrsNextPageToken = a})

-- | The names of the Cost Categories.
gccrrsCostCategoryNames :: Lens' GetCostCategoriesResponse [Text]
gccrrsCostCategoryNames = lens _gccrrsCostCategoryNames (\s a -> s {_gccrrsCostCategoryNames = a}) . _Default . _Coerce

-- | -- | The response status code.
gccrrsResponseStatus :: Lens' GetCostCategoriesResponse Int
gccrrsResponseStatus = lens _gccrrsResponseStatus (\s a -> s {_gccrrsResponseStatus = a})

-- | The number of objects returned.
gccrrsReturnSize :: Lens' GetCostCategoriesResponse Int
gccrrsReturnSize = lens _gccrrsReturnSize (\s a -> s {_gccrrsReturnSize = a})

-- | The total number of objects.
gccrrsTotalSize :: Lens' GetCostCategoriesResponse Int
gccrrsTotalSize = lens _gccrrsTotalSize (\s a -> s {_gccrrsTotalSize = a})

instance NFData GetCostCategoriesResponse
