{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        VAttached,
        VAttaching,
        VBusy,
        VDetached,
        VDetaching
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VolumeAttachmentState
  = VolumeAttachmentState'
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

pattern VAttached :: VolumeAttachmentState
pattern VAttached = VolumeAttachmentState' "attached"

pattern VAttaching :: VolumeAttachmentState
pattern VAttaching = VolumeAttachmentState' "attaching"

pattern VBusy :: VolumeAttachmentState
pattern VBusy = VolumeAttachmentState' "busy"

pattern VDetached :: VolumeAttachmentState
pattern VDetached = VolumeAttachmentState' "detached"

pattern VDetaching :: VolumeAttachmentState
pattern VDetaching = VolumeAttachmentState' "detaching"

{-# COMPLETE
  VAttached,
  VAttaching,
  VBusy,
  VDetached,
  VDetaching,
  VolumeAttachmentState'
  #-}

instance FromText VolumeAttachmentState where
  parser = (VolumeAttachmentState' . mk) <$> takeText

instance ToText VolumeAttachmentState where
  toText (VolumeAttachmentState' ci) = original ci

instance Hashable VolumeAttachmentState

instance NFData VolumeAttachmentState

instance ToByteString VolumeAttachmentState

instance ToQuery VolumeAttachmentState

instance ToHeader VolumeAttachmentState

instance FromXML VolumeAttachmentState where
  parseXML = parseXMLText "VolumeAttachmentState"
