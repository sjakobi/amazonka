{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HumanTaskUiStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HumanTaskUiStatus
  ( HumanTaskUiStatus
      ( ..,
        HTUSActive,
        HTUSDeleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HumanTaskUiStatus = HumanTaskUiStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTUSActive :: HumanTaskUiStatus
pattern HTUSActive = HumanTaskUiStatus' "Active"

pattern HTUSDeleting :: HumanTaskUiStatus
pattern HTUSDeleting = HumanTaskUiStatus' "Deleting"

{-# COMPLETE
  HTUSActive,
  HTUSDeleting,
  HumanTaskUiStatus'
  #-}

instance FromText HumanTaskUiStatus where
  parser = (HumanTaskUiStatus' . mk) <$> takeText

instance ToText HumanTaskUiStatus where
  toText (HumanTaskUiStatus' ci) = original ci

instance Hashable HumanTaskUiStatus

instance NFData HumanTaskUiStatus

instance ToByteString HumanTaskUiStatus

instance ToQuery HumanTaskUiStatus

instance ToHeader HumanTaskUiStatus

instance FromJSON HumanTaskUiStatus where
  parseJSON = parseJSONText "HumanTaskUiStatus"
