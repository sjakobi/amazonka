{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.Op
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.Op
  ( Op
      ( ..,
        Add,
        Copy,
        Move,
        Remove,
        Replace,
        Test
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Op = Op' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Add :: Op
pattern Add = Op' "add"

pattern Copy :: Op
pattern Copy = Op' "copy"

pattern Move :: Op
pattern Move = Op' "move"

pattern Remove :: Op
pattern Remove = Op' "remove"

pattern Replace :: Op
pattern Replace = Op' "replace"

pattern Test :: Op
pattern Test = Op' "test"

{-# COMPLETE
  Add,
  Copy,
  Move,
  Remove,
  Replace,
  Test,
  Op'
  #-}

instance FromText Op where
  parser = (Op' . mk) <$> takeText

instance ToText Op where
  toText (Op' ci) = original ci

instance Hashable Op

instance NFData Op

instance ToByteString Op

instance ToQuery Op

instance ToHeader Op

instance ToJSON Op where
  toJSON = toJSONText
