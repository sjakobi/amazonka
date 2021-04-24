{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.AccountScope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.AccountScope
  ( AccountScope
      ( ..,
        Linked,
        Payer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccountScope = AccountScope' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Linked :: AccountScope
pattern Linked = AccountScope' "LINKED"

pattern Payer :: AccountScope
pattern Payer = AccountScope' "PAYER"

{-# COMPLETE
  Linked,
  Payer,
  AccountScope'
  #-}

instance FromText AccountScope where
  parser = (AccountScope' . mk) <$> takeText

instance ToText AccountScope where
  toText (AccountScope' ci) = original ci

instance Hashable AccountScope

instance NFData AccountScope

instance ToByteString AccountScope

instance ToQuery AccountScope

instance ToHeader AccountScope

instance ToJSON AccountScope where
  toJSON = toJSONText

instance FromJSON AccountScope where
  parseJSON = parseJSONText "AccountScope"
