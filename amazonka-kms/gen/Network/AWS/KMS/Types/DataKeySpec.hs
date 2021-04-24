{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.DataKeySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.DataKeySpec
  ( DataKeySpec
      ( ..,
        AES128,
        AES256
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataKeySpec = DataKeySpec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AES128 :: DataKeySpec
pattern AES128 = DataKeySpec' "AES_128"

pattern AES256 :: DataKeySpec
pattern AES256 = DataKeySpec' "AES_256"

{-# COMPLETE
  AES128,
  AES256,
  DataKeySpec'
  #-}

instance FromText DataKeySpec where
  parser = (DataKeySpec' . mk) <$> takeText

instance ToText DataKeySpec where
  toText (DataKeySpec' ci) = original ci

instance Hashable DataKeySpec

instance NFData DataKeySpec

instance ToByteString DataKeySpec

instance ToQuery DataKeySpec

instance ToHeader DataKeySpec

instance ToJSON DataKeySpec where
  toJSON = toJSONText
