{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PtrUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PtrUpdateStatus where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The status of an updated pointer (PTR) record for an Elastic IP address.
--
--
--
-- /See:/ 'ptrUpdateStatus' smart constructor.
data PtrUpdateStatus = PtrUpdateStatus'
  { _pusStatus ::
      !(Maybe Text),
    _pusReason :: !(Maybe Text),
    _pusValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PtrUpdateStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pusStatus' - The status of the PTR record update.
--
-- * 'pusReason' - The reason for the PTR record update.
--
-- * 'pusValue' - The value for the PTR record update.
ptrUpdateStatus ::
  PtrUpdateStatus
ptrUpdateStatus =
  PtrUpdateStatus'
    { _pusStatus = Nothing,
      _pusReason = Nothing,
      _pusValue = Nothing
    }

-- | The status of the PTR record update.
pusStatus :: Lens' PtrUpdateStatus (Maybe Text)
pusStatus = lens _pusStatus (\s a -> s {_pusStatus = a})

-- | The reason for the PTR record update.
pusReason :: Lens' PtrUpdateStatus (Maybe Text)
pusReason = lens _pusReason (\s a -> s {_pusReason = a})

-- | The value for the PTR record update.
pusValue :: Lens' PtrUpdateStatus (Maybe Text)
pusValue = lens _pusValue (\s a -> s {_pusValue = a})

instance FromXML PtrUpdateStatus where
  parseXML x =
    PtrUpdateStatus'
      <$> (x .@? "status")
      <*> (x .@? "reason")
      <*> (x .@? "value")

instance Hashable PtrUpdateStatus

instance NFData PtrUpdateStatus
