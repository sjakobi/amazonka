{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.RDSInstanceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RDSInstanceDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the Amazon RDS instances that AWS recommends that you purchase.
--
--
--
-- /See:/ 'rdsInstanceDetails' smart constructor.
data RDSInstanceDetails = RDSInstanceDetails'
  { _rdsidInstanceType ::
      !(Maybe Text),
    _rdsidDatabaseEdition ::
      !(Maybe Text),
    _rdsidDeploymentOption ::
      !(Maybe Text),
    _rdsidCurrentGeneration ::
      !(Maybe Bool),
    _rdsidSizeFlexEligible ::
      !(Maybe Bool),
    _rdsidLicenseModel ::
      !(Maybe Text),
    _rdsidFamily :: !(Maybe Text),
    _rdsidDatabaseEngine ::
      !(Maybe Text),
    _rdsidRegion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RDSInstanceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdsidInstanceType' - The type of instance that AWS recommends.
--
-- * 'rdsidDatabaseEdition' - The database edition that the recommended reservation supports.
--
-- * 'rdsidDeploymentOption' - Whether the recommendation is for a reservation in a single Availability Zone or a reservation with a backup in a second Availability Zone.
--
-- * 'rdsidCurrentGeneration' - Whether the recommendation is for a current-generation instance.
--
-- * 'rdsidSizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- * 'rdsidLicenseModel' - The license model that the recommended reservation supports.
--
-- * 'rdsidFamily' - The instance family of the recommended reservation.
--
-- * 'rdsidDatabaseEngine' - The database engine that the recommended reservation supports.
--
-- * 'rdsidRegion' - The AWS Region of the recommended reservation.
rdsInstanceDetails ::
  RDSInstanceDetails
rdsInstanceDetails =
  RDSInstanceDetails'
    { _rdsidInstanceType = Nothing,
      _rdsidDatabaseEdition = Nothing,
      _rdsidDeploymentOption = Nothing,
      _rdsidCurrentGeneration = Nothing,
      _rdsidSizeFlexEligible = Nothing,
      _rdsidLicenseModel = Nothing,
      _rdsidFamily = Nothing,
      _rdsidDatabaseEngine = Nothing,
      _rdsidRegion = Nothing
    }

-- | The type of instance that AWS recommends.
rdsidInstanceType :: Lens' RDSInstanceDetails (Maybe Text)
rdsidInstanceType = lens _rdsidInstanceType (\s a -> s {_rdsidInstanceType = a})

-- | The database edition that the recommended reservation supports.
rdsidDatabaseEdition :: Lens' RDSInstanceDetails (Maybe Text)
rdsidDatabaseEdition = lens _rdsidDatabaseEdition (\s a -> s {_rdsidDatabaseEdition = a})

-- | Whether the recommendation is for a reservation in a single Availability Zone or a reservation with a backup in a second Availability Zone.
rdsidDeploymentOption :: Lens' RDSInstanceDetails (Maybe Text)
rdsidDeploymentOption = lens _rdsidDeploymentOption (\s a -> s {_rdsidDeploymentOption = a})

-- | Whether the recommendation is for a current-generation instance.
rdsidCurrentGeneration :: Lens' RDSInstanceDetails (Maybe Bool)
rdsidCurrentGeneration = lens _rdsidCurrentGeneration (\s a -> s {_rdsidCurrentGeneration = a})

-- | Whether the recommended reservation is size flexible.
rdsidSizeFlexEligible :: Lens' RDSInstanceDetails (Maybe Bool)
rdsidSizeFlexEligible = lens _rdsidSizeFlexEligible (\s a -> s {_rdsidSizeFlexEligible = a})

-- | The license model that the recommended reservation supports.
rdsidLicenseModel :: Lens' RDSInstanceDetails (Maybe Text)
rdsidLicenseModel = lens _rdsidLicenseModel (\s a -> s {_rdsidLicenseModel = a})

-- | The instance family of the recommended reservation.
rdsidFamily :: Lens' RDSInstanceDetails (Maybe Text)
rdsidFamily = lens _rdsidFamily (\s a -> s {_rdsidFamily = a})

-- | The database engine that the recommended reservation supports.
rdsidDatabaseEngine :: Lens' RDSInstanceDetails (Maybe Text)
rdsidDatabaseEngine = lens _rdsidDatabaseEngine (\s a -> s {_rdsidDatabaseEngine = a})

-- | The AWS Region of the recommended reservation.
rdsidRegion :: Lens' RDSInstanceDetails (Maybe Text)
rdsidRegion = lens _rdsidRegion (\s a -> s {_rdsidRegion = a})

instance FromJSON RDSInstanceDetails where
  parseJSON =
    withObject
      "RDSInstanceDetails"
      ( \x ->
          RDSInstanceDetails'
            <$> (x .:? "InstanceType")
            <*> (x .:? "DatabaseEdition")
            <*> (x .:? "DeploymentOption")
            <*> (x .:? "CurrentGeneration")
            <*> (x .:? "SizeFlexEligible")
            <*> (x .:? "LicenseModel")
            <*> (x .:? "Family")
            <*> (x .:? "DatabaseEngine")
            <*> (x .:? "Region")
      )

instance Hashable RDSInstanceDetails

instance NFData RDSInstanceDetails
