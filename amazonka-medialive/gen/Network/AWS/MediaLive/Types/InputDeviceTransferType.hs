{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        InputDeviceTransferTypeINCOMING,
        InputDeviceTransferTypeOUTGOING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of device transfer. INCOMING for an input device that is being
-- transferred to you, OUTGOING for an input device that you are
-- transferring to another AWS account.
newtype InputDeviceTransferType = InputDeviceTransferType'
  { fromInputDeviceTransferType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern InputDeviceTransferTypeINCOMING :: InputDeviceTransferType
pattern InputDeviceTransferTypeINCOMING = InputDeviceTransferType' "INCOMING"

pattern InputDeviceTransferTypeOUTGOING :: InputDeviceTransferType
pattern InputDeviceTransferTypeOUTGOING = InputDeviceTransferType' "OUTGOING"

{-# COMPLETE
  InputDeviceTransferTypeINCOMING,
  InputDeviceTransferTypeOUTGOING,
  InputDeviceTransferType'
  #-}

instance Prelude.FromText InputDeviceTransferType where
  parser = InputDeviceTransferType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceTransferType where
  toText (InputDeviceTransferType' x) = x

instance Prelude.Hashable InputDeviceTransferType

instance Prelude.NFData InputDeviceTransferType

instance Prelude.ToByteString InputDeviceTransferType

instance Prelude.ToQuery InputDeviceTransferType

instance Prelude.ToHeader InputDeviceTransferType

instance Prelude.FromJSON InputDeviceTransferType where
  parseJSON = Prelude.parseJSONText "InputDeviceTransferType"
