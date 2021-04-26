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
-- Module      : Network.AWS.S3.Types.SseKmsEncryptedObjectsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.SseKmsEncryptedObjectsStatus
  ( SseKmsEncryptedObjectsStatus
      ( ..,
        SseKmsEncryptedObjectsStatusDisabled,
        SseKmsEncryptedObjectsStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype SseKmsEncryptedObjectsStatus = SseKmsEncryptedObjectsStatus'
  { fromSseKmsEncryptedObjectsStatus ::
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

pattern SseKmsEncryptedObjectsStatusDisabled :: SseKmsEncryptedObjectsStatus
pattern SseKmsEncryptedObjectsStatusDisabled = SseKmsEncryptedObjectsStatus' "Disabled"

pattern SseKmsEncryptedObjectsStatusEnabled :: SseKmsEncryptedObjectsStatus
pattern SseKmsEncryptedObjectsStatusEnabled = SseKmsEncryptedObjectsStatus' "Enabled"

{-# COMPLETE
  SseKmsEncryptedObjectsStatusDisabled,
  SseKmsEncryptedObjectsStatusEnabled,
  SseKmsEncryptedObjectsStatus'
  #-}

instance Prelude.FromText SseKmsEncryptedObjectsStatus where
  parser = SseKmsEncryptedObjectsStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SseKmsEncryptedObjectsStatus where
  toText (SseKmsEncryptedObjectsStatus' x) = x

instance Prelude.Hashable SseKmsEncryptedObjectsStatus

instance Prelude.NFData SseKmsEncryptedObjectsStatus

instance Prelude.ToByteString SseKmsEncryptedObjectsStatus

instance Prelude.ToQuery SseKmsEncryptedObjectsStatus

instance Prelude.ToHeader SseKmsEncryptedObjectsStatus

instance Prelude.FromXML SseKmsEncryptedObjectsStatus where
  parseXML = Prelude.parseXMLText "SseKmsEncryptedObjectsStatus"

instance Prelude.ToXML SseKmsEncryptedObjectsStatus where
  toXML = Prelude.toXMLText
