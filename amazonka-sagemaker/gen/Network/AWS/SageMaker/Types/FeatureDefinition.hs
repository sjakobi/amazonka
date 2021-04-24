{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureDefinition where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.FeatureType

-- | A list of features. You must include @FeatureName@ and @FeatureType@ . Valid feature @FeatureType@ s are @Integral@ , @Fractional@ and @String@ .
--
--
--
-- /See:/ 'featureDefinition' smart constructor.
data FeatureDefinition = FeatureDefinition'
  { _fdFeatureType ::
      !(Maybe FeatureType),
    _fdFeatureName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FeatureDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdFeatureType' - The value type of a feature. Valid values are Integral, Fractional, or String.
--
-- * 'fdFeatureName' - The name of a feature. The type must be a string. @FeatureName@ cannot be any of the following: @is_deleted@ , @write_time@ , @api_invocation_time@ .
featureDefinition ::
  FeatureDefinition
featureDefinition =
  FeatureDefinition'
    { _fdFeatureType = Nothing,
      _fdFeatureName = Nothing
    }

-- | The value type of a feature. Valid values are Integral, Fractional, or String.
fdFeatureType :: Lens' FeatureDefinition (Maybe FeatureType)
fdFeatureType = lens _fdFeatureType (\s a -> s {_fdFeatureType = a})

-- | The name of a feature. The type must be a string. @FeatureName@ cannot be any of the following: @is_deleted@ , @write_time@ , @api_invocation_time@ .
fdFeatureName :: Lens' FeatureDefinition (Maybe Text)
fdFeatureName = lens _fdFeatureName (\s a -> s {_fdFeatureName = a})

instance FromJSON FeatureDefinition where
  parseJSON =
    withObject
      "FeatureDefinition"
      ( \x ->
          FeatureDefinition'
            <$> (x .:? "FeatureType") <*> (x .:? "FeatureName")
      )

instance Hashable FeatureDefinition

instance NFData FeatureDefinition

instance ToJSON FeatureDefinition where
  toJSON FeatureDefinition' {..} =
    object
      ( catMaybes
          [ ("FeatureType" .=) <$> _fdFeatureType,
            ("FeatureName" .=) <$> _fdFeatureName
          ]
      )
