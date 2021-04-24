{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.ParameterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.ParameterType
  ( ParameterType
      ( ..,
        Default,
        NodeTypeSpecific
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParameterType = ParameterType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Default :: ParameterType
pattern Default = ParameterType' "DEFAULT"

pattern NodeTypeSpecific :: ParameterType
pattern NodeTypeSpecific = ParameterType' "NODE_TYPE_SPECIFIC"

{-# COMPLETE
  Default,
  NodeTypeSpecific,
  ParameterType'
  #-}

instance FromText ParameterType where
  parser = (ParameterType' . mk) <$> takeText

instance ToText ParameterType where
  toText (ParameterType' ci) = original ci

instance Hashable ParameterType

instance NFData ParameterType

instance ToByteString ParameterType

instance ToQuery ParameterType

instance ToHeader ParameterType

instance FromJSON ParameterType where
  parseJSON = parseJSONText "ParameterType"
