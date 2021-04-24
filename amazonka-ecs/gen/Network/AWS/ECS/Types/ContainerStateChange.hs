{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerStateChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerStateChange where

import Network.AWS.ECS.Types.NetworkBinding
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing a change in state for a container.
--
--
--
-- /See:/ 'containerStateChange' smart constructor.
data ContainerStateChange = ContainerStateChange'
  { _cscImageDigest ::
      !(Maybe Text),
    _cscStatus :: !(Maybe Text),
    _cscRuntimeId ::
      !(Maybe Text),
    _cscExitCode :: !(Maybe Int),
    _cscNetworkBindings ::
      !(Maybe [NetworkBinding]),
    _cscReason :: !(Maybe Text),
    _cscContainerName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerStateChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscImageDigest' - The container image SHA 256 digest.
--
-- * 'cscStatus' - The status of the container.
--
-- * 'cscRuntimeId' - The ID of the Docker container.
--
-- * 'cscExitCode' - The exit code for the container, if the state change is a result of the container exiting.
--
-- * 'cscNetworkBindings' - Any network bindings associated with the container.
--
-- * 'cscReason' - The reason for the state change.
--
-- * 'cscContainerName' - The name of the container.
containerStateChange ::
  ContainerStateChange
containerStateChange =
  ContainerStateChange'
    { _cscImageDigest = Nothing,
      _cscStatus = Nothing,
      _cscRuntimeId = Nothing,
      _cscExitCode = Nothing,
      _cscNetworkBindings = Nothing,
      _cscReason = Nothing,
      _cscContainerName = Nothing
    }

-- | The container image SHA 256 digest.
cscImageDigest :: Lens' ContainerStateChange (Maybe Text)
cscImageDigest = lens _cscImageDigest (\s a -> s {_cscImageDigest = a})

-- | The status of the container.
cscStatus :: Lens' ContainerStateChange (Maybe Text)
cscStatus = lens _cscStatus (\s a -> s {_cscStatus = a})

-- | The ID of the Docker container.
cscRuntimeId :: Lens' ContainerStateChange (Maybe Text)
cscRuntimeId = lens _cscRuntimeId (\s a -> s {_cscRuntimeId = a})

-- | The exit code for the container, if the state change is a result of the container exiting.
cscExitCode :: Lens' ContainerStateChange (Maybe Int)
cscExitCode = lens _cscExitCode (\s a -> s {_cscExitCode = a})

-- | Any network bindings associated with the container.
cscNetworkBindings :: Lens' ContainerStateChange [NetworkBinding]
cscNetworkBindings = lens _cscNetworkBindings (\s a -> s {_cscNetworkBindings = a}) . _Default . _Coerce

-- | The reason for the state change.
cscReason :: Lens' ContainerStateChange (Maybe Text)
cscReason = lens _cscReason (\s a -> s {_cscReason = a})

-- | The name of the container.
cscContainerName :: Lens' ContainerStateChange (Maybe Text)
cscContainerName = lens _cscContainerName (\s a -> s {_cscContainerName = a})

instance Hashable ContainerStateChange

instance NFData ContainerStateChange

instance ToJSON ContainerStateChange where
  toJSON ContainerStateChange' {..} =
    object
      ( catMaybes
          [ ("imageDigest" .=) <$> _cscImageDigest,
            ("status" .=) <$> _cscStatus,
            ("runtimeId" .=) <$> _cscRuntimeId,
            ("exitCode" .=) <$> _cscExitCode,
            ("networkBindings" .=) <$> _cscNetworkBindings,
            ("reason" .=) <$> _cscReason,
            ("containerName" .=) <$> _cscContainerName
          ]
      )
