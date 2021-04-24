{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DeviceFleetSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DeviceFleetSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary of the device fleet.
--
--
--
-- /See:/ 'deviceFleetSummary' smart constructor.
data DeviceFleetSummary = DeviceFleetSummary'
  { _dfsCreationTime ::
      !(Maybe POSIX),
    _dfsLastModifiedTime ::
      !(Maybe POSIX),
    _dfsDeviceFleetARN :: !Text,
    _dfsDeviceFleetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceFleetSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsCreationTime' - Timestamp of when the device fleet was created.
--
-- * 'dfsLastModifiedTime' - Timestamp of when the device fleet was last updated.
--
-- * 'dfsDeviceFleetARN' - Amazon Resource Name (ARN) of the device fleet.
--
-- * 'dfsDeviceFleetName' - Name of the device fleet.
deviceFleetSummary ::
  -- | 'dfsDeviceFleetARN'
  Text ->
  -- | 'dfsDeviceFleetName'
  Text ->
  DeviceFleetSummary
deviceFleetSummary pDeviceFleetARN_ pDeviceFleetName_ =
  DeviceFleetSummary'
    { _dfsCreationTime = Nothing,
      _dfsLastModifiedTime = Nothing,
      _dfsDeviceFleetARN = pDeviceFleetARN_,
      _dfsDeviceFleetName = pDeviceFleetName_
    }

-- | Timestamp of when the device fleet was created.
dfsCreationTime :: Lens' DeviceFleetSummary (Maybe UTCTime)
dfsCreationTime = lens _dfsCreationTime (\s a -> s {_dfsCreationTime = a}) . mapping _Time

-- | Timestamp of when the device fleet was last updated.
dfsLastModifiedTime :: Lens' DeviceFleetSummary (Maybe UTCTime)
dfsLastModifiedTime = lens _dfsLastModifiedTime (\s a -> s {_dfsLastModifiedTime = a}) . mapping _Time

-- | Amazon Resource Name (ARN) of the device fleet.
dfsDeviceFleetARN :: Lens' DeviceFleetSummary Text
dfsDeviceFleetARN = lens _dfsDeviceFleetARN (\s a -> s {_dfsDeviceFleetARN = a})

-- | Name of the device fleet.
dfsDeviceFleetName :: Lens' DeviceFleetSummary Text
dfsDeviceFleetName = lens _dfsDeviceFleetName (\s a -> s {_dfsDeviceFleetName = a})

instance FromJSON DeviceFleetSummary where
  parseJSON =
    withObject
      "DeviceFleetSummary"
      ( \x ->
          DeviceFleetSummary'
            <$> (x .:? "CreationTime")
            <*> (x .:? "LastModifiedTime")
            <*> (x .: "DeviceFleetArn")
            <*> (x .: "DeviceFleetName")
      )

instance Hashable DeviceFleetSummary

instance NFData DeviceFleetSummary
