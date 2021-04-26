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
-- Module      : Network.AWS.EC2.Types.AttachmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AttachmentStatus
  ( AttachmentStatus
      ( ..,
        AttachmentStatusAAttached,
        AttachmentStatusAAttaching,
        AttachmentStatusAAvailable,
        AttachmentStatusABusy,
        AttachmentStatusADetached,
        AttachmentStatusADetaching
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AttachmentStatus = AttachmentStatus'
  { fromAttachmentStatus ::
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

pattern AttachmentStatusAAttached :: AttachmentStatus
pattern AttachmentStatusAAttached = AttachmentStatus' "attached"

pattern AttachmentStatusAAttaching :: AttachmentStatus
pattern AttachmentStatusAAttaching = AttachmentStatus' "attaching"

pattern AttachmentStatusAAvailable :: AttachmentStatus
pattern AttachmentStatusAAvailable = AttachmentStatus' "available"

pattern AttachmentStatusABusy :: AttachmentStatus
pattern AttachmentStatusABusy = AttachmentStatus' "busy"

pattern AttachmentStatusADetached :: AttachmentStatus
pattern AttachmentStatusADetached = AttachmentStatus' "detached"

pattern AttachmentStatusADetaching :: AttachmentStatus
pattern AttachmentStatusADetaching = AttachmentStatus' "detaching"

{-# COMPLETE
  AttachmentStatusAAttached,
  AttachmentStatusAAttaching,
  AttachmentStatusAAvailable,
  AttachmentStatusABusy,
  AttachmentStatusADetached,
  AttachmentStatusADetaching,
  AttachmentStatus'
  #-}

instance Prelude.FromText AttachmentStatus where
  parser = AttachmentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttachmentStatus where
  toText (AttachmentStatus' x) = x

instance Prelude.Hashable AttachmentStatus

instance Prelude.NFData AttachmentStatus

instance Prelude.ToByteString AttachmentStatus

instance Prelude.ToQuery AttachmentStatus

instance Prelude.ToHeader AttachmentStatus

instance Prelude.FromXML AttachmentStatus where
  parseXML = Prelude.parseXMLText "AttachmentStatus"
