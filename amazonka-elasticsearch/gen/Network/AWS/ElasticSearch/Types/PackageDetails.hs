{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.PackageDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.PackageDetails where

import Network.AWS.ElasticSearch.Types.ErrorDetails
import Network.AWS.ElasticSearch.Types.PackageStatus
import Network.AWS.ElasticSearch.Types.PackageType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Basic information about a package.
--
--
--
-- /See:/ 'packageDetails' smart constructor.
data PackageDetails = PackageDetails'
  { _pdAvailablePackageVersion ::
      !(Maybe Text),
    _pdPackageStatus ::
      !(Maybe PackageStatus),
    _pdPackageName :: !(Maybe Text),
    _pdCreatedAt :: !(Maybe POSIX),
    _pdPackageId :: !(Maybe Text),
    _pdPackageDescription :: !(Maybe Text),
    _pdLastUpdatedAt :: !(Maybe POSIX),
    _pdPackageType :: !(Maybe PackageType),
    _pdErrorDetails :: !(Maybe ErrorDetails)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PackageDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdAvailablePackageVersion' - Undocumented member.
--
-- * 'pdPackageStatus' - Current state of the package. Values are COPYING/COPY_FAILED/AVAILABLE/DELETING/DELETE_FAILED
--
-- * 'pdPackageName' - User specified name of the package.
--
-- * 'pdCreatedAt' - Timestamp which tells creation date of the package.
--
-- * 'pdPackageId' - Internal ID of the package.
--
-- * 'pdPackageDescription' - User-specified description of the package.
--
-- * 'pdLastUpdatedAt' - Undocumented member.
--
-- * 'pdPackageType' - Currently supports only TXT-DICTIONARY.
--
-- * 'pdErrorDetails' - Additional information if the package is in an error state. Null otherwise.
packageDetails ::
  PackageDetails
packageDetails =
  PackageDetails'
    { _pdAvailablePackageVersion =
        Nothing,
      _pdPackageStatus = Nothing,
      _pdPackageName = Nothing,
      _pdCreatedAt = Nothing,
      _pdPackageId = Nothing,
      _pdPackageDescription = Nothing,
      _pdLastUpdatedAt = Nothing,
      _pdPackageType = Nothing,
      _pdErrorDetails = Nothing
    }

-- | Undocumented member.
pdAvailablePackageVersion :: Lens' PackageDetails (Maybe Text)
pdAvailablePackageVersion = lens _pdAvailablePackageVersion (\s a -> s {_pdAvailablePackageVersion = a})

-- | Current state of the package. Values are COPYING/COPY_FAILED/AVAILABLE/DELETING/DELETE_FAILED
pdPackageStatus :: Lens' PackageDetails (Maybe PackageStatus)
pdPackageStatus = lens _pdPackageStatus (\s a -> s {_pdPackageStatus = a})

-- | User specified name of the package.
pdPackageName :: Lens' PackageDetails (Maybe Text)
pdPackageName = lens _pdPackageName (\s a -> s {_pdPackageName = a})

-- | Timestamp which tells creation date of the package.
pdCreatedAt :: Lens' PackageDetails (Maybe UTCTime)
pdCreatedAt = lens _pdCreatedAt (\s a -> s {_pdCreatedAt = a}) . mapping _Time

-- | Internal ID of the package.
pdPackageId :: Lens' PackageDetails (Maybe Text)
pdPackageId = lens _pdPackageId (\s a -> s {_pdPackageId = a})

-- | User-specified description of the package.
pdPackageDescription :: Lens' PackageDetails (Maybe Text)
pdPackageDescription = lens _pdPackageDescription (\s a -> s {_pdPackageDescription = a})

-- | Undocumented member.
pdLastUpdatedAt :: Lens' PackageDetails (Maybe UTCTime)
pdLastUpdatedAt = lens _pdLastUpdatedAt (\s a -> s {_pdLastUpdatedAt = a}) . mapping _Time

-- | Currently supports only TXT-DICTIONARY.
pdPackageType :: Lens' PackageDetails (Maybe PackageType)
pdPackageType = lens _pdPackageType (\s a -> s {_pdPackageType = a})

-- | Additional information if the package is in an error state. Null otherwise.
pdErrorDetails :: Lens' PackageDetails (Maybe ErrorDetails)
pdErrorDetails = lens _pdErrorDetails (\s a -> s {_pdErrorDetails = a})

instance FromJSON PackageDetails where
  parseJSON =
    withObject
      "PackageDetails"
      ( \x ->
          PackageDetails'
            <$> (x .:? "AvailablePackageVersion")
            <*> (x .:? "PackageStatus")
            <*> (x .:? "PackageName")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "PackageID")
            <*> (x .:? "PackageDescription")
            <*> (x .:? "LastUpdatedAt")
            <*> (x .:? "PackageType")
            <*> (x .:? "ErrorDetails")
      )

instance Hashable PackageDetails

instance NFData PackageDetails
