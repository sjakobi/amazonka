{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.Locale
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.Locale
  ( Locale
      ( ..,
        EnUs
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Locale = Locale' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EnUs :: Locale
pattern EnUs = Locale' "EN_US"

{-# COMPLETE
  EnUs,
  Locale'
  #-}

instance FromText Locale where
  parser = (Locale' . mk) <$> takeText

instance ToText Locale where
  toText (Locale' ci) = original ci

instance Hashable Locale

instance NFData Locale

instance ToByteString Locale

instance ToQuery Locale

instance ToHeader Locale

instance ToJSON Locale where
  toJSON = toJSONText
