{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.ExportTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ExportTask where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the details of a snapshot export to Amazon S3.
--
--
-- This data type is used as a response element in the @DescribeExportTasks@ action.
--
--
-- /See:/ 'exportTask' smart constructor.
data ExportTask = ExportTask'
  { _etTaskEndTime ::
      !(Maybe ISO8601),
    _etIAMRoleARN :: !(Maybe Text),
    _etStatus :: !(Maybe Text),
    _etTotalExtractedDataInGB :: !(Maybe Int),
    _etWarningMessage :: !(Maybe Text),
    _etSnapshotTime :: !(Maybe ISO8601),
    _etS3Bucket :: !(Maybe Text),
    _etExportOnly :: !(Maybe [Text]),
    _etKMSKeyId :: !(Maybe Text),
    _etFailureCause :: !(Maybe Text),
    _etPercentProgress :: !(Maybe Int),
    _etSourceARN :: !(Maybe Text),
    _etS3Prefix :: !(Maybe Text),
    _etTaskStartTime :: !(Maybe ISO8601),
    _etExportTaskIdentifier :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etTaskEndTime' - The time that the snapshot export task completed.
--
-- * 'etIAMRoleARN' - The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot.
--
-- * 'etStatus' - The progress status of the export task.
--
-- * 'etTotalExtractedDataInGB' - The total amount of data exported, in gigabytes.
--
-- * 'etWarningMessage' - A warning about the snapshot export task.
--
-- * 'etSnapshotTime' - The time that the snapshot was created.
--
-- * 'etS3Bucket' - The Amazon S3 bucket that the snapshot is exported to.
--
-- * 'etExportOnly' - The data exported from the snapshot. Valid values are the following:     * @database@ - Export all the data from a specified database.     * @database.table@ /table-name/ - Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.     * @database.schema@ /schema-name/ - Export a database schema of the snapshot. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.     * @database.schema.table@ /table-name/ - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.
--
-- * 'etKMSKeyId' - The key identifier of the AWS KMS customer master key (CMK) that is used to encrypt the snapshot when it's exported to Amazon S3. The AWS KMS CMK identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the snapshot export must have encryption and decryption permissions to use this AWS KMS CMK.
--
-- * 'etFailureCause' - The reason the export failed, if it failed.
--
-- * 'etPercentProgress' - The progress of the snapshot export task as a percentage.
--
-- * 'etSourceARN' - The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.
--
-- * 'etS3Prefix' - The Amazon S3 bucket prefix that is the file name and path of the exported snapshot.
--
-- * 'etTaskStartTime' - The time that the snapshot export task started.
--
-- * 'etExportTaskIdentifier' - A unique identifier for the snapshot export task. This ID isn't an identifier for the Amazon S3 bucket where the snapshot is exported to.
exportTask ::
  ExportTask
exportTask =
  ExportTask'
    { _etTaskEndTime = Nothing,
      _etIAMRoleARN = Nothing,
      _etStatus = Nothing,
      _etTotalExtractedDataInGB = Nothing,
      _etWarningMessage = Nothing,
      _etSnapshotTime = Nothing,
      _etS3Bucket = Nothing,
      _etExportOnly = Nothing,
      _etKMSKeyId = Nothing,
      _etFailureCause = Nothing,
      _etPercentProgress = Nothing,
      _etSourceARN = Nothing,
      _etS3Prefix = Nothing,
      _etTaskStartTime = Nothing,
      _etExportTaskIdentifier = Nothing
    }

-- | The time that the snapshot export task completed.
etTaskEndTime :: Lens' ExportTask (Maybe UTCTime)
etTaskEndTime = lens _etTaskEndTime (\s a -> s {_etTaskEndTime = a}) . mapping _Time

-- | The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot.
etIAMRoleARN :: Lens' ExportTask (Maybe Text)
etIAMRoleARN = lens _etIAMRoleARN (\s a -> s {_etIAMRoleARN = a})

-- | The progress status of the export task.
etStatus :: Lens' ExportTask (Maybe Text)
etStatus = lens _etStatus (\s a -> s {_etStatus = a})

-- | The total amount of data exported, in gigabytes.
etTotalExtractedDataInGB :: Lens' ExportTask (Maybe Int)
etTotalExtractedDataInGB = lens _etTotalExtractedDataInGB (\s a -> s {_etTotalExtractedDataInGB = a})

-- | A warning about the snapshot export task.
etWarningMessage :: Lens' ExportTask (Maybe Text)
etWarningMessage = lens _etWarningMessage (\s a -> s {_etWarningMessage = a})

-- | The time that the snapshot was created.
etSnapshotTime :: Lens' ExportTask (Maybe UTCTime)
etSnapshotTime = lens _etSnapshotTime (\s a -> s {_etSnapshotTime = a}) . mapping _Time

-- | The Amazon S3 bucket that the snapshot is exported to.
etS3Bucket :: Lens' ExportTask (Maybe Text)
etS3Bucket = lens _etS3Bucket (\s a -> s {_etS3Bucket = a})

-- | The data exported from the snapshot. Valid values are the following:     * @database@ - Export all the data from a specified database.     * @database.table@ /table-name/ - Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.     * @database.schema@ /schema-name/ - Export a database schema of the snapshot. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.     * @database.schema.table@ /table-name/ - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.
etExportOnly :: Lens' ExportTask [Text]
etExportOnly = lens _etExportOnly (\s a -> s {_etExportOnly = a}) . _Default . _Coerce

-- | The key identifier of the AWS KMS customer master key (CMK) that is used to encrypt the snapshot when it's exported to Amazon S3. The AWS KMS CMK identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the snapshot export must have encryption and decryption permissions to use this AWS KMS CMK.
etKMSKeyId :: Lens' ExportTask (Maybe Text)
etKMSKeyId = lens _etKMSKeyId (\s a -> s {_etKMSKeyId = a})

-- | The reason the export failed, if it failed.
etFailureCause :: Lens' ExportTask (Maybe Text)
etFailureCause = lens _etFailureCause (\s a -> s {_etFailureCause = a})

-- | The progress of the snapshot export task as a percentage.
etPercentProgress :: Lens' ExportTask (Maybe Int)
etPercentProgress = lens _etPercentProgress (\s a -> s {_etPercentProgress = a})

-- | The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.
etSourceARN :: Lens' ExportTask (Maybe Text)
etSourceARN = lens _etSourceARN (\s a -> s {_etSourceARN = a})

-- | The Amazon S3 bucket prefix that is the file name and path of the exported snapshot.
etS3Prefix :: Lens' ExportTask (Maybe Text)
etS3Prefix = lens _etS3Prefix (\s a -> s {_etS3Prefix = a})

-- | The time that the snapshot export task started.
etTaskStartTime :: Lens' ExportTask (Maybe UTCTime)
etTaskStartTime = lens _etTaskStartTime (\s a -> s {_etTaskStartTime = a}) . mapping _Time

-- | A unique identifier for the snapshot export task. This ID isn't an identifier for the Amazon S3 bucket where the snapshot is exported to.
etExportTaskIdentifier :: Lens' ExportTask (Maybe Text)
etExportTaskIdentifier = lens _etExportTaskIdentifier (\s a -> s {_etExportTaskIdentifier = a})

instance FromXML ExportTask where
  parseXML x =
    ExportTask'
      <$> (x .@? "TaskEndTime")
      <*> (x .@? "IamRoleArn")
      <*> (x .@? "Status")
      <*> (x .@? "TotalExtractedDataInGB")
      <*> (x .@? "WarningMessage")
      <*> (x .@? "SnapshotTime")
      <*> (x .@? "S3Bucket")
      <*> ( x .@? "ExportOnly" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "FailureCause")
      <*> (x .@? "PercentProgress")
      <*> (x .@? "SourceArn")
      <*> (x .@? "S3Prefix")
      <*> (x .@? "TaskStartTime")
      <*> (x .@? "ExportTaskIdentifier")

instance Hashable ExportTask

instance NFData ExportTask
