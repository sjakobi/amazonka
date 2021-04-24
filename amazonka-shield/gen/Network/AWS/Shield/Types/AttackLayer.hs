{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.AttackLayer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.AttackLayer
  ( AttackLayer
      ( ..,
        Application,
        Network
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AttackLayer = AttackLayer' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Application :: AttackLayer
pattern Application = AttackLayer' "APPLICATION"

pattern Network :: AttackLayer
pattern Network = AttackLayer' "NETWORK"

{-# COMPLETE
  Application,
  Network,
  AttackLayer'
  #-}

instance FromText AttackLayer where
  parser = (AttackLayer' . mk) <$> takeText

instance ToText AttackLayer where
  toText (AttackLayer' ci) = original ci

instance Hashable AttackLayer

instance NFData AttackLayer

instance ToByteString AttackLayer

instance ToQuery AttackLayer

instance ToHeader AttackLayer

instance FromJSON AttackLayer where
  parseJSON = parseJSONText "AttackLayer"
