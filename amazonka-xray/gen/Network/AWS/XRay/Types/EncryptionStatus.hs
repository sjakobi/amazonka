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
-- Module      : Network.AWS.XRay.Types.EncryptionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.EncryptionStatus
  ( EncryptionStatus
      ( ..,
        EncryptionStatusACTIVE,
        EncryptionStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EncryptionStatus = EncryptionStatus'
  { fromEncryptionStatus ::
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

pattern EncryptionStatusACTIVE :: EncryptionStatus
pattern EncryptionStatusACTIVE = EncryptionStatus' "ACTIVE"

pattern EncryptionStatusUPDATING :: EncryptionStatus
pattern EncryptionStatusUPDATING = EncryptionStatus' "UPDATING"

{-# COMPLETE
  EncryptionStatusACTIVE,
  EncryptionStatusUPDATING,
  EncryptionStatus'
  #-}

instance Prelude.FromText EncryptionStatus where
  parser = EncryptionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncryptionStatus where
  toText (EncryptionStatus' x) = x

instance Prelude.Hashable EncryptionStatus

instance Prelude.NFData EncryptionStatus

instance Prelude.ToByteString EncryptionStatus

instance Prelude.ToQuery EncryptionStatus

instance Prelude.ToHeader EncryptionStatus

instance Prelude.FromJSON EncryptionStatus where
  parseJSON = Prelude.parseJSONText "EncryptionStatus"
