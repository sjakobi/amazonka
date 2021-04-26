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
-- Module      : Network.AWS.DynamoDB.Types.BackupTypeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BackupTypeFilter
  ( BackupTypeFilter
      ( ..,
        BackupTypeFilterALL,
        BackupTypeFilterAWSBACKUP,
        BackupTypeFilterSYSTEM,
        BackupTypeFilterUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackupTypeFilter = BackupTypeFilter'
  { fromBackupTypeFilter ::
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

pattern BackupTypeFilterALL :: BackupTypeFilter
pattern BackupTypeFilterALL = BackupTypeFilter' "ALL"

pattern BackupTypeFilterAWSBACKUP :: BackupTypeFilter
pattern BackupTypeFilterAWSBACKUP = BackupTypeFilter' "AWS_BACKUP"

pattern BackupTypeFilterSYSTEM :: BackupTypeFilter
pattern BackupTypeFilterSYSTEM = BackupTypeFilter' "SYSTEM"

pattern BackupTypeFilterUSER :: BackupTypeFilter
pattern BackupTypeFilterUSER = BackupTypeFilter' "USER"

{-# COMPLETE
  BackupTypeFilterALL,
  BackupTypeFilterAWSBACKUP,
  BackupTypeFilterSYSTEM,
  BackupTypeFilterUSER,
  BackupTypeFilter'
  #-}

instance Prelude.FromText BackupTypeFilter where
  parser = BackupTypeFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText BackupTypeFilter where
  toText (BackupTypeFilter' x) = x

instance Prelude.Hashable BackupTypeFilter

instance Prelude.NFData BackupTypeFilter

instance Prelude.ToByteString BackupTypeFilter

instance Prelude.ToQuery BackupTypeFilter

instance Prelude.ToHeader BackupTypeFilter

instance Prelude.ToJSON BackupTypeFilter where
  toJSON = Prelude.toJSONText
