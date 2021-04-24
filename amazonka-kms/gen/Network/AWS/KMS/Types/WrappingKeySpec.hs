{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.WrappingKeySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.WrappingKeySpec
  ( WrappingKeySpec
      ( ..,
        WKSRsa2048
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WrappingKeySpec = WrappingKeySpec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern WKSRsa2048 :: WrappingKeySpec
pattern WKSRsa2048 = WrappingKeySpec' "RSA_2048"

{-# COMPLETE
  WKSRsa2048,
  WrappingKeySpec'
  #-}

instance FromText WrappingKeySpec where
  parser = (WrappingKeySpec' . mk) <$> takeText

instance ToText WrappingKeySpec where
  toText (WrappingKeySpec' ci) = original ci

instance Hashable WrappingKeySpec

instance NFData WrappingKeySpec

instance ToByteString WrappingKeySpec

instance ToQuery WrappingKeySpec

instance ToHeader WrappingKeySpec

instance ToJSON WrappingKeySpec where
  toJSON = toJSONText
