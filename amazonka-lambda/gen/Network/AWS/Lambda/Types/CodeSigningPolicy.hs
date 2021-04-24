{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.CodeSigningPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.CodeSigningPolicy
  ( CodeSigningPolicy
      ( ..,
        Enforce,
        Warn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CodeSigningPolicy = CodeSigningPolicy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Enforce :: CodeSigningPolicy
pattern Enforce = CodeSigningPolicy' "Enforce"

pattern Warn :: CodeSigningPolicy
pattern Warn = CodeSigningPolicy' "Warn"

{-# COMPLETE
  Enforce,
  Warn,
  CodeSigningPolicy'
  #-}

instance FromText CodeSigningPolicy where
  parser = (CodeSigningPolicy' . mk) <$> takeText

instance ToText CodeSigningPolicy where
  toText (CodeSigningPolicy' ci) = original ci

instance Hashable CodeSigningPolicy

instance NFData CodeSigningPolicy

instance ToByteString CodeSigningPolicy

instance ToQuery CodeSigningPolicy

instance ToHeader CodeSigningPolicy

instance ToJSON CodeSigningPolicy where
  toJSON = toJSONText

instance FromJSON CodeSigningPolicy where
  parseJSON = parseJSONText "CodeSigningPolicy"
