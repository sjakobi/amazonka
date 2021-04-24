{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.OrganizationAggregationSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationAggregationSource where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | This object contains regions to set up the aggregator and an IAM role to retrieve organization details.
--
--
--
-- /See:/ 'organizationAggregationSource' smart constructor.
data OrganizationAggregationSource = OrganizationAggregationSource'
  { _oasAllAWSRegions ::
      !( Maybe
           Bool
       ),
    _oasAWSRegions ::
      !( Maybe
           ( List1
               Text
           )
       ),
    _oasRoleARN ::
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

-- | Creates a value of 'OrganizationAggregationSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oasAllAWSRegions' - If true, aggregate existing AWS Config regions and future regions.
--
-- * 'oasAWSRegions' - The source regions being aggregated.
--
-- * 'oasRoleARN' - ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
organizationAggregationSource ::
  -- | 'oasRoleARN'
  Text ->
  OrganizationAggregationSource
organizationAggregationSource pRoleARN_ =
  OrganizationAggregationSource'
    { _oasAllAWSRegions =
        Nothing,
      _oasAWSRegions = Nothing,
      _oasRoleARN = pRoleARN_
    }

-- | If true, aggregate existing AWS Config regions and future regions.
oasAllAWSRegions :: Lens' OrganizationAggregationSource (Maybe Bool)
oasAllAWSRegions = lens _oasAllAWSRegions (\s a -> s {_oasAllAWSRegions = a})

-- | The source regions being aggregated.
oasAWSRegions :: Lens' OrganizationAggregationSource (Maybe (NonEmpty Text))
oasAWSRegions = lens _oasAWSRegions (\s a -> s {_oasAWSRegions = a}) . mapping _List1

-- | ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.
oasRoleARN :: Lens' OrganizationAggregationSource Text
oasRoleARN = lens _oasRoleARN (\s a -> s {_oasRoleARN = a})

instance FromJSON OrganizationAggregationSource where
  parseJSON =
    withObject
      "OrganizationAggregationSource"
      ( \x ->
          OrganizationAggregationSource'
            <$> (x .:? "AllAwsRegions")
            <*> (x .:? "AwsRegions")
            <*> (x .: "RoleArn")
      )

instance Hashable OrganizationAggregationSource

instance NFData OrganizationAggregationSource

instance ToJSON OrganizationAggregationSource where
  toJSON OrganizationAggregationSource' {..} =
    object
      ( catMaybes
          [ ("AllAwsRegions" .=) <$> _oasAllAWSRegions,
            ("AwsRegions" .=) <$> _oasAWSRegions,
            Just ("RoleArn" .= _oasRoleARN)
          ]
      )
