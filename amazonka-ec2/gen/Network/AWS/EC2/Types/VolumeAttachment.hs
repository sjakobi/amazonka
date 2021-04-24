{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeAttachment where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VolumeAttachmentState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes volume attachment details.
--
--
--
-- /See:/ 'volumeAttachment' smart constructor.
data VolumeAttachment = VolumeAttachment'
  { _vInstanceId ::
      !(Maybe Text),
    _vAttachTime :: !(Maybe ISO8601),
    _vDevice :: !(Maybe Text),
    _vVolumeId :: !(Maybe Text),
    _vState ::
      !(Maybe VolumeAttachmentState),
    _vDeleteOnTermination ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VolumeAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vInstanceId' - The ID of the instance.
--
-- * 'vAttachTime' - The time stamp when the attachment initiated.
--
-- * 'vDevice' - The device name.
--
-- * 'vVolumeId' - The ID of the volume.
--
-- * 'vState' - The attachment state of the volume.
--
-- * 'vDeleteOnTermination' - Indicates whether the EBS volume is deleted on instance termination.
volumeAttachment ::
  VolumeAttachment
volumeAttachment =
  VolumeAttachment'
    { _vInstanceId = Nothing,
      _vAttachTime = Nothing,
      _vDevice = Nothing,
      _vVolumeId = Nothing,
      _vState = Nothing,
      _vDeleteOnTermination = Nothing
    }

-- | The ID of the instance.
vInstanceId :: Lens' VolumeAttachment (Maybe Text)
vInstanceId = lens _vInstanceId (\s a -> s {_vInstanceId = a})

-- | The time stamp when the attachment initiated.
vAttachTime :: Lens' VolumeAttachment (Maybe UTCTime)
vAttachTime = lens _vAttachTime (\s a -> s {_vAttachTime = a}) . mapping _Time

-- | The device name.
vDevice :: Lens' VolumeAttachment (Maybe Text)
vDevice = lens _vDevice (\s a -> s {_vDevice = a})

-- | The ID of the volume.
vVolumeId :: Lens' VolumeAttachment (Maybe Text)
vVolumeId = lens _vVolumeId (\s a -> s {_vVolumeId = a})

-- | The attachment state of the volume.
vState :: Lens' VolumeAttachment (Maybe VolumeAttachmentState)
vState = lens _vState (\s a -> s {_vState = a})

-- | Indicates whether the EBS volume is deleted on instance termination.
vDeleteOnTermination :: Lens' VolumeAttachment (Maybe Bool)
vDeleteOnTermination = lens _vDeleteOnTermination (\s a -> s {_vDeleteOnTermination = a})

instance FromXML VolumeAttachment where
  parseXML x =
    VolumeAttachment'
      <$> (x .@? "instanceId")
      <*> (x .@? "attachTime")
      <*> (x .@? "device")
      <*> (x .@? "volumeId")
      <*> (x .@? "status")
      <*> (x .@? "deleteOnTermination")

instance Hashable VolumeAttachment

instance NFData VolumeAttachment
