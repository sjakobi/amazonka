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
-- Module      : Network.AWS.CostExplorer.GetRightsizingRecommendation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances.
--
--
-- Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For details on calculation and function, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html Optimizing Your Cost with Rightsizing Recommendations> in the /AWS Billing and Cost Management User Guide/ .
module Network.AWS.CostExplorer.GetRightsizingRecommendation
  ( -- * Creating a Request
    getRightsizingRecommendation,
    GetRightsizingRecommendation,

    -- * Request Lenses
    grrPageSize,
    grrConfiguration,
    grrNextPageToken,
    grrFilter,
    grrService,

    -- * Destructuring the Response
    getRightsizingRecommendationResponse,
    GetRightsizingRecommendationResponse,

    -- * Response Lenses
    grrrrsConfiguration,
    grrrrsMetadata,
    grrrrsNextPageToken,
    grrrrsSummary,
    grrrrsRightsizingRecommendations,
    grrrrsResponseStatus,
  )
where

import Network.AWS.CostExplorer.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRightsizingRecommendation' smart constructor.
data GetRightsizingRecommendation = GetRightsizingRecommendation'
  { _grrPageSize ::
      !(Maybe Nat),
    _grrConfiguration ::
      !( Maybe
           RightsizingRecommendationConfiguration
       ),
    _grrNextPageToken ::
      !(Maybe Text),
    _grrFilter ::
      !( Maybe
           Expression
       ),
    _grrService ::
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

-- | Creates a value of 'GetRightsizingRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrPageSize' - The number of recommendations that you want returned in a single response object.
--
-- * 'grrConfiguration' - Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither.
--
-- * 'grrNextPageToken' - The pagination token that indicates the next set of results that you want to retrieve.
--
-- * 'grrFilter' - Undocumented member.
--
-- * 'grrService' - The specific service that you want recommendations for. The only valid value for @GetRightsizingRecommendation@ is "@AmazonEC2@ ".
getRightsizingRecommendation ::
  -- | 'grrService'
  Text ->
  GetRightsizingRecommendation
getRightsizingRecommendation pService_ =
  GetRightsizingRecommendation'
    { _grrPageSize =
        Nothing,
      _grrConfiguration = Nothing,
      _grrNextPageToken = Nothing,
      _grrFilter = Nothing,
      _grrService = pService_
    }

-- | The number of recommendations that you want returned in a single response object.
grrPageSize :: Lens' GetRightsizingRecommendation (Maybe Natural)
grrPageSize = lens _grrPageSize (\s a -> s {_grrPageSize = a}) . mapping _Nat

-- | Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither.
grrConfiguration :: Lens' GetRightsizingRecommendation (Maybe RightsizingRecommendationConfiguration)
grrConfiguration = lens _grrConfiguration (\s a -> s {_grrConfiguration = a})

-- | The pagination token that indicates the next set of results that you want to retrieve.
grrNextPageToken :: Lens' GetRightsizingRecommendation (Maybe Text)
grrNextPageToken = lens _grrNextPageToken (\s a -> s {_grrNextPageToken = a})

-- | Undocumented member.
grrFilter :: Lens' GetRightsizingRecommendation (Maybe Expression)
grrFilter = lens _grrFilter (\s a -> s {_grrFilter = a})

-- | The specific service that you want recommendations for. The only valid value for @GetRightsizingRecommendation@ is "@AmazonEC2@ ".
grrService :: Lens' GetRightsizingRecommendation Text
grrService = lens _grrService (\s a -> s {_grrService = a})

instance AWSRequest GetRightsizingRecommendation where
  type
    Rs GetRightsizingRecommendation =
      GetRightsizingRecommendationResponse
  request = postJSON costExplorer
  response =
    receiveJSON
      ( \s h x ->
          GetRightsizingRecommendationResponse'
            <$> (x .?> "Configuration")
            <*> (x .?> "Metadata")
            <*> (x .?> "NextPageToken")
            <*> (x .?> "Summary")
            <*> (x .?> "RightsizingRecommendations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetRightsizingRecommendation

instance NFData GetRightsizingRecommendation

instance ToHeaders GetRightsizingRecommendation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSInsightsIndexService.GetRightsizingRecommendation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRightsizingRecommendation where
  toJSON GetRightsizingRecommendation' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _grrPageSize,
            ("Configuration" .=) <$> _grrConfiguration,
            ("NextPageToken" .=) <$> _grrNextPageToken,
            ("Filter" .=) <$> _grrFilter,
            Just ("Service" .= _grrService)
          ]
      )

instance ToPath GetRightsizingRecommendation where
  toPath = const "/"

instance ToQuery GetRightsizingRecommendation where
  toQuery = const mempty

-- | /See:/ 'getRightsizingRecommendationResponse' smart constructor.
data GetRightsizingRecommendationResponse = GetRightsizingRecommendationResponse'
  { _grrrrsConfiguration ::
      !( Maybe
           RightsizingRecommendationConfiguration
       ),
    _grrrrsMetadata ::
      !( Maybe
           RightsizingRecommendationMetadata
       ),
    _grrrrsNextPageToken ::
      !( Maybe
           Text
       ),
    _grrrrsSummary ::
      !( Maybe
           RightsizingRecommendationSummary
       ),
    _grrrrsRightsizingRecommendations ::
      !( Maybe
           [RightsizingRecommendation]
       ),
    _grrrrsResponseStatus ::
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

-- | Creates a value of 'GetRightsizingRecommendationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrrsConfiguration' - Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither.
--
-- * 'grrrrsMetadata' - Information regarding this specific recommendation set.
--
-- * 'grrrrsNextPageToken' - The token to retrieve the next set of results.
--
-- * 'grrrrsSummary' - Summary of this recommendation set.
--
-- * 'grrrrsRightsizingRecommendations' - Recommendations to rightsize resources.
--
-- * 'grrrrsResponseStatus' - -- | The response status code.
getRightsizingRecommendationResponse ::
  -- | 'grrrrsResponseStatus'
  Int ->
  GetRightsizingRecommendationResponse
getRightsizingRecommendationResponse pResponseStatus_ =
  GetRightsizingRecommendationResponse'
    { _grrrrsConfiguration =
        Nothing,
      _grrrrsMetadata = Nothing,
      _grrrrsNextPageToken = Nothing,
      _grrrrsSummary = Nothing,
      _grrrrsRightsizingRecommendations =
        Nothing,
      _grrrrsResponseStatus =
        pResponseStatus_
    }

-- | Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither.
grrrrsConfiguration :: Lens' GetRightsizingRecommendationResponse (Maybe RightsizingRecommendationConfiguration)
grrrrsConfiguration = lens _grrrrsConfiguration (\s a -> s {_grrrrsConfiguration = a})

-- | Information regarding this specific recommendation set.
grrrrsMetadata :: Lens' GetRightsizingRecommendationResponse (Maybe RightsizingRecommendationMetadata)
grrrrsMetadata = lens _grrrrsMetadata (\s a -> s {_grrrrsMetadata = a})

-- | The token to retrieve the next set of results.
grrrrsNextPageToken :: Lens' GetRightsizingRecommendationResponse (Maybe Text)
grrrrsNextPageToken = lens _grrrrsNextPageToken (\s a -> s {_grrrrsNextPageToken = a})

-- | Summary of this recommendation set.
grrrrsSummary :: Lens' GetRightsizingRecommendationResponse (Maybe RightsizingRecommendationSummary)
grrrrsSummary = lens _grrrrsSummary (\s a -> s {_grrrrsSummary = a})

-- | Recommendations to rightsize resources.
grrrrsRightsizingRecommendations :: Lens' GetRightsizingRecommendationResponse [RightsizingRecommendation]
grrrrsRightsizingRecommendations = lens _grrrrsRightsizingRecommendations (\s a -> s {_grrrrsRightsizingRecommendations = a}) . _Default . _Coerce

-- | -- | The response status code.
grrrrsResponseStatus :: Lens' GetRightsizingRecommendationResponse Int
grrrrsResponseStatus = lens _grrrrsResponseStatus (\s a -> s {_grrrrsResponseStatus = a})

instance NFData GetRightsizingRecommendationResponse
