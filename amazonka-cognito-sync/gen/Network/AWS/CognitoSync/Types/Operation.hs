{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types.Operation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.Operation
  ( Operation
      ( ..,
        Remove,
        Replace
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Operation = Operation' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Remove :: Operation
pattern Remove = Operation' "remove"

pattern Replace :: Operation
pattern Replace = Operation' "replace"

{-# COMPLETE
  Remove,
  Replace,
  Operation'
  #-}

instance FromText Operation where
  parser = (Operation' . mk) <$> takeText

instance ToText Operation where
  toText (Operation' ci) = original ci

instance Hashable Operation

instance NFData Operation

instance ToByteString Operation

instance ToQuery Operation

instance ToHeader Operation

instance ToJSON Operation where
  toJSON = toJSONText
