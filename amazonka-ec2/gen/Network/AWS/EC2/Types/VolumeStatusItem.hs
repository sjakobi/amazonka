{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeStatusItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeStatusItem where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VolumeStatusAction
import Network.AWS.EC2.Types.VolumeStatusAttachmentStatus
import Network.AWS.EC2.Types.VolumeStatusEvent
import Network.AWS.EC2.Types.VolumeStatusInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the volume status.
--
--
--
-- /See:/ 'volumeStatusItem' smart constructor.
data VolumeStatusItem = VolumeStatusItem'
  { _vsiVolumeStatus ::
      !(Maybe VolumeStatusInfo),
    _vsiOutpostARN :: !(Maybe Text),
    _vsiVolumeId :: !(Maybe Text),
    _vsiActions ::
      !(Maybe [VolumeStatusAction]),
    _vsiEvents ::
      !(Maybe [VolumeStatusEvent]),
    _vsiAvailabilityZone :: !(Maybe Text),
    _vsiAttachmentStatuses ::
      !( Maybe
           [VolumeStatusAttachmentStatus]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VolumeStatusItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsiVolumeStatus' - The volume status.
--
-- * 'vsiOutpostARN' - The Amazon Resource Name (ARN) of the Outpost.
--
-- * 'vsiVolumeId' - The volume ID.
--
-- * 'vsiActions' - The details of the operation.
--
-- * 'vsiEvents' - A list of events associated with the volume.
--
-- * 'vsiAvailabilityZone' - The Availability Zone of the volume.
--
-- * 'vsiAttachmentStatuses' - Information about the instances to which the volume is attached.
volumeStatusItem ::
  VolumeStatusItem
volumeStatusItem =
  VolumeStatusItem'
    { _vsiVolumeStatus = Nothing,
      _vsiOutpostARN = Nothing,
      _vsiVolumeId = Nothing,
      _vsiActions = Nothing,
      _vsiEvents = Nothing,
      _vsiAvailabilityZone = Nothing,
      _vsiAttachmentStatuses = Nothing
    }

-- | The volume status.
vsiVolumeStatus :: Lens' VolumeStatusItem (Maybe VolumeStatusInfo)
vsiVolumeStatus = lens _vsiVolumeStatus (\s a -> s {_vsiVolumeStatus = a})

-- | The Amazon Resource Name (ARN) of the Outpost.
vsiOutpostARN :: Lens' VolumeStatusItem (Maybe Text)
vsiOutpostARN = lens _vsiOutpostARN (\s a -> s {_vsiOutpostARN = a})

-- | The volume ID.
vsiVolumeId :: Lens' VolumeStatusItem (Maybe Text)
vsiVolumeId = lens _vsiVolumeId (\s a -> s {_vsiVolumeId = a})

-- | The details of the operation.
vsiActions :: Lens' VolumeStatusItem [VolumeStatusAction]
vsiActions = lens _vsiActions (\s a -> s {_vsiActions = a}) . _Default . _Coerce

-- | A list of events associated with the volume.
vsiEvents :: Lens' VolumeStatusItem [VolumeStatusEvent]
vsiEvents = lens _vsiEvents (\s a -> s {_vsiEvents = a}) . _Default . _Coerce

-- | The Availability Zone of the volume.
vsiAvailabilityZone :: Lens' VolumeStatusItem (Maybe Text)
vsiAvailabilityZone = lens _vsiAvailabilityZone (\s a -> s {_vsiAvailabilityZone = a})

-- | Information about the instances to which the volume is attached.
vsiAttachmentStatuses :: Lens' VolumeStatusItem [VolumeStatusAttachmentStatus]
vsiAttachmentStatuses = lens _vsiAttachmentStatuses (\s a -> s {_vsiAttachmentStatuses = a}) . _Default . _Coerce

instance FromXML VolumeStatusItem where
  parseXML x =
    VolumeStatusItem'
      <$> (x .@? "volumeStatus")
      <*> (x .@? "outpostArn")
      <*> (x .@? "volumeId")
      <*> ( x .@? "actionsSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "eventsSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "availabilityZone")
      <*> ( x .@? "attachmentStatuses" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable VolumeStatusItem

instance NFData VolumeStatusItem
