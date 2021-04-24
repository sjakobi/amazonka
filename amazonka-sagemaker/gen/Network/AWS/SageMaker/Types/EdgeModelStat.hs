{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EdgeModelStat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EdgeModelStat where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Status of edge devices with this model.
--
--
--
-- /See:/ 'edgeModelStat' smart constructor.
data EdgeModelStat = EdgeModelStat'
  { _eModelName ::
      !Text,
    _eModelVersion :: !Text,
    _eOfflineDeviceCount :: !Integer,
    _eConnectedDeviceCount :: !Integer,
    _eActiveDeviceCount :: !Integer,
    _eSamplingDeviceCount :: !Integer
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EdgeModelStat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eModelName' - The name of the model.
--
-- * 'eModelVersion' - The model version.
--
-- * 'eOfflineDeviceCount' - The number of devices that have this model version and do not have a heart beat.
--
-- * 'eConnectedDeviceCount' - The number of devices that have this model version and have a heart beat.
--
-- * 'eActiveDeviceCount' - The number of devices that have this model version, a heart beat, and are currently running.
--
-- * 'eSamplingDeviceCount' - The number of devices with this model version and are producing sample data.
edgeModelStat ::
  -- | 'eModelName'
  Text ->
  -- | 'eModelVersion'
  Text ->
  -- | 'eOfflineDeviceCount'
  Integer ->
  -- | 'eConnectedDeviceCount'
  Integer ->
  -- | 'eActiveDeviceCount'
  Integer ->
  -- | 'eSamplingDeviceCount'
  Integer ->
  EdgeModelStat
edgeModelStat
  pModelName_
  pModelVersion_
  pOfflineDeviceCount_
  pConnectedDeviceCount_
  pActiveDeviceCount_
  pSamplingDeviceCount_ =
    EdgeModelStat'
      { _eModelName = pModelName_,
        _eModelVersion = pModelVersion_,
        _eOfflineDeviceCount = pOfflineDeviceCount_,
        _eConnectedDeviceCount = pConnectedDeviceCount_,
        _eActiveDeviceCount = pActiveDeviceCount_,
        _eSamplingDeviceCount = pSamplingDeviceCount_
      }

-- | The name of the model.
eModelName :: Lens' EdgeModelStat Text
eModelName = lens _eModelName (\s a -> s {_eModelName = a})

-- | The model version.
eModelVersion :: Lens' EdgeModelStat Text
eModelVersion = lens _eModelVersion (\s a -> s {_eModelVersion = a})

-- | The number of devices that have this model version and do not have a heart beat.
eOfflineDeviceCount :: Lens' EdgeModelStat Integer
eOfflineDeviceCount = lens _eOfflineDeviceCount (\s a -> s {_eOfflineDeviceCount = a})

-- | The number of devices that have this model version and have a heart beat.
eConnectedDeviceCount :: Lens' EdgeModelStat Integer
eConnectedDeviceCount = lens _eConnectedDeviceCount (\s a -> s {_eConnectedDeviceCount = a})

-- | The number of devices that have this model version, a heart beat, and are currently running.
eActiveDeviceCount :: Lens' EdgeModelStat Integer
eActiveDeviceCount = lens _eActiveDeviceCount (\s a -> s {_eActiveDeviceCount = a})

-- | The number of devices with this model version and are producing sample data.
eSamplingDeviceCount :: Lens' EdgeModelStat Integer
eSamplingDeviceCount = lens _eSamplingDeviceCount (\s a -> s {_eSamplingDeviceCount = a})

instance FromJSON EdgeModelStat where
  parseJSON =
    withObject
      "EdgeModelStat"
      ( \x ->
          EdgeModelStat'
            <$> (x .: "ModelName")
            <*> (x .: "ModelVersion")
            <*> (x .: "OfflineDeviceCount")
            <*> (x .: "ConnectedDeviceCount")
            <*> (x .: "ActiveDeviceCount")
            <*> (x .: "SamplingDeviceCount")
      )

instance Hashable EdgeModelStat

instance NFData EdgeModelStat
