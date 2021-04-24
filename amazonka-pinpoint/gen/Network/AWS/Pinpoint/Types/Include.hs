{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Include
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Include
  ( Include
      ( ..,
        IAll,
        IAny,
        INone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Include = Include' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IAll :: Include
pattern IAll = Include' "ALL"

pattern IAny :: Include
pattern IAny = Include' "ANY"

pattern INone :: Include
pattern INone = Include' "NONE"

{-# COMPLETE
  IAll,
  IAny,
  INone,
  Include'
  #-}

instance FromText Include where
  parser = (Include' . mk) <$> takeText

instance ToText Include where
  toText (Include' ci) = original ci

instance Hashable Include

instance NFData Include

instance ToByteString Include

instance ToQuery Include

instance ToHeader Include

instance ToJSON Include where
  toJSON = toJSONText

instance FromJSON Include where
  parseJSON = parseJSONText "Include"
