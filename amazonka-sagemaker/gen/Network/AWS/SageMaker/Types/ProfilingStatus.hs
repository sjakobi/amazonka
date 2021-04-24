{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProfilingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProfilingStatus
  ( ProfilingStatus
      ( ..,
        PSDisabled,
        PSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProfilingStatus = ProfilingStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSDisabled :: ProfilingStatus
pattern PSDisabled = ProfilingStatus' "Disabled"

pattern PSEnabled :: ProfilingStatus
pattern PSEnabled = ProfilingStatus' "Enabled"

{-# COMPLETE
  PSDisabled,
  PSEnabled,
  ProfilingStatus'
  #-}

instance FromText ProfilingStatus where
  parser = (ProfilingStatus' . mk) <$> takeText

instance ToText ProfilingStatus where
  toText (ProfilingStatus' ci) = original ci

instance Hashable ProfilingStatus

instance NFData ProfilingStatus

instance ToByteString ProfilingStatus

instance ToQuery ProfilingStatus

instance ToHeader ProfilingStatus

instance FromJSON ProfilingStatus where
  parseJSON = parseJSONText "ProfilingStatus"
