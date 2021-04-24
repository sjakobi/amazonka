{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AbortAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AbortAction
  ( AbortAction
      ( ..,
        Cancel
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AbortAction = AbortAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cancel :: AbortAction
pattern Cancel = AbortAction' "CANCEL"

{-# COMPLETE
  Cancel,
  AbortAction'
  #-}

instance FromText AbortAction where
  parser = (AbortAction' . mk) <$> takeText

instance ToText AbortAction where
  toText (AbortAction' ci) = original ci

instance Hashable AbortAction

instance NFData AbortAction

instance ToByteString AbortAction

instance ToQuery AbortAction

instance ToHeader AbortAction

instance ToJSON AbortAction where
  toJSON = toJSONText

instance FromJSON AbortAction where
  parseJSON = parseJSONText "AbortAction"
