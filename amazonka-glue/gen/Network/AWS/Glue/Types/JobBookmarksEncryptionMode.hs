{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobBookmarksEncryptionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JobBookmarksEncryptionMode
  ( JobBookmarksEncryptionMode
      ( ..,
        JBEMCseKMS,
        JBEMDisabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobBookmarksEncryptionMode
  = JobBookmarksEncryptionMode'
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

pattern JBEMCseKMS :: JobBookmarksEncryptionMode
pattern JBEMCseKMS = JobBookmarksEncryptionMode' "CSE-KMS"

pattern JBEMDisabled :: JobBookmarksEncryptionMode
pattern JBEMDisabled = JobBookmarksEncryptionMode' "DISABLED"

{-# COMPLETE
  JBEMCseKMS,
  JBEMDisabled,
  JobBookmarksEncryptionMode'
  #-}

instance FromText JobBookmarksEncryptionMode where
  parser = (JobBookmarksEncryptionMode' . mk) <$> takeText

instance ToText JobBookmarksEncryptionMode where
  toText (JobBookmarksEncryptionMode' ci) = original ci

instance Hashable JobBookmarksEncryptionMode

instance NFData JobBookmarksEncryptionMode

instance ToByteString JobBookmarksEncryptionMode

instance ToQuery JobBookmarksEncryptionMode

instance ToHeader JobBookmarksEncryptionMode

instance ToJSON JobBookmarksEncryptionMode where
  toJSON = toJSONText

instance FromJSON JobBookmarksEncryptionMode where
  parseJSON = parseJSONText "JobBookmarksEncryptionMode"
