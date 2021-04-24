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
-- Module      : Network.AWS.CostExplorer.GetSavingsPlansPurchaseRecommendation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves your request parameters, Savings Plan Recommendations Summary and Details.
module Network.AWS.CostExplorer.GetSavingsPlansPurchaseRecommendation
  ( -- * Creating a Request
    getSavingsPlansPurchaseRecommendation,
    GetSavingsPlansPurchaseRecommendation,

    -- * Request Lenses
    gspprPageSize,
    gspprAccountScope,
    gspprNextPageToken,
    gspprFilter,
    gspprSavingsPlansType,
    gspprTermInYears,
    gspprPaymentOption,
    gspprLookbackPeriodInDays,

    -- * Destructuring the Response
    getSavingsPlansPurchaseRecommendationResponse,
    GetSavingsPlansPurchaseRecommendationResponse,

    -- * Response Lenses
    gspprrrsMetadata,
    gspprrrsNextPageToken,
    gspprrrsSavingsPlansPurchaseRecommendation,
    gspprrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSavingsPlansPurchaseRecommendation' smart constructor.
data GetSavingsPlansPurchaseRecommendation = GetSavingsPlansPurchaseRecommendation'
  { _gspprPageSize ::
      !( Maybe
           Nat
       ),
    _gspprAccountScope ::
      !( Maybe
           AccountScope
       ),
    _gspprNextPageToken ::
      !( Maybe
           Text
       ),
    _gspprFilter ::
      !( Maybe
           Expression
       ),
    _gspprSavingsPlansType ::
      !SupportedSavingsPlansType,
    _gspprTermInYears ::
      !TermInYears,
    _gspprPaymentOption ::
      !PaymentOption,
    _gspprLookbackPeriodInDays ::
      !LookbackPeriodInDays
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSavingsPlansPurchaseRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gspprPageSize' - The number of recommendations that you want returned in a single response object.
--
-- * 'gspprAccountScope' - The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual member accounts only.
--
-- * 'gspprNextPageToken' - The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gspprFilter' - You can filter your recommendations by Account ID with the @LINKED_ACCOUNT@ dimension. To filter your recommendations by Account ID, specify @Key@ as @LINKED_ACCOUNT@ and @Value@ as the comma-separated Acount ID(s) for which you want to see Savings Plans purchase recommendations. For GetSavingsPlansPurchaseRecommendation, the @Filter@ does not include @CostCategories@ or @Tags@ . It only includes @Dimensions@ . With @Dimensions@ , @Key@ must be @LINKED_ACCOUNT@ and @Value@ can be a single Account ID or multiple comma-separated Account IDs for which you want to see Savings Plans Purchase Recommendations. @AND@ and @OR@ operators are not supported.
--
-- * 'gspprSavingsPlansType' - The Savings Plans recommendation type requested.
--
-- * 'gspprTermInYears' - The savings plan recommendation term used to generate these recommendations.
--
-- * 'gspprPaymentOption' - The payment option used to generate these recommendations.
--
-- * 'gspprLookbackPeriodInDays' - The lookback period used to generate the recommendation.
getSavingsPlansPurchaseRecommendation ::
  -- | 'gspprSavingsPlansType'
  SupportedSavingsPlansType ->
  -- | 'gspprTermInYears'
  TermInYears ->
  -- | 'gspprPaymentOption'
  PaymentOption ->
  -- | 'gspprLookbackPeriodInDays'
  LookbackPeriodInDays ->
  GetSavingsPlansPurchaseRecommendation
getSavingsPlansPurchaseRecommendation
  pSavingsPlansType_
  pTermInYears_
  pPaymentOption_
  pLookbackPeriodInDays_ =
    GetSavingsPlansPurchaseRecommendation'
      { _gspprPageSize =
          Nothing,
        _gspprAccountScope = Nothing,
        _gspprNextPageToken = Nothing,
        _gspprFilter = Nothing,
        _gspprSavingsPlansType =
          pSavingsPlansType_,
        _gspprTermInYears = pTermInYears_,
        _gspprPaymentOption =
          pPaymentOption_,
        _gspprLookbackPeriodInDays =
          pLookbackPeriodInDays_
      }

-- | The number of recommendations that you want returned in a single response object.
gspprPageSize :: Lens' GetSavingsPlansPurchaseRecommendation (Maybe Natural)
gspprPageSize = lens _gspprPageSize (\s a -> s {_gspprPageSize = a}) . mapping _Nat

-- | The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual member accounts only.
gspprAccountScope :: Lens' GetSavingsPlansPurchaseRecommendation (Maybe AccountScope)
gspprAccountScope = lens _gspprAccountScope (\s a -> s {_gspprAccountScope = a})

-- | The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
gspprNextPageToken :: Lens' GetSavingsPlansPurchaseRecommendation (Maybe Text)
gspprNextPageToken = lens _gspprNextPageToken (\s a -> s {_gspprNextPageToken = a})

-- | You can filter your recommendations by Account ID with the @LINKED_ACCOUNT@ dimension. To filter your recommendations by Account ID, specify @Key@ as @LINKED_ACCOUNT@ and @Value@ as the comma-separated Acount ID(s) for which you want to see Savings Plans purchase recommendations. For GetSavingsPlansPurchaseRecommendation, the @Filter@ does not include @CostCategories@ or @Tags@ . It only includes @Dimensions@ . With @Dimensions@ , @Key@ must be @LINKED_ACCOUNT@ and @Value@ can be a single Account ID or multiple comma-separated Account IDs for which you want to see Savings Plans Purchase Recommendations. @AND@ and @OR@ operators are not supported.
gspprFilter :: Lens' GetSavingsPlansPurchaseRecommendation (Maybe Expression)
gspprFilter = lens _gspprFilter (\s a -> s {_gspprFilter = a})

-- | The Savings Plans recommendation type requested.
gspprSavingsPlansType :: Lens' GetSavingsPlansPurchaseRecommendation SupportedSavingsPlansType
gspprSavingsPlansType = lens _gspprSavingsPlansType (\s a -> s {_gspprSavingsPlansType = a})

-- | The savings plan recommendation term used to generate these recommendations.
gspprTermInYears :: Lens' GetSavingsPlansPurchaseRecommendation TermInYears
gspprTermInYears = lens _gspprTermInYears (\s a -> s {_gspprTermInYears = a})

-- | The payment option used to generate these recommendations.
gspprPaymentOption :: Lens' GetSavingsPlansPurchaseRecommendation PaymentOption
gspprPaymentOption = lens _gspprPaymentOption (\s a -> s {_gspprPaymentOption = a})

-- | The lookback period used to generate the recommendation.
gspprLookbackPeriodInDays :: Lens' GetSavingsPlansPurchaseRecommendation LookbackPeriodInDays
gspprLookbackPeriodInDays = lens _gspprLookbackPeriodInDays (\s a -> s {_gspprLookbackPeriodInDays = a})

instance
  AWSRequest
    GetSavingsPlansPurchaseRecommendation
  where
  type
    Rs GetSavingsPlansPurchaseRecommendation =
      GetSavingsPlansPurchaseRecommendationResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetSavingsPlansPurchaseRecommendationResponse'
            <$> (x .?> "Metadata")
            <*> (x .?> "NextPageToken")
            <*> (x .?> "SavingsPlansPurchaseRecommendation")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetSavingsPlansPurchaseRecommendation

instance NFData GetSavingsPlansPurchaseRecommendation

instance
  ToHeaders
    GetSavingsPlansPurchaseRecommendation
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetSavingsPlansPurchaseRecommendation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSavingsPlansPurchaseRecommendation where
  toJSON GetSavingsPlansPurchaseRecommendation' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _gspprPageSize,
            ("AccountScope" .=) <$> _gspprAccountScope,
            ("NextPageToken" .=) <$> _gspprNextPageToken,
            ("Filter" .=) <$> _gspprFilter,
            Just ("SavingsPlansType" .= _gspprSavingsPlansType),
            Just ("TermInYears" .= _gspprTermInYears),
            Just ("PaymentOption" .= _gspprPaymentOption),
            Just
              ( "LookbackPeriodInDays"
                  .= _gspprLookbackPeriodInDays
              )
          ]
      )

instance ToPath GetSavingsPlansPurchaseRecommendation where
  toPath = const "/"

instance
  ToQuery
    GetSavingsPlansPurchaseRecommendation
  where
  toQuery = const mempty

-- | /See:/ 'getSavingsPlansPurchaseRecommendationResponse' smart constructor.
data GetSavingsPlansPurchaseRecommendationResponse = GetSavingsPlansPurchaseRecommendationResponse'
  { _gspprrrsMetadata ::
      !( Maybe
           SavingsPlansPurchaseRecommendationMetadata
       ),
    _gspprrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _gspprrrsSavingsPlansPurchaseRecommendation ::
      !( Maybe
           SavingsPlansPurchaseRecommendation
       ),
    _gspprrrsResponseStatus ::
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

-- | Creates a value of 'GetSavingsPlansPurchaseRecommendationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gspprrrsMetadata' - Information regarding this specific recommendation set.
--
-- * 'gspprrrsNextPageToken' - The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
--
-- * 'gspprrrsSavingsPlansPurchaseRecommendation' - Contains your request parameters, Savings Plan Recommendations Summary, and Details.
--
-- * 'gspprrrsResponseStatus' - -- | The response status code.
getSavingsPlansPurchaseRecommendationResponse ::
  -- | 'gspprrrsResponseStatus'
  Int ->
  GetSavingsPlansPurchaseRecommendationResponse
getSavingsPlansPurchaseRecommendationResponse
  pResponseStatus_ =
    GetSavingsPlansPurchaseRecommendationResponse'
      { _gspprrrsMetadata =
          Nothing,
        _gspprrrsNextPageToken =
          Nothing,
        _gspprrrsSavingsPlansPurchaseRecommendation =
          Nothing,
        _gspprrrsResponseStatus =
          pResponseStatus_
      }

-- | Information regarding this specific recommendation set.
gspprrrsMetadata :: Lens' GetSavingsPlansPurchaseRecommendationResponse (Maybe SavingsPlansPurchaseRecommendationMetadata)
gspprrrsMetadata = lens _gspprrrsMetadata (\s a -> s {_gspprrrsMetadata = a})

-- | The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.
gspprrrsNextPageToken :: Lens' GetSavingsPlansPurchaseRecommendationResponse (Maybe Text)
gspprrrsNextPageToken = lens _gspprrrsNextPageToken (\s a -> s {_gspprrrsNextPageToken = a})

-- | Contains your request parameters, Savings Plan Recommendations Summary, and Details.
gspprrrsSavingsPlansPurchaseRecommendation :: Lens' GetSavingsPlansPurchaseRecommendationResponse (Maybe SavingsPlansPurchaseRecommendation)
gspprrrsSavingsPlansPurchaseRecommendation = lens _gspprrrsSavingsPlansPurchaseRecommendation (\s a -> s {_gspprrrsSavingsPlansPurchaseRecommendation = a})

-- | -- | The response status code.
gspprrrsResponseStatus :: Lens' GetSavingsPlansPurchaseRecommendationResponse Int
gspprrrsResponseStatus = lens _gspprrrsResponseStatus (\s a -> s {_gspprrrsResponseStatus = a})

instance
  NFData
    GetSavingsPlansPurchaseRecommendationResponse
