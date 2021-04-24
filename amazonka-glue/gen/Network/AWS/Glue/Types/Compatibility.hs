{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Compatibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Compatibility
  ( Compatibility
      ( ..,
        CBackward,
        CBackwardAll,
        CDisabled,
        CForward,
        CForwardAll,
        CFull,
        CFullAll,
        CNone
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

pattern CBackward :: Compatibility
pattern CBackward = Compatibility' "BACKWARD"

pattern CBackwardAll :: Compatibility
pattern CBackwardAll = Compatibility' "BACKWARD_ALL"

pattern CDisabled :: Compatibility
pattern CDisabled = Compatibility' "DISABLED"

pattern CForward :: Compatibility
pattern CForward = Compatibility' "FORWARD"

pattern CForwardAll :: Compatibility
pattern CForwardAll = Compatibility' "FORWARD_ALL"

pattern CFull :: Compatibility
pattern CFull = Compatibility' "FULL"

pattern CFullAll :: Compatibility
pattern CFullAll = Compatibility' "FULL_ALL"

pattern CNone :: Compatibility
pattern CNone = Compatibility' "NONE"

{-# COMPLETE
  CBackward,
  CBackwardAll,
  CDisabled,
  CForward,
  CForwardAll,
  CFull,
  CFullAll,
  CNone,
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
