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
-- Module      : Network.AWS.S3.Types.ObjectLockLegalHoldStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectLockLegalHoldStatus
  ( ObjectLockLegalHoldStatus
      ( ..,
        ObjectLockLegalHoldStatusOFF,
        ObjectLockLegalHoldStatusON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ObjectLockLegalHoldStatus = ObjectLockLegalHoldStatus'
  { fromObjectLockLegalHoldStatus ::
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

pattern ObjectLockLegalHoldStatusOFF :: ObjectLockLegalHoldStatus
pattern ObjectLockLegalHoldStatusOFF = ObjectLockLegalHoldStatus' "OFF"

pattern ObjectLockLegalHoldStatusON :: ObjectLockLegalHoldStatus
pattern ObjectLockLegalHoldStatusON = ObjectLockLegalHoldStatus' "ON"

{-# COMPLETE
  ObjectLockLegalHoldStatusOFF,
  ObjectLockLegalHoldStatusON,
  ObjectLockLegalHoldStatus'
  #-}

instance Prelude.FromText ObjectLockLegalHoldStatus where
  parser = ObjectLockLegalHoldStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectLockLegalHoldStatus where
  toText (ObjectLockLegalHoldStatus' x) = x

instance Prelude.Hashable ObjectLockLegalHoldStatus

instance Prelude.NFData ObjectLockLegalHoldStatus

instance Prelude.ToByteString ObjectLockLegalHoldStatus

instance Prelude.ToQuery ObjectLockLegalHoldStatus

instance Prelude.ToHeader ObjectLockLegalHoldStatus

instance Prelude.FromXML ObjectLockLegalHoldStatus where
  parseXML = Prelude.parseXMLText "ObjectLockLegalHoldStatus"

instance Prelude.ToXML ObjectLockLegalHoldStatus where
  toXML = Prelude.toXMLText
