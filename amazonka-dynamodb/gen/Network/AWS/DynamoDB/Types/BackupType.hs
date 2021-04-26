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
-- Module      : Network.AWS.DynamoDB.Types.BackupType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BackupType
  ( BackupType
      ( ..,
        BackupTypeAWSBACKUP,
        BackupTypeSYSTEM,
        BackupTypeUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackupType = BackupType'
  { fromBackupType ::
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

pattern BackupTypeAWSBACKUP :: BackupType
pattern BackupTypeAWSBACKUP = BackupType' "AWS_BACKUP"

pattern BackupTypeSYSTEM :: BackupType
pattern BackupTypeSYSTEM = BackupType' "SYSTEM"

pattern BackupTypeUSER :: BackupType
pattern BackupTypeUSER = BackupType' "USER"

{-# COMPLETE
  BackupTypeAWSBACKUP,
  BackupTypeSYSTEM,
  BackupTypeUSER,
  BackupType'
  #-}

instance Prelude.FromText BackupType where
  parser = BackupType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackupType where
  toText (BackupType' x) = x

instance Prelude.Hashable BackupType

instance Prelude.NFData BackupType

instance Prelude.ToByteString BackupType

instance Prelude.ToQuery BackupType

instance Prelude.ToHeader BackupType

instance Prelude.FromJSON BackupType where
  parseJSON = Prelude.parseJSONText "BackupType"
