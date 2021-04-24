{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.RightsizingRecommendationMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RightsizingRecommendationMetadata where

import Network.AWS.CostExplorer.Types.LookbackPeriodInDays
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata for this recommendation set.
--
--
--
-- /See:/ 'rightsizingRecommendationMetadata' smart constructor.
data RightsizingRecommendationMetadata = RightsizingRecommendationMetadata'
  { _rrmRecommendationId ::
      !( Maybe
           Text
       ),
    _rrmAdditionalMetadata ::
      !( Maybe
           Text
       ),
    _rrmLookbackPeriodInDays ::
      !( Maybe
           LookbackPeriodInDays
       ),
    _rrmGenerationTimestamp ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RightsizingRecommendationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrmRecommendationId' - The ID for this specific recommendation.
--
-- * 'rrmAdditionalMetadata' - Additional metadata that may be applicable to the recommendation.
--
-- * 'rrmLookbackPeriodInDays' - How many days of previous usage that AWS considers when making this recommendation.
--
-- * 'rrmGenerationTimestamp' - The timestamp for when AWS made this recommendation.
rightsizingRecommendationMetadata ::
  RightsizingRecommendationMetadata
rightsizingRecommendationMetadata =
  RightsizingRecommendationMetadata'
    { _rrmRecommendationId =
        Nothing,
      _rrmAdditionalMetadata = Nothing,
      _rrmLookbackPeriodInDays = Nothing,
      _rrmGenerationTimestamp = Nothing
    }

-- | The ID for this specific recommendation.
rrmRecommendationId :: Lens' RightsizingRecommendationMetadata (Maybe Text)
rrmRecommendationId = lens _rrmRecommendationId (\s a -> s {_rrmRecommendationId = a})

-- | Additional metadata that may be applicable to the recommendation.
rrmAdditionalMetadata :: Lens' RightsizingRecommendationMetadata (Maybe Text)
rrmAdditionalMetadata = lens _rrmAdditionalMetadata (\s a -> s {_rrmAdditionalMetadata = a})

-- | How many days of previous usage that AWS considers when making this recommendation.
rrmLookbackPeriodInDays :: Lens' RightsizingRecommendationMetadata (Maybe LookbackPeriodInDays)
rrmLookbackPeriodInDays = lens _rrmLookbackPeriodInDays (\s a -> s {_rrmLookbackPeriodInDays = a})

-- | The timestamp for when AWS made this recommendation.
rrmGenerationTimestamp :: Lens' RightsizingRecommendationMetadata (Maybe Text)
rrmGenerationTimestamp = lens _rrmGenerationTimestamp (\s a -> s {_rrmGenerationTimestamp = a})

instance FromJSON RightsizingRecommendationMetadata where
  parseJSON =
    withObject
      "RightsizingRecommendationMetadata"
      ( \x ->
          RightsizingRecommendationMetadata'
            <$> (x .:? "RecommendationId")
            <*> (x .:? "AdditionalMetadata")
            <*> (x .:? "LookbackPeriodInDays")
            <*> (x .:? "GenerationTimestamp")
      )

instance Hashable RightsizingRecommendationMetadata

instance NFData RightsizingRecommendationMetadata
