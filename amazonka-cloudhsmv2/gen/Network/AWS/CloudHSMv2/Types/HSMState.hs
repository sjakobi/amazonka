{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.Types.HSMState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.HSMState
  ( HSMState
      ( ..,
        HSActive,
        HSCreateInProgress,
        HSDegraded,
        HSDeleteInProgress,
        HSDeleted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HSMState = HSMState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HSActive :: HSMState
pattern HSActive = HSMState' "ACTIVE"

pattern HSCreateInProgress :: HSMState
pattern HSCreateInProgress = HSMState' "CREATE_IN_PROGRESS"

pattern HSDegraded :: HSMState
pattern HSDegraded = HSMState' "DEGRADED"

pattern HSDeleteInProgress :: HSMState
pattern HSDeleteInProgress = HSMState' "DELETE_IN_PROGRESS"

pattern HSDeleted :: HSMState
pattern HSDeleted = HSMState' "DELETED"

{-# COMPLETE
  HSActive,
  HSCreateInProgress,
  HSDegraded,
  HSDeleteInProgress,
  HSDeleted,
  HSMState'
  #-}

instance FromText HSMState where
  parser = (HSMState' . mk) <$> takeText

instance ToText HSMState where
  toText (HSMState' ci) = original ci

instance Hashable HSMState

instance NFData HSMState

instance ToByteString HSMState

instance ToQuery HSMState

instance ToHeader HSMState

instance FromJSON HSMState where
  parseJSON = parseJSONText "HSMState"
