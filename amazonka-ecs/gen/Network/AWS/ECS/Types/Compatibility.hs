{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Compatibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Compatibility
  ( Compatibility
      ( ..,
        CEC2,
        CFargate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Compatibility = Compatibility' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CEC2 :: Compatibility
pattern CEC2 = Compatibility' "EC2"

pattern CFargate :: Compatibility
pattern CFargate = Compatibility' "FARGATE"

{-# COMPLETE
  CEC2,
  CFargate,
  Compatibility'
  #-}

instance FromText Compatibility where
  parser = (Compatibility' . mk) <$> takeText

instance ToText Compatibility where
  toText (Compatibility' ci) = original ci

instance Hashable Compatibility

instance NFData Compatibility

instance ToByteString Compatibility

instance ToQuery Compatibility

instance ToHeader Compatibility

instance ToJSON Compatibility where
  toJSON = toJSONText

instance FromJSON Compatibility where
  parseJSON = parseJSONText "Compatibility"
