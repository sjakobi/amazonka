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
-- Module      : Network.AWS.CloudHSMv2.Types.BackupRetentionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.BackupRetentionType
  ( BackupRetentionType
      ( ..,
        BackupRetentionTypeDAYS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackupRetentionType = BackupRetentionType'
  { fromBackupRetentionType ::
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

pattern BackupRetentionTypeDAYS :: BackupRetentionType
pattern BackupRetentionTypeDAYS = BackupRetentionType' "DAYS"

{-# COMPLETE
  BackupRetentionTypeDAYS,
  BackupRetentionType'
  #-}

instance Prelude.FromText BackupRetentionType where
  parser = BackupRetentionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackupRetentionType where
  toText (BackupRetentionType' x) = x

instance Prelude.Hashable BackupRetentionType

instance Prelude.NFData BackupRetentionType

instance Prelude.ToByteString BackupRetentionType

instance Prelude.ToQuery BackupRetentionType

instance Prelude.ToHeader BackupRetentionType

instance Prelude.ToJSON BackupRetentionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BackupRetentionType where
  parseJSON = Prelude.parseJSONText "BackupRetentionType"
