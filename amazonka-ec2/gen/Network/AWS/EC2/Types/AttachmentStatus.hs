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
        AttachmentStatusAttached,
        AttachmentStatusAttaching,
        AttachmentStatusAvailable,
        AttachmentStatusBusy,
        AttachmentStatusDetached,
        AttachmentStatusDetaching
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

pattern AttachmentStatusAttached :: AttachmentStatus
pattern AttachmentStatusAttached = AttachmentStatus' "attached"

pattern AttachmentStatusAttaching :: AttachmentStatus
pattern AttachmentStatusAttaching = AttachmentStatus' "attaching"

pattern AttachmentStatusAvailable :: AttachmentStatus
pattern AttachmentStatusAvailable = AttachmentStatus' "available"

pattern AttachmentStatusBusy :: AttachmentStatus
pattern AttachmentStatusBusy = AttachmentStatus' "busy"

pattern AttachmentStatusDetached :: AttachmentStatus
pattern AttachmentStatusDetached = AttachmentStatus' "detached"

pattern AttachmentStatusDetaching :: AttachmentStatus
pattern AttachmentStatusDetaching = AttachmentStatus' "detaching"

{-# COMPLETE
  AttachmentStatusAttached,
  AttachmentStatusAttaching,
  AttachmentStatusAvailable,
  AttachmentStatusBusy,
  AttachmentStatusDetached,
  AttachmentStatusDetaching,
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
