{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInterfaceAttachmentChanges
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfaceAttachmentChanges where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an attachment change.
--
--
--
-- /See:/ 'networkInterfaceAttachmentChanges' smart constructor.
data NetworkInterfaceAttachmentChanges = NetworkInterfaceAttachmentChanges'
  { _niacAttachmentId ::
      !( Maybe
           Text
       ),
    _niacDeleteOnTermination ::
      !( Maybe
           Bool
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NetworkInterfaceAttachmentChanges' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niacAttachmentId' - The ID of the network interface attachment.
--
-- * 'niacDeleteOnTermination' - Indicates whether the network interface is deleted when the instance is terminated.
networkInterfaceAttachmentChanges ::
  NetworkInterfaceAttachmentChanges
networkInterfaceAttachmentChanges =
  NetworkInterfaceAttachmentChanges'
    { _niacAttachmentId =
        Nothing,
      _niacDeleteOnTermination = Nothing
    }

-- | The ID of the network interface attachment.
niacAttachmentId :: Lens' NetworkInterfaceAttachmentChanges (Maybe Text)
niacAttachmentId = lens _niacAttachmentId (\s a -> s {_niacAttachmentId = a})

-- | Indicates whether the network interface is deleted when the instance is terminated.
niacDeleteOnTermination :: Lens' NetworkInterfaceAttachmentChanges (Maybe Bool)
niacDeleteOnTermination = lens _niacDeleteOnTermination (\s a -> s {_niacDeleteOnTermination = a})

instance Hashable NetworkInterfaceAttachmentChanges

instance NFData NetworkInterfaceAttachmentChanges

instance ToQuery NetworkInterfaceAttachmentChanges where
  toQuery NetworkInterfaceAttachmentChanges' {..} =
    mconcat
      [ "AttachmentId" =: _niacAttachmentId,
        "DeleteOnTermination" =: _niacDeleteOnTermination
      ]
