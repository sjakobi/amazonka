{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.DsnAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.DsnAction
  ( DsnAction
      ( ..,
        DADelayed,
        DADelivered,
        DAExpanded,
        DAFailed,
        DARelayed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DsnAction = DsnAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DADelayed :: DsnAction
pattern DADelayed = DsnAction' "delayed"

pattern DADelivered :: DsnAction
pattern DADelivered = DsnAction' "delivered"

pattern DAExpanded :: DsnAction
pattern DAExpanded = DsnAction' "expanded"

pattern DAFailed :: DsnAction
pattern DAFailed = DsnAction' "failed"

pattern DARelayed :: DsnAction
pattern DARelayed = DsnAction' "relayed"

{-# COMPLETE
  DADelayed,
  DADelivered,
  DAExpanded,
  DAFailed,
  DARelayed,
  DsnAction'
  #-}

instance FromText DsnAction where
  parser = (DsnAction' . mk) <$> takeText

instance ToText DsnAction where
  toText (DsnAction' ci) = original ci

instance Hashable DsnAction

instance NFData DsnAction

instance ToByteString DsnAction

instance ToQuery DsnAction

instance ToHeader DsnAction
