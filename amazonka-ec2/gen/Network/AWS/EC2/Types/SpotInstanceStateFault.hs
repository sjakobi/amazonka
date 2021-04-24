{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SpotInstanceStateFault
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotInstanceStateFault where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a Spot Instance state change.
--
--
--
-- /See:/ 'spotInstanceStateFault' smart constructor.
data SpotInstanceStateFault = SpotInstanceStateFault'
  { _sisfMessage ::
      !(Maybe Text),
    _sisfCode ::
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

-- | Creates a value of 'SpotInstanceStateFault' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sisfMessage' - The message for the Spot Instance state change.
--
-- * 'sisfCode' - The reason code for the Spot Instance state change.
spotInstanceStateFault ::
  SpotInstanceStateFault
spotInstanceStateFault =
  SpotInstanceStateFault'
    { _sisfMessage = Nothing,
      _sisfCode = Nothing
    }

-- | The message for the Spot Instance state change.
sisfMessage :: Lens' SpotInstanceStateFault (Maybe Text)
sisfMessage = lens _sisfMessage (\s a -> s {_sisfMessage = a})

-- | The reason code for the Spot Instance state change.
sisfCode :: Lens' SpotInstanceStateFault (Maybe Text)
sisfCode = lens _sisfCode (\s a -> s {_sisfCode = a})

instance FromXML SpotInstanceStateFault where
  parseXML x =
    SpotInstanceStateFault'
      <$> (x .@? "message") <*> (x .@? "code")

instance Hashable SpotInstanceStateFault

instance NFData SpotInstanceStateFault
