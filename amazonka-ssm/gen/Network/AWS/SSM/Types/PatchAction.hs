{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchAction
  ( PatchAction
      ( ..,
        AllowAsDependency,
        Block
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PatchAction = PatchAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AllowAsDependency :: PatchAction
pattern AllowAsDependency = PatchAction' "ALLOW_AS_DEPENDENCY"

pattern Block :: PatchAction
pattern Block = PatchAction' "BLOCK"

{-# COMPLETE
  AllowAsDependency,
  Block,
  PatchAction'
  #-}

instance FromText PatchAction where
  parser = (PatchAction' . mk) <$> takeText

instance ToText PatchAction where
  toText (PatchAction' ci) = original ci

instance Hashable PatchAction

instance NFData PatchAction

instance ToByteString PatchAction

instance ToQuery PatchAction

instance ToHeader PatchAction

instance ToJSON PatchAction where
  toJSON = toJSONText

instance FromJSON PatchAction where
  parseJSON = parseJSONText "PatchAction"
