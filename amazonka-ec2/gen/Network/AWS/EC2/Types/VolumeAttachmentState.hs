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
-- Module      : Network.AWS.EC2.Types.VolumeAttachmentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeAttachmentState
  ( VolumeAttachmentState
      ( ..,
        VolumeAttachmentStateVAttached,
        VolumeAttachmentStateVAttaching,
        VolumeAttachmentStateVBusy,
        VolumeAttachmentStateVDetached,
        VolumeAttachmentStateVDetaching
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype VolumeAttachmentState = VolumeAttachmentState'
  { fromVolumeAttachmentState ::
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

pattern VolumeAttachmentStateVAttached :: VolumeAttachmentState
pattern VolumeAttachmentStateVAttached = VolumeAttachmentState' "attached"

pattern VolumeAttachmentStateVAttaching :: VolumeAttachmentState
pattern VolumeAttachmentStateVAttaching = VolumeAttachmentState' "attaching"

pattern VolumeAttachmentStateVBusy :: VolumeAttachmentState
pattern VolumeAttachmentStateVBusy = VolumeAttachmentState' "busy"

pattern VolumeAttachmentStateVDetached :: VolumeAttachmentState
pattern VolumeAttachmentStateVDetached = VolumeAttachmentState' "detached"

pattern VolumeAttachmentStateVDetaching :: VolumeAttachmentState
pattern VolumeAttachmentStateVDetaching = VolumeAttachmentState' "detaching"

{-# COMPLETE
  VolumeAttachmentStateVAttached,
  VolumeAttachmentStateVAttaching,
  VolumeAttachmentStateVBusy,
  VolumeAttachmentStateVDetached,
  VolumeAttachmentStateVDetaching,
  VolumeAttachmentState'
  #-}

instance Prelude.FromText VolumeAttachmentState where
  parser = VolumeAttachmentState' Prelude.<$> Prelude.takeText

instance Prelude.ToText VolumeAttachmentState where
  toText (VolumeAttachmentState' x) = x

instance Prelude.Hashable VolumeAttachmentState

instance Prelude.NFData VolumeAttachmentState

instance Prelude.ToByteString VolumeAttachmentState

instance Prelude.ToQuery VolumeAttachmentState

instance Prelude.ToHeader VolumeAttachmentState

instance Prelude.FromXML VolumeAttachmentState where
  parseXML = Prelude.parseXMLText "VolumeAttachmentState"
