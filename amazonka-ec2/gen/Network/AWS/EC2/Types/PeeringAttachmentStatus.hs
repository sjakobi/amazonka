{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PeeringAttachmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PeeringAttachmentStatus where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The status of the transit gateway peering attachment.
--
--
--
-- /See:/ 'peeringAttachmentStatus' smart constructor.
data PeeringAttachmentStatus = PeeringAttachmentStatus'
  { _pasMessage ::
      !(Maybe Text),
    _pasCode ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PeeringAttachmentStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasMessage' - The status message, if applicable.
--
-- * 'pasCode' - The status code.
peeringAttachmentStatus ::
  PeeringAttachmentStatus
peeringAttachmentStatus =
  PeeringAttachmentStatus'
    { _pasMessage = Nothing,
      _pasCode = Nothing
    }

-- | The status message, if applicable.
pasMessage :: Lens' PeeringAttachmentStatus (Maybe Text)
pasMessage = lens _pasMessage (\s a -> s {_pasMessage = a})

-- | The status code.
pasCode :: Lens' PeeringAttachmentStatus (Maybe Text)
pasCode = lens _pasCode (\s a -> s {_pasCode = a})

instance FromXML PeeringAttachmentStatus where
  parseXML x =
    PeeringAttachmentStatus'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable PeeringAttachmentStatus

instance NFData PeeringAttachmentStatus
