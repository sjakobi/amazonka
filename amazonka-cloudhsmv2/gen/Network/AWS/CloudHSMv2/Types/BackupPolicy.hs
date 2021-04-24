{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Default
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackupPolicy = BackupPolicy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Default :: BackupPolicy
pattern Default = BackupPolicy' "DEFAULT"

{-# COMPLETE
  Default,
  BackupPolicy'
  #-}

instance FromText BackupPolicy where
  parser = (BackupPolicy' . mk) <$> takeText

instance ToText BackupPolicy where
  toText (BackupPolicy' ci) = original ci

instance Hashable BackupPolicy

instance NFData BackupPolicy

instance ToByteString BackupPolicy

instance ToQuery BackupPolicy

instance ToHeader BackupPolicy

instance FromJSON BackupPolicy where
  parseJSON = parseJSONText "BackupPolicy"
