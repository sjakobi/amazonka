{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AssemblyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AssemblyType
  ( AssemblyType
      ( ..,
        Line,
        None
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssemblyType = AssemblyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Line :: AssemblyType
pattern Line = AssemblyType' "Line"

pattern None :: AssemblyType
pattern None = AssemblyType' "None"

{-# COMPLETE
  Line,
  None,
  AssemblyType'
  #-}

instance FromText AssemblyType where
  parser = (AssemblyType' . mk) <$> takeText

instance ToText AssemblyType where
  toText (AssemblyType' ci) = original ci

instance Hashable AssemblyType

instance NFData AssemblyType

instance ToByteString AssemblyType

instance ToQuery AssemblyType

instance ToHeader AssemblyType

instance ToJSON AssemblyType where
  toJSON = toJSONText

instance FromJSON AssemblyType where
  parseJSON = parseJSONText "AssemblyType"
