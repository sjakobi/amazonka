{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AAttached,
        AAttaching,
        AAvailable,
        ABusy,
        ADetached,
        ADetaching
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data AttachmentStatus = AttachmentStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AAttached :: AttachmentStatus
pattern AAttached = AttachmentStatus' "attached"

pattern AAttaching :: AttachmentStatus
pattern AAttaching = AttachmentStatus' "attaching"

pattern AAvailable :: AttachmentStatus
pattern AAvailable = AttachmentStatus' "available"

pattern ABusy :: AttachmentStatus
pattern ABusy = AttachmentStatus' "busy"

pattern ADetached :: AttachmentStatus
pattern ADetached = AttachmentStatus' "detached"

pattern ADetaching :: AttachmentStatus
pattern ADetaching = AttachmentStatus' "detaching"

{-# COMPLETE
  AAttached,
  AAttaching,
  AAvailable,
  ABusy,
  ADetached,
  ADetaching,
  AttachmentStatus'
  #-}

instance FromText AttachmentStatus where
  parser = (AttachmentStatus' . mk) <$> takeText

instance ToText AttachmentStatus where
  toText (AttachmentStatus' ci) = original ci

instance Hashable AttachmentStatus

instance NFData AttachmentStatus

instance ToByteString AttachmentStatus

instance ToQuery AttachmentStatus

instance ToHeader AttachmentStatus

instance FromXML AttachmentStatus where
  parseXML = parseXMLText "AttachmentStatus"
