{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReplicaDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReplicaDescription where

import Network.AWS.DynamoDB.Types.ProvisionedThroughputOverride
import Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexDescription
import Network.AWS.DynamoDB.Types.ReplicaStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the details of the replica.
--
--
--
-- /See:/ 'replicaDescription' smart constructor.
data ReplicaDescription = ReplicaDescription'
  { _rdRegionName ::
      !(Maybe Text),
    _rdGlobalSecondaryIndexes ::
      !( Maybe
           [ReplicaGlobalSecondaryIndexDescription]
       ),
    _rdProvisionedThroughputOverride ::
      !( Maybe
           ProvisionedThroughputOverride
       ),
    _rdKMSMasterKeyId ::
      !(Maybe Text),
    _rdReplicaStatusDescription ::
      !(Maybe Text),
    _rdReplicaStatusPercentProgress ::
      !(Maybe Text),
    _rdReplicaStatus ::
      !(Maybe ReplicaStatus),
    _rdReplicaInaccessibleDateTime ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicaDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRegionName' - The name of the Region.
--
-- * 'rdGlobalSecondaryIndexes' - Replica-specific global secondary index settings.
--
-- * 'rdProvisionedThroughputOverride' - Replica-specific provisioned throughput. If not described, uses the source table's provisioned throughput settings.
--
-- * 'rdKMSMasterKeyId' - The AWS KMS customer master key (CMK) of the replica that will be used for AWS KMS encryption.
--
-- * 'rdReplicaStatusDescription' - Detailed information about the replica status.
--
-- * 'rdReplicaStatusPercentProgress' - Specifies the progress of a Create, Update, or Delete action on the replica as a percentage.
--
-- * 'rdReplicaStatus' - The current state of the replica:     * @CREATING@ - The replica is being created.     * @UPDATING@ - The replica is being updated.     * @DELETING@ - The replica is being deleted.     * @ACTIVE@ - The replica is ready for use.     * @REGION_DISABLED@ - The replica is inaccessible because the AWS Region has been disabled.     * @INACCESSIBLE_ENCRYPTION_CREDENTIALS @ - The AWS KMS key used to encrypt the table is inaccessible.
--
-- * 'rdReplicaInaccessibleDateTime' - The time at which the replica was first detected as inaccessible. To determine cause of inaccessibility check the @ReplicaStatus@ property.
replicaDescription ::
  ReplicaDescription
replicaDescription =
  ReplicaDescription'
    { _rdRegionName = Nothing,
      _rdGlobalSecondaryIndexes = Nothing,
      _rdProvisionedThroughputOverride = Nothing,
      _rdKMSMasterKeyId = Nothing,
      _rdReplicaStatusDescription = Nothing,
      _rdReplicaStatusPercentProgress = Nothing,
      _rdReplicaStatus = Nothing,
      _rdReplicaInaccessibleDateTime = Nothing
    }

-- | The name of the Region.
rdRegionName :: Lens' ReplicaDescription (Maybe Text)
rdRegionName = lens _rdRegionName (\s a -> s {_rdRegionName = a})

-- | Replica-specific global secondary index settings.
rdGlobalSecondaryIndexes :: Lens' ReplicaDescription [ReplicaGlobalSecondaryIndexDescription]
rdGlobalSecondaryIndexes = lens _rdGlobalSecondaryIndexes (\s a -> s {_rdGlobalSecondaryIndexes = a}) . _Default . _Coerce

-- | Replica-specific provisioned throughput. If not described, uses the source table's provisioned throughput settings.
rdProvisionedThroughputOverride :: Lens' ReplicaDescription (Maybe ProvisionedThroughputOverride)
rdProvisionedThroughputOverride = lens _rdProvisionedThroughputOverride (\s a -> s {_rdProvisionedThroughputOverride = a})

-- | The AWS KMS customer master key (CMK) of the replica that will be used for AWS KMS encryption.
rdKMSMasterKeyId :: Lens' ReplicaDescription (Maybe Text)
rdKMSMasterKeyId = lens _rdKMSMasterKeyId (\s a -> s {_rdKMSMasterKeyId = a})

-- | Detailed information about the replica status.
rdReplicaStatusDescription :: Lens' ReplicaDescription (Maybe Text)
rdReplicaStatusDescription = lens _rdReplicaStatusDescription (\s a -> s {_rdReplicaStatusDescription = a})

-- | Specifies the progress of a Create, Update, or Delete action on the replica as a percentage.
rdReplicaStatusPercentProgress :: Lens' ReplicaDescription (Maybe Text)
rdReplicaStatusPercentProgress = lens _rdReplicaStatusPercentProgress (\s a -> s {_rdReplicaStatusPercentProgress = a})

-- | The current state of the replica:     * @CREATING@ - The replica is being created.     * @UPDATING@ - The replica is being updated.     * @DELETING@ - The replica is being deleted.     * @ACTIVE@ - The replica is ready for use.     * @REGION_DISABLED@ - The replica is inaccessible because the AWS Region has been disabled.     * @INACCESSIBLE_ENCRYPTION_CREDENTIALS @ - The AWS KMS key used to encrypt the table is inaccessible.
rdReplicaStatus :: Lens' ReplicaDescription (Maybe ReplicaStatus)
rdReplicaStatus = lens _rdReplicaStatus (\s a -> s {_rdReplicaStatus = a})

-- | The time at which the replica was first detected as inaccessible. To determine cause of inaccessibility check the @ReplicaStatus@ property.
rdReplicaInaccessibleDateTime :: Lens' ReplicaDescription (Maybe UTCTime)
rdReplicaInaccessibleDateTime = lens _rdReplicaInaccessibleDateTime (\s a -> s {_rdReplicaInaccessibleDateTime = a}) . mapping _Time

instance FromJSON ReplicaDescription where
  parseJSON =
    withObject
      "ReplicaDescription"
      ( \x ->
          ReplicaDescription'
            <$> (x .:? "RegionName")
            <*> (x .:? "GlobalSecondaryIndexes" .!= mempty)
            <*> (x .:? "ProvisionedThroughputOverride")
            <*> (x .:? "KMSMasterKeyId")
            <*> (x .:? "ReplicaStatusDescription")
            <*> (x .:? "ReplicaStatusPercentProgress")
            <*> (x .:? "ReplicaStatus")
            <*> (x .:? "ReplicaInaccessibleDateTime")
      )

instance Hashable ReplicaDescription

instance NFData ReplicaDescription
