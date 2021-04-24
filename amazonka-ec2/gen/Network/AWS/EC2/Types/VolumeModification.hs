{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeModification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeModification where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VolumeModificationState
import Network.AWS.EC2.Types.VolumeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the modification status of an EBS volume.
--
--
-- If the volume has never been modified, some element values will be null.
--
--
-- /See:/ 'volumeModification' smart constructor.
data VolumeModification = VolumeModification'
  { _vmStatusMessage ::
      !(Maybe Text),
    _vmTargetVolumeType ::
      !(Maybe VolumeType),
    _vmOriginalVolumeType ::
      !(Maybe VolumeType),
    _vmStartTime :: !(Maybe ISO8601),
    _vmVolumeId :: !(Maybe Text),
    _vmEndTime :: !(Maybe ISO8601),
    _vmOriginalIOPS :: !(Maybe Int),
    _vmTargetSize :: !(Maybe Int),
    _vmOriginalSize :: !(Maybe Int),
    _vmTargetIOPS :: !(Maybe Int),
    _vmModificationState ::
      !(Maybe VolumeModificationState),
    _vmTargetMultiAttachEnabled ::
      !(Maybe Bool),
    _vmOriginalMultiAttachEnabled ::
      !(Maybe Bool),
    _vmTargetThroughput ::
      !(Maybe Int),
    _vmOriginalThroughput ::
      !(Maybe Int),
    _vmProgress :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VolumeModification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmStatusMessage' - A status message about the modification progress or failure.
--
-- * 'vmTargetVolumeType' - The target EBS volume type of the volume.
--
-- * 'vmOriginalVolumeType' - The original EBS volume type of the volume.
--
-- * 'vmStartTime' - The modification start time.
--
-- * 'vmVolumeId' - The ID of the volume.
--
-- * 'vmEndTime' - The modification completion or failure time.
--
-- * 'vmOriginalIOPS' - The original IOPS rate of the volume.
--
-- * 'vmTargetSize' - The target size of the volume, in GiB.
--
-- * 'vmOriginalSize' - The original size of the volume, in GiB.
--
-- * 'vmTargetIOPS' - The target IOPS rate of the volume.
--
-- * 'vmModificationState' - The current modification state. The modification state is null for unmodified volumes.
--
-- * 'vmTargetMultiAttachEnabled' - The target setting for Amazon EBS Multi-Attach.
--
-- * 'vmOriginalMultiAttachEnabled' - The original setting for Amazon EBS Multi-Attach.
--
-- * 'vmTargetThroughput' - The target throughput of the volume, in MiB/s.
--
-- * 'vmOriginalThroughput' - The original throughput of the volume, in MiB/s.
--
-- * 'vmProgress' - The modification progress, from 0 to 100 percent complete.
volumeModification ::
  VolumeModification
volumeModification =
  VolumeModification'
    { _vmStatusMessage = Nothing,
      _vmTargetVolumeType = Nothing,
      _vmOriginalVolumeType = Nothing,
      _vmStartTime = Nothing,
      _vmVolumeId = Nothing,
      _vmEndTime = Nothing,
      _vmOriginalIOPS = Nothing,
      _vmTargetSize = Nothing,
      _vmOriginalSize = Nothing,
      _vmTargetIOPS = Nothing,
      _vmModificationState = Nothing,
      _vmTargetMultiAttachEnabled = Nothing,
      _vmOriginalMultiAttachEnabled = Nothing,
      _vmTargetThroughput = Nothing,
      _vmOriginalThroughput = Nothing,
      _vmProgress = Nothing
    }

-- | A status message about the modification progress or failure.
vmStatusMessage :: Lens' VolumeModification (Maybe Text)
vmStatusMessage = lens _vmStatusMessage (\s a -> s {_vmStatusMessage = a})

-- | The target EBS volume type of the volume.
vmTargetVolumeType :: Lens' VolumeModification (Maybe VolumeType)
vmTargetVolumeType = lens _vmTargetVolumeType (\s a -> s {_vmTargetVolumeType = a})

-- | The original EBS volume type of the volume.
vmOriginalVolumeType :: Lens' VolumeModification (Maybe VolumeType)
vmOriginalVolumeType = lens _vmOriginalVolumeType (\s a -> s {_vmOriginalVolumeType = a})

-- | The modification start time.
vmStartTime :: Lens' VolumeModification (Maybe UTCTime)
vmStartTime = lens _vmStartTime (\s a -> s {_vmStartTime = a}) . mapping _Time

-- | The ID of the volume.
vmVolumeId :: Lens' VolumeModification (Maybe Text)
vmVolumeId = lens _vmVolumeId (\s a -> s {_vmVolumeId = a})

-- | The modification completion or failure time.
vmEndTime :: Lens' VolumeModification (Maybe UTCTime)
vmEndTime = lens _vmEndTime (\s a -> s {_vmEndTime = a}) . mapping _Time

-- | The original IOPS rate of the volume.
vmOriginalIOPS :: Lens' VolumeModification (Maybe Int)
vmOriginalIOPS = lens _vmOriginalIOPS (\s a -> s {_vmOriginalIOPS = a})

-- | The target size of the volume, in GiB.
vmTargetSize :: Lens' VolumeModification (Maybe Int)
vmTargetSize = lens _vmTargetSize (\s a -> s {_vmTargetSize = a})

-- | The original size of the volume, in GiB.
vmOriginalSize :: Lens' VolumeModification (Maybe Int)
vmOriginalSize = lens _vmOriginalSize (\s a -> s {_vmOriginalSize = a})

-- | The target IOPS rate of the volume.
vmTargetIOPS :: Lens' VolumeModification (Maybe Int)
vmTargetIOPS = lens _vmTargetIOPS (\s a -> s {_vmTargetIOPS = a})

-- | The current modification state. The modification state is null for unmodified volumes.
vmModificationState :: Lens' VolumeModification (Maybe VolumeModificationState)
vmModificationState = lens _vmModificationState (\s a -> s {_vmModificationState = a})

-- | The target setting for Amazon EBS Multi-Attach.
vmTargetMultiAttachEnabled :: Lens' VolumeModification (Maybe Bool)
vmTargetMultiAttachEnabled = lens _vmTargetMultiAttachEnabled (\s a -> s {_vmTargetMultiAttachEnabled = a})

-- | The original setting for Amazon EBS Multi-Attach.
vmOriginalMultiAttachEnabled :: Lens' VolumeModification (Maybe Bool)
vmOriginalMultiAttachEnabled = lens _vmOriginalMultiAttachEnabled (\s a -> s {_vmOriginalMultiAttachEnabled = a})

-- | The target throughput of the volume, in MiB/s.
vmTargetThroughput :: Lens' VolumeModification (Maybe Int)
vmTargetThroughput = lens _vmTargetThroughput (\s a -> s {_vmTargetThroughput = a})

-- | The original throughput of the volume, in MiB/s.
vmOriginalThroughput :: Lens' VolumeModification (Maybe Int)
vmOriginalThroughput = lens _vmOriginalThroughput (\s a -> s {_vmOriginalThroughput = a})

-- | The modification progress, from 0 to 100 percent complete.
vmProgress :: Lens' VolumeModification (Maybe Integer)
vmProgress = lens _vmProgress (\s a -> s {_vmProgress = a})

instance FromXML VolumeModification where
  parseXML x =
    VolumeModification'
      <$> (x .@? "statusMessage")
      <*> (x .@? "targetVolumeType")
      <*> (x .@? "originalVolumeType")
      <*> (x .@? "startTime")
      <*> (x .@? "volumeId")
      <*> (x .@? "endTime")
      <*> (x .@? "originalIops")
      <*> (x .@? "targetSize")
      <*> (x .@? "originalSize")
      <*> (x .@? "targetIops")
      <*> (x .@? "modificationState")
      <*> (x .@? "targetMultiAttachEnabled")
      <*> (x .@? "originalMultiAttachEnabled")
      <*> (x .@? "targetThroughput")
      <*> (x .@? "originalThroughput")
      <*> (x .@? "progress")

instance Hashable VolumeModification

instance NFData VolumeModification
