{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.DescribeVaultOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.DescribeVaultOutput where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the Amazon S3 Glacier response to your request.
--
--
--
-- /See:/ 'describeVaultOutput' smart constructor.
data DescribeVaultOutput = DescribeVaultOutput'
  { _dvoLastInventoryDate ::
      !(Maybe Text),
    _dvoCreationDate ::
      !(Maybe Text),
    _dvoVaultName :: !(Maybe Text),
    _dvoVaultARN :: !(Maybe Text),
    _dvoSizeInBytes ::
      !(Maybe Integer),
    _dvoNumberOfArchives ::
      !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVaultOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvoLastInventoryDate' - The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last vault inventory. This value should be a string in the ISO 8601 date format, for example @2012-03-20T17:03:43.221Z@ .
--
-- * 'dvoCreationDate' - The Universal Coordinated Time (UTC) date when the vault was created. This value should be a string in the ISO 8601 date format, for example @2012-03-20T17:03:43.221Z@ .
--
-- * 'dvoVaultName' - The name of the vault.
--
-- * 'dvoVaultARN' - The Amazon Resource Name (ARN) of the vault.
--
-- * 'dvoSizeInBytes' - Total size, in bytes, of the archives in the vault as of the last inventory date. This field will return null if an inventory has not yet run on the vault, for example if you just created the vault.
--
-- * 'dvoNumberOfArchives' - The number of archives in the vault as of the last inventory date. This field will return @null@ if an inventory has not yet run on the vault, for example if you just created the vault.
describeVaultOutput ::
  DescribeVaultOutput
describeVaultOutput =
  DescribeVaultOutput'
    { _dvoLastInventoryDate =
        Nothing,
      _dvoCreationDate = Nothing,
      _dvoVaultName = Nothing,
      _dvoVaultARN = Nothing,
      _dvoSizeInBytes = Nothing,
      _dvoNumberOfArchives = Nothing
    }

-- | The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last vault inventory. This value should be a string in the ISO 8601 date format, for example @2012-03-20T17:03:43.221Z@ .
dvoLastInventoryDate :: Lens' DescribeVaultOutput (Maybe Text)
dvoLastInventoryDate = lens _dvoLastInventoryDate (\s a -> s {_dvoLastInventoryDate = a})

-- | The Universal Coordinated Time (UTC) date when the vault was created. This value should be a string in the ISO 8601 date format, for example @2012-03-20T17:03:43.221Z@ .
dvoCreationDate :: Lens' DescribeVaultOutput (Maybe Text)
dvoCreationDate = lens _dvoCreationDate (\s a -> s {_dvoCreationDate = a})

-- | The name of the vault.
dvoVaultName :: Lens' DescribeVaultOutput (Maybe Text)
dvoVaultName = lens _dvoVaultName (\s a -> s {_dvoVaultName = a})

-- | The Amazon Resource Name (ARN) of the vault.
dvoVaultARN :: Lens' DescribeVaultOutput (Maybe Text)
dvoVaultARN = lens _dvoVaultARN (\s a -> s {_dvoVaultARN = a})

-- | Total size, in bytes, of the archives in the vault as of the last inventory date. This field will return null if an inventory has not yet run on the vault, for example if you just created the vault.
dvoSizeInBytes :: Lens' DescribeVaultOutput (Maybe Integer)
dvoSizeInBytes = lens _dvoSizeInBytes (\s a -> s {_dvoSizeInBytes = a})

-- | The number of archives in the vault as of the last inventory date. This field will return @null@ if an inventory has not yet run on the vault, for example if you just created the vault.
dvoNumberOfArchives :: Lens' DescribeVaultOutput (Maybe Integer)
dvoNumberOfArchives = lens _dvoNumberOfArchives (\s a -> s {_dvoNumberOfArchives = a})

instance FromJSON DescribeVaultOutput where
  parseJSON =
    withObject
      "DescribeVaultOutput"
      ( \x ->
          DescribeVaultOutput'
            <$> (x .:? "LastInventoryDate")
            <*> (x .:? "CreationDate")
            <*> (x .:? "VaultName")
            <*> (x .:? "VaultARN")
            <*> (x .:? "SizeInBytes")
            <*> (x .:? "NumberOfArchives")
      )

instance Hashable DescribeVaultOutput

instance NFData DescribeVaultOutput
