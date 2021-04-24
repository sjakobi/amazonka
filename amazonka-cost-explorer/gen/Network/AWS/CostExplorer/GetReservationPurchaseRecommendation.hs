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
-- Module      : Network.AWS.CostExplorer.GetReservationPurchaseRecommendation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing.
--
--
-- AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings.
--
-- For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for @c4.large@ because that is the smallest size instance in the c4 instance family.
module Network.AWS.CostExplorer.GetReservationPurchaseRecommendation
  ( -- * Creating a Request
    getReservationPurchaseRecommendation,
    GetReservationPurchaseRecommendation,

    -- * Request Lenses
    grprAccountId,
    grprPaymentOption,
    grprPageSize,
    grprAccountScope,
    grprServiceSpecification,
    grprTermInYears,
    grprNextPageToken,
    grprLookbackPeriodInDays,
    grprFilter,
    grprService,

    -- * Destructuring the Response
    getReservationPurchaseRecommendationResponse,
    GetReservationPurchaseRecommendationResponse,

    -- * Response Lenses
    grprrrsMetadata,
    grprrrsRecommendations,
    grprrrsNextPageToken,
    grprrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getReservationPurchaseRecommendation' smart constructor.
data GetReservationPurchaseRecommendation = GetReservationPurchaseRecommendation'
  { _grprAccountId ::
      !( Maybe
           Text
       ),
    _grprPaymentOption ::
      !( Maybe
           PaymentOption
       ),
    _grprPageSize ::
      !( Maybe
           Nat
       ),
    _grprAccountScope ::
      !( Maybe
           AccountScope
       ),
    _grprServiceSpecification ::
      !( Maybe
           ServiceSpecification
       ),
    _grprTermInYears ::
      !( Maybe
           TermInYears
       ),
    _grprNextPageToken ::
      !( Maybe
           Text
       ),
    _grprLookbackPeriodInDays ::
      !( Maybe
           LookbackPeriodInDays
       ),
    _grprFilter ::
      !( Maybe
           Expression
       ),
    _grprService ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetReservationPurchaseRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grprAccountId' - The account ID that is associated with the recommendation.
--
-- * 'grprPaymentOption' - The reservation purchase option that you want recommendations for.
--
-- * 'grprPageSize' - The number of recommendations that you want returned in a single response object.
--
-- * 'grprAccountScope' - The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual member accounts only.
--
-- * 'grprServiceSpecification' - The hardware specifications for the service instances that you want recommendations for, such as standard or convertible Amazon EC2 instances.
--
-- * 'grprTermInYears' - The reservation term that you want recommendations for.
--
-- * 'grprNextPageToken' - The pagination token that indicates the next set of results that you want to retrieve.
--
-- * 'grprLookbackPeriodInDays' - The number of previous days that you want AWS to consider when it calculates your recommendations.
--
-- * 'grprFilter' - Undocumented member.
--
-- * 'grprService' - The specific service that you want recommendations for.
getReservationPurchaseRecommendation ::
  -- | 'grprService'
  Text ->
  GetReservationPurchaseRecommendation
getReservationPurchaseRecommendation pService_ =
  GetReservationPurchaseRecommendation'
    { _grprAccountId =
        Nothing,
      _grprPaymentOption = Nothing,
      _grprPageSize = Nothing,
      _grprAccountScope = Nothing,
      _grprServiceSpecification = Nothing,
      _grprTermInYears = Nothing,
      _grprNextPageToken = Nothing,
      _grprLookbackPeriodInDays = Nothing,
      _grprFilter = Nothing,
      _grprService = pService_
    }

-- | The account ID that is associated with the recommendation.
grprAccountId :: Lens' GetReservationPurchaseRecommendation (Maybe Text)
grprAccountId = lens _grprAccountId (\s a -> s {_grprAccountId = a})

-- | The reservation purchase option that you want recommendations for.
grprPaymentOption :: Lens' GetReservationPurchaseRecommendation (Maybe PaymentOption)
grprPaymentOption = lens _grprPaymentOption (\s a -> s {_grprPaymentOption = a})

-- | The number of recommendations that you want returned in a single response object.
grprPageSize :: Lens' GetReservationPurchaseRecommendation (Maybe Natural)
grprPageSize = lens _grprPageSize (\s a -> s {_grprPageSize = a}) . mapping _Nat

-- | The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual member accounts only.
grprAccountScope :: Lens' GetReservationPurchaseRecommendation (Maybe AccountScope)
grprAccountScope = lens _grprAccountScope (\s a -> s {_grprAccountScope = a})

-- | The hardware specifications for the service instances that you want recommendations for, such as standard or convertible Amazon EC2 instances.
grprServiceSpecification :: Lens' GetReservationPurchaseRecommendation (Maybe ServiceSpecification)
grprServiceSpecification = lens _grprServiceSpecification (\s a -> s {_grprServiceSpecification = a})

-- | The reservation term that you want recommendations for.
grprTermInYears :: Lens' GetReservationPurchaseRecommendation (Maybe TermInYears)
grprTermInYears = lens _grprTermInYears (\s a -> s {_grprTermInYears = a})

-- | The pagination token that indicates the next set of results that you want to retrieve.
grprNextPageToken :: Lens' GetReservationPurchaseRecommendation (Maybe Text)
grprNextPageToken = lens _grprNextPageToken (\s a -> s {_grprNextPageToken = a})

-- | The number of previous days that you want AWS to consider when it calculates your recommendations.
grprLookbackPeriodInDays :: Lens' GetReservationPurchaseRecommendation (Maybe LookbackPeriodInDays)
grprLookbackPeriodInDays = lens _grprLookbackPeriodInDays (\s a -> s {_grprLookbackPeriodInDays = a})

-- | Undocumented member.
grprFilter :: Lens' GetReservationPurchaseRecommendation (Maybe Expression)
grprFilter = lens _grprFilter (\s a -> s {_grprFilter = a})

-- | The specific service that you want recommendations for.
grprService :: Lens' GetReservationPurchaseRecommendation Text
grprService = lens _grprService (\s a -> s {_grprService = a})

instance
  AWSRequest
    GetReservationPurchaseRecommendation
  where
  type
    Rs GetReservationPurchaseRecommendation =
      GetReservationPurchaseRecommendationResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetReservationPurchaseRecommendationResponse'
            <$> (x .?> "Metadata")
            <*> (x .?> "Recommendations" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetReservationPurchaseRecommendation

instance NFData GetReservationPurchaseRecommendation

instance
  ToHeaders
    GetReservationPurchaseRecommendation
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetReservationPurchaseRecommendation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetReservationPurchaseRecommendation where
  toJSON GetReservationPurchaseRecommendation' {..} =
    object
      ( catMaybes
          [ ("AccountId" .=) <$> _grprAccountId,
            ("PaymentOption" .=) <$> _grprPaymentOption,
            ("PageSize" .=) <$> _grprPageSize,
            ("AccountScope" .=) <$> _grprAccountScope,
            ("ServiceSpecification" .=)
              <$> _grprServiceSpecification,
            ("TermInYears" .=) <$> _grprTermInYears,
            ("NextPageToken" .=) <$> _grprNextPageToken,
            ("LookbackPeriodInDays" .=)
              <$> _grprLookbackPeriodInDays,
            ("Filter" .=) <$> _grprFilter,
            Just ("Service" .= _grprService)
          ]
      )

instance ToPath GetReservationPurchaseRecommendation where
  toPath = const "/"

instance ToQuery GetReservationPurchaseRecommendation where
  toQuery = const mempty

-- | /See:/ 'getReservationPurchaseRecommendationResponse' smart constructor.
data GetReservationPurchaseRecommendationResponse = GetReservationPurchaseRecommendationResponse'
  { _grprrrsMetadata ::
      !( Maybe
           ReservationPurchaseRecommendationMetadata
       ),
    _grprrrsRecommendations ::
      !( Maybe
           [ReservationPurchaseRecommendation]
       ),
    _grprrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grprrrsResponseStatus ::
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

-- | Creates a value of 'GetReservationPurchaseRecommendationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grprrrsMetadata' - Information about this specific recommendation call, such as the time stamp for when Cost Explorer generated this recommendation.
--
-- * 'grprrrsRecommendations' - Recommendations for reservations to purchase.
--
-- * 'grprrrsNextPageToken' - The pagination token for the next set of retrievable results.
--
-- * 'grprrrsResponseStatus' - -- | The response status code.
getReservationPurchaseRecommendationResponse ::
  -- | 'grprrrsResponseStatus'
  Int ->
  GetReservationPurchaseRecommendationResponse
getReservationPurchaseRecommendationResponse
  pResponseStatus_ =
    GetReservationPurchaseRecommendationResponse'
      { _grprrrsMetadata =
          Nothing,
        _grprrrsRecommendations =
          Nothing,
        _grprrrsNextPageToken =
          Nothing,
        _grprrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about this specific recommendation call, such as the time stamp for when Cost Explorer generated this recommendation.
grprrrsMetadata :: Lens' GetReservationPurchaseRecommendationResponse (Maybe ReservationPurchaseRecommendationMetadata)
grprrrsMetadata = lens _grprrrsMetadata (\s a -> s {_grprrrsMetadata = a})

-- | Recommendations for reservations to purchase.
grprrrsRecommendations :: Lens' GetReservationPurchaseRecommendationResponse [ReservationPurchaseRecommendation]
grprrrsRecommendations = lens _grprrrsRecommendations (\s a -> s {_grprrrsRecommendations = a}) . _Default . _Coerce

-- | The pagination token for the next set of retrievable results.
grprrrsNextPageToken :: Lens' GetReservationPurchaseRecommendationResponse (Maybe Text)
grprrrsNextPageToken = lens _grprrrsNextPageToken (\s a -> s {_grprrrsNextPageToken = a})

-- | -- | The response status code.
grprrrsResponseStatus :: Lens' GetReservationPurchaseRecommendationResponse Int
grprrrsResponseStatus = lens _grprrrsResponseStatus (\s a -> s {_grprrrsResponseStatus = a})

instance
  NFData
    GetReservationPurchaseRecommendationResponse
