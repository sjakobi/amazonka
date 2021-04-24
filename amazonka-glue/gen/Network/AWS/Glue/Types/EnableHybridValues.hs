{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.EnableHybridValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.EnableHybridValues
  ( EnableHybridValues
      ( ..,
        False',
        True'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnableHybridValues
  = EnableHybridValues'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern False' :: EnableHybridValues
pattern False' = EnableHybridValues' "FALSE"

pattern True' :: EnableHybridValues
pattern True' = EnableHybridValues' "TRUE"

{-# COMPLETE
  False',
  True',
  EnableHybridValues'
  #-}

instance FromText EnableHybridValues where
  parser = (EnableHybridValues' . mk) <$> takeText

instance ToText EnableHybridValues where
  toText (EnableHybridValues' ci) = original ci

instance Hashable EnableHybridValues

instance NFData EnableHybridValues

instance ToByteString EnableHybridValues

instance ToQuery EnableHybridValues

instance ToHeader EnableHybridValues

instance ToJSON EnableHybridValues where
  toJSON = toJSONText
