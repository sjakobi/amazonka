{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ExportSnapshotRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ExportSnapshotRecord where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.DestinationInfo
import Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceInfo
import Network.AWS.Lightsail.Types.RecordState
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Prelude

-- | Describes an export snapshot record.
--
--
--
-- /See:/ 'exportSnapshotRecord' smart constructor.
data ExportSnapshotRecord = ExportSnapshotRecord'
  { _esrCreatedAt ::
      !(Maybe POSIX),
    _esrArn :: !(Maybe Text),
    _esrResourceType ::
      !(Maybe ResourceType),
    _esrState ::
      !(Maybe RecordState),
    _esrName :: !(Maybe Text),
    _esrSourceInfo ::
      !( Maybe
           ExportSnapshotRecordSourceInfo
       ),
    _esrLocation ::
      !(Maybe ResourceLocation),
    _esrDestinationInfo ::
      !(Maybe DestinationInfo)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportSnapshotRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esrCreatedAt' - The date when the export snapshot record was created.
--
-- * 'esrArn' - The Amazon Resource Name (ARN) of the export snapshot record.
--
-- * 'esrResourceType' - The Lightsail resource type (e.g., @ExportSnapshotRecord@ ).
--
-- * 'esrState' - The state of the export snapshot record.
--
-- * 'esrName' - The export snapshot record name.
--
-- * 'esrSourceInfo' - A list of objects describing the source of the export snapshot record.
--
-- * 'esrLocation' - The AWS Region and Availability Zone where the export snapshot record is located.
--
-- * 'esrDestinationInfo' - A list of objects describing the destination of the export snapshot record.
exportSnapshotRecord ::
  ExportSnapshotRecord
exportSnapshotRecord =
  ExportSnapshotRecord'
    { _esrCreatedAt = Nothing,
      _esrArn = Nothing,
      _esrResourceType = Nothing,
      _esrState = Nothing,
      _esrName = Nothing,
      _esrSourceInfo = Nothing,
      _esrLocation = Nothing,
      _esrDestinationInfo = Nothing
    }

-- | The date when the export snapshot record was created.
esrCreatedAt :: Lens' ExportSnapshotRecord (Maybe UTCTime)
esrCreatedAt = lens _esrCreatedAt (\s a -> s {_esrCreatedAt = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the export snapshot record.
esrArn :: Lens' ExportSnapshotRecord (Maybe Text)
esrArn = lens _esrArn (\s a -> s {_esrArn = a})

-- | The Lightsail resource type (e.g., @ExportSnapshotRecord@ ).
esrResourceType :: Lens' ExportSnapshotRecord (Maybe ResourceType)
esrResourceType = lens _esrResourceType (\s a -> s {_esrResourceType = a})

-- | The state of the export snapshot record.
esrState :: Lens' ExportSnapshotRecord (Maybe RecordState)
esrState = lens _esrState (\s a -> s {_esrState = a})

-- | The export snapshot record name.
esrName :: Lens' ExportSnapshotRecord (Maybe Text)
esrName = lens _esrName (\s a -> s {_esrName = a})

-- | A list of objects describing the source of the export snapshot record.
esrSourceInfo :: Lens' ExportSnapshotRecord (Maybe ExportSnapshotRecordSourceInfo)
esrSourceInfo = lens _esrSourceInfo (\s a -> s {_esrSourceInfo = a})

-- | The AWS Region and Availability Zone where the export snapshot record is located.
esrLocation :: Lens' ExportSnapshotRecord (Maybe ResourceLocation)
esrLocation = lens _esrLocation (\s a -> s {_esrLocation = a})

-- | A list of objects describing the destination of the export snapshot record.
esrDestinationInfo :: Lens' ExportSnapshotRecord (Maybe DestinationInfo)
esrDestinationInfo = lens _esrDestinationInfo (\s a -> s {_esrDestinationInfo = a})

instance FromJSON ExportSnapshotRecord where
  parseJSON =
    withObject
      "ExportSnapshotRecord"
      ( \x ->
          ExportSnapshotRecord'
            <$> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "resourceType")
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "sourceInfo")
            <*> (x .:? "location")
            <*> (x .:? "destinationInfo")
      )

instance Hashable ExportSnapshotRecord

instance NFData ExportSnapshotRecord
