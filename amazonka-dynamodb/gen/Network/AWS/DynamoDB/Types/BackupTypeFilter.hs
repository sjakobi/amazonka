{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        BTFAWSBackup,
        BTFAll,
        BTFSystem,
        BTFUser
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackupTypeFilter = BackupTypeFilter' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BTFAWSBackup :: BackupTypeFilter
pattern BTFAWSBackup = BackupTypeFilter' "AWS_BACKUP"

pattern BTFAll :: BackupTypeFilter
pattern BTFAll = BackupTypeFilter' "ALL"

pattern BTFSystem :: BackupTypeFilter
pattern BTFSystem = BackupTypeFilter' "SYSTEM"

pattern BTFUser :: BackupTypeFilter
pattern BTFUser = BackupTypeFilter' "USER"

{-# COMPLETE
  BTFAWSBackup,
  BTFAll,
  BTFSystem,
  BTFUser,
  BackupTypeFilter'
  #-}

instance FromText BackupTypeFilter where
  parser = (BackupTypeFilter' . mk) <$> takeText

instance ToText BackupTypeFilter where
  toText (BackupTypeFilter' ci) = original ci

instance Hashable BackupTypeFilter

instance NFData BackupTypeFilter

instance ToByteString BackupTypeFilter

instance ToQuery BackupTypeFilter

instance ToHeader BackupTypeFilter

instance ToJSON BackupTypeFilter where
  toJSON = toJSONText
