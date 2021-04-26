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
-- Module      : Network.AWS.CloudHSMv2.Types.BackupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.BackupPolicy
  ( BackupPolicy
      ( ..,
        BackupPolicyDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackupPolicy = BackupPolicy'
  { fromBackupPolicy ::
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

pattern BackupPolicyDEFAULT :: BackupPolicy
pattern BackupPolicyDEFAULT = BackupPolicy' "DEFAULT"

{-# COMPLETE
  BackupPolicyDEFAULT,
  BackupPolicy'
  #-}

instance Prelude.FromText BackupPolicy where
  parser = BackupPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackupPolicy where
  toText (BackupPolicy' x) = x

instance Prelude.Hashable BackupPolicy

instance Prelude.NFData BackupPolicy

instance Prelude.ToByteString BackupPolicy

instance Prelude.ToQuery BackupPolicy

instance Prelude.ToHeader BackupPolicy

instance Prelude.FromJSON BackupPolicy where
  parseJSON = Prelude.parseJSONText "BackupPolicy"
