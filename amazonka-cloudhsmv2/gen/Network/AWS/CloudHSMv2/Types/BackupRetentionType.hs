{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Days
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackupRetentionType
  = BackupRetentionType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Days :: BackupRetentionType
pattern Days = BackupRetentionType' "DAYS"

{-# COMPLETE
  Days,
  BackupRetentionType'
  #-}

instance FromText BackupRetentionType where
  parser = (BackupRetentionType' . mk) <$> takeText

instance ToText BackupRetentionType where
  toText (BackupRetentionType' ci) = original ci

instance Hashable BackupRetentionType

instance NFData BackupRetentionType

instance ToByteString BackupRetentionType

instance ToQuery BackupRetentionType

instance ToHeader BackupRetentionType

instance ToJSON BackupRetentionType where
  toJSON = toJSONText

instance FromJSON BackupRetentionType where
  parseJSON = parseJSONText "BackupRetentionType"
