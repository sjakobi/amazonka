{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.FunctionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.FunctionVersion
  ( FunctionVersion
      ( ..,
        All
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FunctionVersion = FunctionVersion' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern All :: FunctionVersion
pattern All = FunctionVersion' "ALL"

{-# COMPLETE
  All,
  FunctionVersion'
  #-}

instance FromText FunctionVersion where
  parser = (FunctionVersion' . mk) <$> takeText

instance ToText FunctionVersion where
  toText (FunctionVersion' ci) = original ci

instance Hashable FunctionVersion

instance NFData FunctionVersion

instance ToByteString FunctionVersion

instance ToQuery FunctionVersion

instance ToHeader FunctionVersion

instance ToJSON FunctionVersion where
  toJSON = toJSONText
