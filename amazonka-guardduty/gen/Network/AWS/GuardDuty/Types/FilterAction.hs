{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.FilterAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.FilterAction
  ( FilterAction
      ( ..,
        Archive,
        Noop
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FilterAction = FilterAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Archive :: FilterAction
pattern Archive = FilterAction' "ARCHIVE"

pattern Noop :: FilterAction
pattern Noop = FilterAction' "NOOP"

{-# COMPLETE
  Archive,
  Noop,
  FilterAction'
  #-}

instance FromText FilterAction where
  parser = (FilterAction' . mk) <$> takeText

instance ToText FilterAction where
  toText (FilterAction' ci) = original ci

instance Hashable FilterAction

instance NFData FilterAction

instance ToByteString FilterAction

instance ToQuery FilterAction

instance ToHeader FilterAction

instance ToJSON FilterAction where
  toJSON = toJSONText

instance FromJSON FilterAction where
  parseJSON = parseJSONText "FilterAction"
