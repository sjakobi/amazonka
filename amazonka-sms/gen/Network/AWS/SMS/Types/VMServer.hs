{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.VMServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.VMServer where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.VMManagerType
import Network.AWS.SMS.Types.VMServerAddress

-- | Represents a VM server.
--
--
--
-- /See:/ 'vMServer' smart constructor.
data VMServer = VMServer'
  { _vmsVmPath ::
      !(Maybe Text),
    _vmsVmManagerName :: !(Maybe Text),
    _vmsVmName :: !(Maybe Text),
    _vmsVmServerAddress :: !(Maybe VMServerAddress),
    _vmsVmManagerType :: !(Maybe VMManagerType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VMServer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmsVmPath' - The VM folder path in the vCenter Server virtual machine inventory tree.
--
-- * 'vmsVmManagerName' - The name of the VM manager.
--
-- * 'vmsVmName' - The name of the VM.
--
-- * 'vmsVmServerAddress' - The VM server location.
--
-- * 'vmsVmManagerType' - The type of VM management product.
vMServer ::
  VMServer
vMServer =
  VMServer'
    { _vmsVmPath = Nothing,
      _vmsVmManagerName = Nothing,
      _vmsVmName = Nothing,
      _vmsVmServerAddress = Nothing,
      _vmsVmManagerType = Nothing
    }

-- | The VM folder path in the vCenter Server virtual machine inventory tree.
vmsVmPath :: Lens' VMServer (Maybe Text)
vmsVmPath = lens _vmsVmPath (\s a -> s {_vmsVmPath = a})

-- | The name of the VM manager.
vmsVmManagerName :: Lens' VMServer (Maybe Text)
vmsVmManagerName = lens _vmsVmManagerName (\s a -> s {_vmsVmManagerName = a})

-- | The name of the VM.
vmsVmName :: Lens' VMServer (Maybe Text)
vmsVmName = lens _vmsVmName (\s a -> s {_vmsVmName = a})

-- | The VM server location.
vmsVmServerAddress :: Lens' VMServer (Maybe VMServerAddress)
vmsVmServerAddress = lens _vmsVmServerAddress (\s a -> s {_vmsVmServerAddress = a})

-- | The type of VM management product.
vmsVmManagerType :: Lens' VMServer (Maybe VMManagerType)
vmsVmManagerType = lens _vmsVmManagerType (\s a -> s {_vmsVmManagerType = a})

instance FromJSON VMServer where
  parseJSON =
    withObject
      "VMServer"
      ( \x ->
          VMServer'
            <$> (x .:? "vmPath")
            <*> (x .:? "vmManagerName")
            <*> (x .:? "vmName")
            <*> (x .:? "vmServerAddress")
            <*> (x .:? "vmManagerType")
      )

instance Hashable VMServer

instance NFData VMServer

instance ToJSON VMServer where
  toJSON VMServer' {..} =
    object
      ( catMaybes
          [ ("vmPath" .=) <$> _vmsVmPath,
            ("vmManagerName" .=) <$> _vmsVmManagerName,
            ("vmName" .=) <$> _vmsVmName,
            ("vmServerAddress" .=) <$> _vmsVmServerAddress,
            ("vmManagerType" .=) <$> _vmsVmManagerType
          ]
      )
