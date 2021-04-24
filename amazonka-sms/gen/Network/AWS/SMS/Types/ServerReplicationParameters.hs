{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerReplicationParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerReplicationParameters where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.LicenseType

-- | The replication parameters for replicating a server.
--
--
--
-- /See:/ 'serverReplicationParameters' smart constructor.
data ServerReplicationParameters = ServerReplicationParameters'
  { _srpNumberOfRecentAMIsToKeep ::
      !(Maybe Int),
    _srpEncrypted ::
      !(Maybe Bool),
    _srpSeedTime ::
      !(Maybe POSIX),
    _srpKmsKeyId ::
      !(Maybe Text),
    _srpFrequency ::
      !(Maybe Int),
    _srpRunOnce ::
      !(Maybe Bool),
    _srpLicenseType ::
      !( Maybe
           LicenseType
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

-- | Creates a value of 'ServerReplicationParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srpNumberOfRecentAMIsToKeep' - The number of recent AMIs to keep when creating a replication job for this server.
--
-- * 'srpEncrypted' - Indicates whether the replication job produces encrypted AMIs.
--
-- * 'srpSeedTime' - The seed time for creating a replication job for the server.
--
-- * 'srpKmsKeyId' - The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:     * KMS key ID     * KMS key alias     * ARN referring to the KMS key ID     * ARN referring to the KMS key alias If encrypted is enabled but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.
--
-- * 'srpFrequency' - The frequency of creating replication jobs for the server.
--
-- * 'srpRunOnce' - Indicates whether to run the replication job one time.
--
-- * 'srpLicenseType' - The license type for creating a replication job for the server.
serverReplicationParameters ::
  ServerReplicationParameters
serverReplicationParameters =
  ServerReplicationParameters'
    { _srpNumberOfRecentAMIsToKeep =
        Nothing,
      _srpEncrypted = Nothing,
      _srpSeedTime = Nothing,
      _srpKmsKeyId = Nothing,
      _srpFrequency = Nothing,
      _srpRunOnce = Nothing,
      _srpLicenseType = Nothing
    }

-- | The number of recent AMIs to keep when creating a replication job for this server.
srpNumberOfRecentAMIsToKeep :: Lens' ServerReplicationParameters (Maybe Int)
srpNumberOfRecentAMIsToKeep = lens _srpNumberOfRecentAMIsToKeep (\s a -> s {_srpNumberOfRecentAMIsToKeep = a})

-- | Indicates whether the replication job produces encrypted AMIs.
srpEncrypted :: Lens' ServerReplicationParameters (Maybe Bool)
srpEncrypted = lens _srpEncrypted (\s a -> s {_srpEncrypted = a})

-- | The seed time for creating a replication job for the server.
srpSeedTime :: Lens' ServerReplicationParameters (Maybe UTCTime)
srpSeedTime = lens _srpSeedTime (\s a -> s {_srpSeedTime = a}) . mapping _Time

-- | The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:     * KMS key ID     * KMS key alias     * ARN referring to the KMS key ID     * ARN referring to the KMS key alias If encrypted is enabled but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.
srpKmsKeyId :: Lens' ServerReplicationParameters (Maybe Text)
srpKmsKeyId = lens _srpKmsKeyId (\s a -> s {_srpKmsKeyId = a})

-- | The frequency of creating replication jobs for the server.
srpFrequency :: Lens' ServerReplicationParameters (Maybe Int)
srpFrequency = lens _srpFrequency (\s a -> s {_srpFrequency = a})

-- | Indicates whether to run the replication job one time.
srpRunOnce :: Lens' ServerReplicationParameters (Maybe Bool)
srpRunOnce = lens _srpRunOnce (\s a -> s {_srpRunOnce = a})

-- | The license type for creating a replication job for the server.
srpLicenseType :: Lens' ServerReplicationParameters (Maybe LicenseType)
srpLicenseType = lens _srpLicenseType (\s a -> s {_srpLicenseType = a})

instance FromJSON ServerReplicationParameters where
  parseJSON =
    withObject
      "ServerReplicationParameters"
      ( \x ->
          ServerReplicationParameters'
            <$> (x .:? "numberOfRecentAmisToKeep")
            <*> (x .:? "encrypted")
            <*> (x .:? "seedTime")
            <*> (x .:? "kmsKeyId")
            <*> (x .:? "frequency")
            <*> (x .:? "runOnce")
            <*> (x .:? "licenseType")
      )

instance Hashable ServerReplicationParameters

instance NFData ServerReplicationParameters

instance ToJSON ServerReplicationParameters where
  toJSON ServerReplicationParameters' {..} =
    object
      ( catMaybes
          [ ("numberOfRecentAmisToKeep" .=)
              <$> _srpNumberOfRecentAMIsToKeep,
            ("encrypted" .=) <$> _srpEncrypted,
            ("seedTime" .=) <$> _srpSeedTime,
            ("kmsKeyId" .=) <$> _srpKmsKeyId,
            ("frequency" .=) <$> _srpFrequency,
            ("runOnce" .=) <$> _srpRunOnce,
            ("licenseType" .=) <$> _srpLicenseType
          ]
      )
