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
-- Module      : Network.AWS.IoT.Types.AuditFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditFrequency
  ( AuditFrequency
      ( ..,
        AuditFrequencyBIWEEKLY,
        AuditFrequencyDAILY,
        AuditFrequencyMONTHLY,
        AuditFrequencyWEEKLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditFrequency = AuditFrequency'
  { fromAuditFrequency ::
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

pattern AuditFrequencyBIWEEKLY :: AuditFrequency
pattern AuditFrequencyBIWEEKLY = AuditFrequency' "BIWEEKLY"

pattern AuditFrequencyDAILY :: AuditFrequency
pattern AuditFrequencyDAILY = AuditFrequency' "DAILY"

pattern AuditFrequencyMONTHLY :: AuditFrequency
pattern AuditFrequencyMONTHLY = AuditFrequency' "MONTHLY"

pattern AuditFrequencyWEEKLY :: AuditFrequency
pattern AuditFrequencyWEEKLY = AuditFrequency' "WEEKLY"

{-# COMPLETE
  AuditFrequencyBIWEEKLY,
  AuditFrequencyDAILY,
  AuditFrequencyMONTHLY,
  AuditFrequencyWEEKLY,
  AuditFrequency'
  #-}

instance Prelude.FromText AuditFrequency where
  parser = AuditFrequency' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditFrequency where
  toText (AuditFrequency' x) = x

instance Prelude.Hashable AuditFrequency

instance Prelude.NFData AuditFrequency

instance Prelude.ToByteString AuditFrequency

instance Prelude.ToQuery AuditFrequency

instance Prelude.ToHeader AuditFrequency

instance Prelude.ToJSON AuditFrequency where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuditFrequency where
  parseJSON = Prelude.parseJSONText "AuditFrequency"
