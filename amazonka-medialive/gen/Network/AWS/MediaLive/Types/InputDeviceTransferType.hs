{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceTransferType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceTransferType
  ( InputDeviceTransferType
      ( ..,
        Incoming,
        Outgoing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of device transfer. INCOMING for an input device that is being transferred to you, OUTGOING for an input device that you are transferring to another AWS account.
data InputDeviceTransferType
  = InputDeviceTransferType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Incoming :: InputDeviceTransferType
pattern Incoming = InputDeviceTransferType' "INCOMING"

pattern Outgoing :: InputDeviceTransferType
pattern Outgoing = InputDeviceTransferType' "OUTGOING"

{-# COMPLETE
  Incoming,
  Outgoing,
  InputDeviceTransferType'
  #-}

instance FromText InputDeviceTransferType where
  parser = (InputDeviceTransferType' . mk) <$> takeText

instance ToText InputDeviceTransferType where
  toText (InputDeviceTransferType' ci) = original ci

instance Hashable InputDeviceTransferType

instance NFData InputDeviceTransferType

instance ToByteString InputDeviceTransferType

instance ToQuery InputDeviceTransferType

instance ToHeader InputDeviceTransferType

instance FromJSON InputDeviceTransferType where
  parseJSON = parseJSONText "InputDeviceTransferType"
