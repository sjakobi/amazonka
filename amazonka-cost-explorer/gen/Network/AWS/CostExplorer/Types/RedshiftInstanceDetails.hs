{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.RedshiftInstanceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RedshiftInstanceDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the Amazon Redshift instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'redshiftInstanceDetails' smart constructor.
data RedshiftInstanceDetails = RedshiftInstanceDetails'
  { _ridCurrentGeneration ::
      !(Maybe Bool),
    _ridSizeFlexEligible ::
      !(Maybe Bool),
    _ridFamily ::
      !(Maybe Text),
    _ridNodeType ::
      !(Maybe Text),
    _ridRegion ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RedshiftInstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ridCurrentGeneration' - Whether the recommendation is for a current-generation instance.
--
-- * 'ridSizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- * 'ridFamily' - The instance family of the recommended reservation.
--
-- * 'ridNodeType' - The type of node that AWS recommends.
--
-- * 'ridRegion' - The AWS Region of the recommended reservation.
redshiftInstanceDetails ::
  RedshiftInstanceDetails
redshiftInstanceDetails =
  RedshiftInstanceDetails'
    { _ridCurrentGeneration =
        Nothing,
      _ridSizeFlexEligible = Nothing,
      _ridFamily = Nothing,
      _ridNodeType = Nothing,
      _ridRegion = Nothing
    }

-- | Whether the recommendation is for a current-generation instance.
ridCurrentGeneration :: Lens' RedshiftInstanceDetails (Maybe Bool)
ridCurrentGeneration = lens _ridCurrentGeneration (\s a -> s {_ridCurrentGeneration = a})

-- | Whether the recommended reservation is size flexible.
ridSizeFlexEligible :: Lens' RedshiftInstanceDetails (Maybe Bool)
ridSizeFlexEligible = lens _ridSizeFlexEligible (\s a -> s {_ridSizeFlexEligible = a})

-- | The instance family of the recommended reservation.
ridFamily :: Lens' RedshiftInstanceDetails (Maybe Text)
ridFamily = lens _ridFamily (\s a -> s {_ridFamily = a})

-- | The type of node that AWS recommends.
ridNodeType :: Lens' RedshiftInstanceDetails (Maybe Text)
ridNodeType = lens _ridNodeType (\s a -> s {_ridNodeType = a})

-- | The AWS Region of the recommended reservation.
ridRegion :: Lens' RedshiftInstanceDetails (Maybe Text)
ridRegion = lens _ridRegion (\s a -> s {_ridRegion = a})

instance FromJSON RedshiftInstanceDetails where
  parseJSON =
    withObject
      "RedshiftInstanceDetails"
      ( \x ->
          RedshiftInstanceDetails'
            <$> (x .:? "CurrentGeneration")
            <*> (x .:? "SizeFlexEligible")
            <*> (x .:? "Family")
            <*> (x .:? "NodeType")
            <*> (x .:? "Region")
      )

instance Hashable RedshiftInstanceDetails

instance NFData RedshiftInstanceDetails
