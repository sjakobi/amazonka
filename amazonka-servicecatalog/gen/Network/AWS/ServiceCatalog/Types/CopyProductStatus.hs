{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.CopyProductStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.CopyProductStatus
  ( CopyProductStatus
      ( ..,
        CPSFailed,
        CPSInProgress,
        CPSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CopyProductStatus = CopyProductStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CPSFailed :: CopyProductStatus
pattern CPSFailed = CopyProductStatus' "FAILED"

pattern CPSInProgress :: CopyProductStatus
pattern CPSInProgress = CopyProductStatus' "IN_PROGRESS"

pattern CPSSucceeded :: CopyProductStatus
pattern CPSSucceeded = CopyProductStatus' "SUCCEEDED"

{-# COMPLETE
  CPSFailed,
  CPSInProgress,
  CPSSucceeded,
  CopyProductStatus'
  #-}

instance FromText CopyProductStatus where
  parser = (CopyProductStatus' . mk) <$> takeText

instance ToText CopyProductStatus where
  toText (CopyProductStatus' ci) = original ci

instance Hashable CopyProductStatus

instance NFData CopyProductStatus

instance ToByteString CopyProductStatus

instance ToQuery CopyProductStatus

instance ToHeader CopyProductStatus

instance FromJSON CopyProductStatus where
  parseJSON = parseJSONText "CopyProductStatus"
