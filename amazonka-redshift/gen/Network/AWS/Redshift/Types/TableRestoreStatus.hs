{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.TableRestoreStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.TableRestoreStatus where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.TableRestoreStatusType

-- | Describes the status of a 'RestoreTableFromClusterSnapshot' operation.
--
--
--
-- /See:/ 'tableRestoreStatus' smart constructor.
data TableRestoreStatus = TableRestoreStatus'
  { _trsSourceDatabaseName ::
      !(Maybe Text),
    _trsSnapshotIdentifier ::
      !(Maybe Text),
    _trsTargetSchemaName ::
      !(Maybe Text),
    _trsStatus ::
      !(Maybe TableRestoreStatusType),
    _trsRequestTime ::
      !(Maybe ISO8601),
    _trsSourceTableName ::
      !(Maybe Text),
    _trsTargetDatabaseName ::
      !(Maybe Text),
    _trsMessage :: !(Maybe Text),
    _trsSourceSchemaName ::
      !(Maybe Text),
    _trsClusterIdentifier ::
      !(Maybe Text),
    _trsProgressInMegaBytes ::
      !(Maybe Integer),
    _trsNewTableName :: !(Maybe Text),
    _trsTotalDataInMegaBytes ::
      !(Maybe Integer),
    _trsTableRestoreRequestId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableRestoreStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsSourceDatabaseName' - The name of the source database that contains the table being restored.
--
-- * 'trsSnapshotIdentifier' - The identifier of the snapshot that the table is being restored from.
--
-- * 'trsTargetSchemaName' - The name of the schema to restore the table to.
--
-- * 'trsStatus' - A value that describes the current state of the table restore request. Valid Values: @SUCCEEDED@ , @FAILED@ , @CANCELED@ , @PENDING@ , @IN_PROGRESS@
--
-- * 'trsRequestTime' - The time that the table restore request was made, in Universal Coordinated Time (UTC).
--
-- * 'trsSourceTableName' - The name of the source table being restored.
--
-- * 'trsTargetDatabaseName' - The name of the database to restore the table to.
--
-- * 'trsMessage' - A description of the status of the table restore request. Status values include @SUCCEEDED@ , @FAILED@ , @CANCELED@ , @PENDING@ , @IN_PROGRESS@ .
--
-- * 'trsSourceSchemaName' - The name of the source schema that contains the table being restored.
--
-- * 'trsClusterIdentifier' - The identifier of the Amazon Redshift cluster that the table is being restored to.
--
-- * 'trsProgressInMegaBytes' - The amount of data restored to the new table so far, in megabytes (MB).
--
-- * 'trsNewTableName' - The name of the table to create as a result of the table restore request.
--
-- * 'trsTotalDataInMegaBytes' - The total amount of data to restore to the new table, in megabytes (MB).
--
-- * 'trsTableRestoreRequestId' - The unique identifier for the table restore request.
tableRestoreStatus ::
  TableRestoreStatus
tableRestoreStatus =
  TableRestoreStatus'
    { _trsSourceDatabaseName =
        Nothing,
      _trsSnapshotIdentifier = Nothing,
      _trsTargetSchemaName = Nothing,
      _trsStatus = Nothing,
      _trsRequestTime = Nothing,
      _trsSourceTableName = Nothing,
      _trsTargetDatabaseName = Nothing,
      _trsMessage = Nothing,
      _trsSourceSchemaName = Nothing,
      _trsClusterIdentifier = Nothing,
      _trsProgressInMegaBytes = Nothing,
      _trsNewTableName = Nothing,
      _trsTotalDataInMegaBytes = Nothing,
      _trsTableRestoreRequestId = Nothing
    }

-- | The name of the source database that contains the table being restored.
trsSourceDatabaseName :: Lens' TableRestoreStatus (Maybe Text)
trsSourceDatabaseName = lens _trsSourceDatabaseName (\s a -> s {_trsSourceDatabaseName = a})

-- | The identifier of the snapshot that the table is being restored from.
trsSnapshotIdentifier :: Lens' TableRestoreStatus (Maybe Text)
trsSnapshotIdentifier = lens _trsSnapshotIdentifier (\s a -> s {_trsSnapshotIdentifier = a})

-- | The name of the schema to restore the table to.
trsTargetSchemaName :: Lens' TableRestoreStatus (Maybe Text)
trsTargetSchemaName = lens _trsTargetSchemaName (\s a -> s {_trsTargetSchemaName = a})

-- | A value that describes the current state of the table restore request. Valid Values: @SUCCEEDED@ , @FAILED@ , @CANCELED@ , @PENDING@ , @IN_PROGRESS@
trsStatus :: Lens' TableRestoreStatus (Maybe TableRestoreStatusType)
trsStatus = lens _trsStatus (\s a -> s {_trsStatus = a})

-- | The time that the table restore request was made, in Universal Coordinated Time (UTC).
trsRequestTime :: Lens' TableRestoreStatus (Maybe UTCTime)
trsRequestTime = lens _trsRequestTime (\s a -> s {_trsRequestTime = a}) . mapping _Time

-- | The name of the source table being restored.
trsSourceTableName :: Lens' TableRestoreStatus (Maybe Text)
trsSourceTableName = lens _trsSourceTableName (\s a -> s {_trsSourceTableName = a})

-- | The name of the database to restore the table to.
trsTargetDatabaseName :: Lens' TableRestoreStatus (Maybe Text)
trsTargetDatabaseName = lens _trsTargetDatabaseName (\s a -> s {_trsTargetDatabaseName = a})

-- | A description of the status of the table restore request. Status values include @SUCCEEDED@ , @FAILED@ , @CANCELED@ , @PENDING@ , @IN_PROGRESS@ .
trsMessage :: Lens' TableRestoreStatus (Maybe Text)
trsMessage = lens _trsMessage (\s a -> s {_trsMessage = a})

-- | The name of the source schema that contains the table being restored.
trsSourceSchemaName :: Lens' TableRestoreStatus (Maybe Text)
trsSourceSchemaName = lens _trsSourceSchemaName (\s a -> s {_trsSourceSchemaName = a})

-- | The identifier of the Amazon Redshift cluster that the table is being restored to.
trsClusterIdentifier :: Lens' TableRestoreStatus (Maybe Text)
trsClusterIdentifier = lens _trsClusterIdentifier (\s a -> s {_trsClusterIdentifier = a})

-- | The amount of data restored to the new table so far, in megabytes (MB).
trsProgressInMegaBytes :: Lens' TableRestoreStatus (Maybe Integer)
trsProgressInMegaBytes = lens _trsProgressInMegaBytes (\s a -> s {_trsProgressInMegaBytes = a})

-- | The name of the table to create as a result of the table restore request.
trsNewTableName :: Lens' TableRestoreStatus (Maybe Text)
trsNewTableName = lens _trsNewTableName (\s a -> s {_trsNewTableName = a})

-- | The total amount of data to restore to the new table, in megabytes (MB).
trsTotalDataInMegaBytes :: Lens' TableRestoreStatus (Maybe Integer)
trsTotalDataInMegaBytes = lens _trsTotalDataInMegaBytes (\s a -> s {_trsTotalDataInMegaBytes = a})

-- | The unique identifier for the table restore request.
trsTableRestoreRequestId :: Lens' TableRestoreStatus (Maybe Text)
trsTableRestoreRequestId = lens _trsTableRestoreRequestId (\s a -> s {_trsTableRestoreRequestId = a})

instance FromXML TableRestoreStatus where
  parseXML x =
    TableRestoreStatus'
      <$> (x .@? "SourceDatabaseName")
      <*> (x .@? "SnapshotIdentifier")
      <*> (x .@? "TargetSchemaName")
      <*> (x .@? "Status")
      <*> (x .@? "RequestTime")
      <*> (x .@? "SourceTableName")
      <*> (x .@? "TargetDatabaseName")
      <*> (x .@? "Message")
      <*> (x .@? "SourceSchemaName")
      <*> (x .@? "ClusterIdentifier")
      <*> (x .@? "ProgressInMegaBytes")
      <*> (x .@? "NewTableName")
      <*> (x .@? "TotalDataInMegaBytes")
      <*> (x .@? "TableRestoreRequestId")

instance Hashable TableRestoreStatus

instance NFData TableRestoreStatus
