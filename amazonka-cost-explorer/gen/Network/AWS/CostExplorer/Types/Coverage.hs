{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.Coverage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Coverage where

import Network.AWS.CostExplorer.Types.CoverageCost
import Network.AWS.CostExplorer.Types.CoverageHours
import Network.AWS.CostExplorer.Types.CoverageNormalizedUnits
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The amount of instance usage that a reservation covered.
--
--
--
-- /See:/ 'coverage' smart constructor.
data Coverage = Coverage'
  { _cCoverageCost ::
      !(Maybe CoverageCost),
    _cCoverageHours :: !(Maybe CoverageHours),
    _cCoverageNormalizedUnits ::
      !(Maybe CoverageNormalizedUnits)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Coverage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCoverageCost' - The amount of cost that the reservation covered.
--
-- * 'cCoverageHours' - The amount of instance usage that the reservation covered, in hours.
--
-- * 'cCoverageNormalizedUnits' - The amount of instance usage that the reservation covered, in normalized units.
coverage ::
  Coverage
coverage =
  Coverage'
    { _cCoverageCost = Nothing,
      _cCoverageHours = Nothing,
      _cCoverageNormalizedUnits = Nothing
    }

-- | The amount of cost that the reservation covered.
cCoverageCost :: Lens' Coverage (Maybe CoverageCost)
cCoverageCost = lens _cCoverageCost (\s a -> s {_cCoverageCost = a})

-- | The amount of instance usage that the reservation covered, in hours.
cCoverageHours :: Lens' Coverage (Maybe CoverageHours)
cCoverageHours = lens _cCoverageHours (\s a -> s {_cCoverageHours = a})

-- | The amount of instance usage that the reservation covered, in normalized units.
cCoverageNormalizedUnits :: Lens' Coverage (Maybe CoverageNormalizedUnits)
cCoverageNormalizedUnits = lens _cCoverageNormalizedUnits (\s a -> s {_cCoverageNormalizedUnits = a})

instance FromJSON Coverage where
  parseJSON =
    withObject
      "Coverage"
      ( \x ->
          Coverage'
            <$> (x .:? "CoverageCost")
            <*> (x .:? "CoverageHours")
            <*> (x .:? "CoverageNormalizedUnits")
      )

instance Hashable Coverage

instance NFData Coverage
