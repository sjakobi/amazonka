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
-- Module      : Network.AWS.CostExplorer.GetSavingsPlansUtilizationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to @GetSavingsPlanUtilization@ , but you have the option to make multiple calls to @GetSavingsPlanUtilizationDetails@ by providing individual dates. You can use @GetDimensionValues@ in @SAVINGS_PLANS@ to determine the possible dimension values.
module Network.AWS.CostExplorer.GetSavingsPlansUtilizationDetails
  ( -- * Creating a Request
    getSavingsPlansUtilizationDetails,
    GetSavingsPlansUtilizationDetails,

    -- * Request Lenses
    gspudNextToken,
    gspudMaxResults,
    gspudSortBy,
    gspudDataType,
    gspudFilter,
    gspudTimePeriod,

    -- * Destructuring the Response
    getSavingsPlansUtilizationDetailsResponse,
    GetSavingsPlansUtilizationDetailsResponse,

    -- * Response Lenses
    gspudrrsNextToken,
    gspudrrsTotal,
    gspudrrsResponseStatus,
    gspudrrsSavingsPlansUtilizationDetails,
    gspudrrsTimePeriod,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSavingsPlansUtilizationDetails' smart constructor.
data GetSavingsPlansUtilizationDetails = GetSavingsPlansUtilizationDetails'
  { _gspudNextToken ::
      !( Maybe
           Text
       ),
    _gspudMaxResults ::
      !( Maybe
           Nat
       ),
    _gspudSortBy ::
      !( Maybe
           SortDefinition
       ),
    _gspudDataType ::
      !( Maybe
           [SavingsPlansDataType]
       ),
    _gspudFilter ::
      !( Maybe
           Expression
       ),
    _gspudTimePeriod ::
      !DateInterval
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSavingsPlansUtilizationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gspudNextToken' - The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gspudMaxResults' - The number of items to be returned in a response. The default is @20@ , with a minimum value of @1@ .
--
-- * 'gspudSortBy' - The value by which you want to sort the data. The following values are supported for @Key@ :     * @UtilizationPercentage@      * @TotalCommitment@      * @UsedCommitment@      * @UnusedCommitment@      * @NetSavings@      * @AmortizedRecurringCommitment@      * @AmortizedUpfrontCommitment@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
--
-- * 'gspudDataType' - The data type.
--
-- * 'gspudFilter' - Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You can filter data with the following dimensions:     * @LINKED_ACCOUNT@      * @SAVINGS_PLAN_ARN@      * @REGION@      * @PAYMENT_OPTION@      * @INSTANCE_TYPE_FAMILY@  @GetSavingsPlansUtilizationDetails@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension.
--
-- * 'gspudTimePeriod' - The time period that you want the usage and costs for. The @Start@ date must be within 13 months. The @End@ date must be after the @Start@ date, and before the current date. Future dates can't be used as an @End@ date.
getSavingsPlansUtilizationDetails ::
  -- | 'gspudTimePeriod'
  DateInterval ->
  GetSavingsPlansUtilizationDetails
getSavingsPlansUtilizationDetails pTimePeriod_ =
  GetSavingsPlansUtilizationDetails'
    { _gspudNextToken =
        Nothing,
      _gspudMaxResults = Nothing,
      _gspudSortBy = Nothing,
      _gspudDataType = Nothing,
      _gspudFilter = Nothing,
      _gspudTimePeriod = pTimePeriod_
    }

-- | The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
gspudNextToken :: Lens' GetSavingsPlansUtilizationDetails (Maybe Text)
gspudNextToken = lens _gspudNextToken (\s a -> s {_gspudNextToken = a})

-- | The number of items to be returned in a response. The default is @20@ , with a minimum value of @1@ .
gspudMaxResults :: Lens' GetSavingsPlansUtilizationDetails (Maybe Natural)
gspudMaxResults = lens _gspudMaxResults (\s a -> s {_gspudMaxResults = a}) . mapping _Nat

-- | The value by which you want to sort the data. The following values are supported for @Key@ :     * @UtilizationPercentage@      * @TotalCommitment@      * @UsedCommitment@      * @UnusedCommitment@      * @NetSavings@      * @AmortizedRecurringCommitment@      * @AmortizedUpfrontCommitment@  Supported values for @SortOrder@ are @ASCENDING@ or @DESCENDING@ .
gspudSortBy :: Lens' GetSavingsPlansUtilizationDetails (Maybe SortDefinition)
gspudSortBy = lens _gspudSortBy (\s a -> s {_gspudSortBy = a})

-- | The data type.
gspudDataType :: Lens' GetSavingsPlansUtilizationDetails [SavingsPlansDataType]
gspudDataType = lens _gspudDataType (\s a -> s {_gspudDataType = a}) . _Default . _Coerce

-- | Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You can filter data with the following dimensions:     * @LINKED_ACCOUNT@      * @SAVINGS_PLAN_ARN@      * @REGION@      * @PAYMENT_OPTION@      * @INSTANCE_TYPE_FAMILY@  @GetSavingsPlansUtilizationDetails@ uses the same <https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html Expression> object as the other operations, but only @AND@ is supported among each dimension.
gspudFilter :: Lens' GetSavingsPlansUtilizationDetails (Maybe Expression)
gspudFilter = lens _gspudFilter (\s a -> s {_gspudFilter = a})

-- | The time period that you want the usage and costs for. The @Start@ date must be within 13 months. The @End@ date must be after the @Start@ date, and before the current date. Future dates can't be used as an @End@ date.
gspudTimePeriod :: Lens' GetSavingsPlansUtilizationDetails DateInterval
gspudTimePeriod = lens _gspudTimePeriod (\s a -> s {_gspudTimePeriod = a})

instance AWSRequest GetSavingsPlansUtilizationDetails where
  type
    Rs GetSavingsPlansUtilizationDetails =
      GetSavingsPlansUtilizationDetailsResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetSavingsPlansUtilizationDetailsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Total")
            <*> (pure (fromEnum s))
            <*> (x .?> "SavingsPlansUtilizationDetails" .!@ mempty)
            <*> (x .:> "TimePeriod")
      )

instance Hashable GetSavingsPlansUtilizationDetails

instance NFData GetSavingsPlansUtilizationDetails

instance ToHeaders GetSavingsPlansUtilizationDetails where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetSavingsPlansUtilizationDetails" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSavingsPlansUtilizationDetails where
  toJSON GetSavingsPlansUtilizationDetails' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gspudNextToken,
            ("MaxResults" .=) <$> _gspudMaxResults,
            ("SortBy" .=) <$> _gspudSortBy,
            ("DataType" .=) <$> _gspudDataType,
            ("Filter" .=) <$> _gspudFilter,
            Just ("TimePeriod" .= _gspudTimePeriod)
          ]
      )

instance ToPath GetSavingsPlansUtilizationDetails where
  toPath = const "/"

instance ToQuery GetSavingsPlansUtilizationDetails where
  toQuery = const mempty

-- | /See:/ 'getSavingsPlansUtilizationDetailsResponse' smart constructor.
data GetSavingsPlansUtilizationDetailsResponse = GetSavingsPlansUtilizationDetailsResponse'
  { _gspudrrsNextToken ::
      !( Maybe
           Text
       ),
    _gspudrrsTotal ::
      !( Maybe
           SavingsPlansUtilizationAggregates
       ),
    _gspudrrsResponseStatus ::
      !Int,
    _gspudrrsSavingsPlansUtilizationDetails ::
      ![SavingsPlansUtilizationDetail],
    _gspudrrsTimePeriod ::
      !DateInterval
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSavingsPlansUtilizationDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gspudrrsNextToken' - The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gspudrrsTotal' - The total Savings Plans utilization, regardless of time period.
--
-- * 'gspudrrsResponseStatus' - -- | The response status code.
--
-- * 'gspudrrsSavingsPlansUtilizationDetails' - Retrieves a single daily or monthly Savings Plans utilization rate and details for your account.
--
-- * 'gspudrrsTimePeriod' - Undocumented member.
getSavingsPlansUtilizationDetailsResponse ::
  -- | 'gspudrrsResponseStatus'
  Int ->
  -- | 'gspudrrsTimePeriod'
  DateInterval ->
  GetSavingsPlansUtilizationDetailsResponse
getSavingsPlansUtilizationDetailsResponse
  pResponseStatus_
  pTimePeriod_ =
    GetSavingsPlansUtilizationDetailsResponse'
      { _gspudrrsNextToken =
          Nothing,
        _gspudrrsTotal = Nothing,
        _gspudrrsResponseStatus =
          pResponseStatus_,
        _gspudrrsSavingsPlansUtilizationDetails =
          mempty,
        _gspudrrsTimePeriod =
          pTimePeriod_
      }

-- | The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
gspudrrsNextToken :: Lens' GetSavingsPlansUtilizationDetailsResponse (Maybe Text)
gspudrrsNextToken = lens _gspudrrsNextToken (\s a -> s {_gspudrrsNextToken = a})

-- | The total Savings Plans utilization, regardless of time period.
gspudrrsTotal :: Lens' GetSavingsPlansUtilizationDetailsResponse (Maybe SavingsPlansUtilizationAggregates)
gspudrrsTotal = lens _gspudrrsTotal (\s a -> s {_gspudrrsTotal = a})

-- | -- | The response status code.
gspudrrsResponseStatus :: Lens' GetSavingsPlansUtilizationDetailsResponse Int
gspudrrsResponseStatus = lens _gspudrrsResponseStatus (\s a -> s {_gspudrrsResponseStatus = a})

-- | Retrieves a single daily or monthly Savings Plans utilization rate and details for your account.
gspudrrsSavingsPlansUtilizationDetails :: Lens' GetSavingsPlansUtilizationDetailsResponse [SavingsPlansUtilizationDetail]
gspudrrsSavingsPlansUtilizationDetails = lens _gspudrrsSavingsPlansUtilizationDetails (\s a -> s {_gspudrrsSavingsPlansUtilizationDetails = a}) . _Coerce

-- | Undocumented member.
gspudrrsTimePeriod :: Lens' GetSavingsPlansUtilizationDetailsResponse DateInterval
gspudrrsTimePeriod = lens _gspudrrsTimePeriod (\s a -> s {_gspudrrsTimePeriod = a})

instance
  NFData
    GetSavingsPlansUtilizationDetailsResponse
