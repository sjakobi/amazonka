{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.LoaContentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.LoaContentType
  ( LoaContentType
      ( ..,
        ApplicationPdf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoaContentType = LoaContentType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ApplicationPdf :: LoaContentType
pattern ApplicationPdf = LoaContentType' "application/pdf"

{-# COMPLETE
  ApplicationPdf,
  LoaContentType'
  #-}

instance FromText LoaContentType where
  parser = (LoaContentType' . mk) <$> takeText

instance ToText LoaContentType where
  toText (LoaContentType' ci) = original ci

instance Hashable LoaContentType

instance NFData LoaContentType

instance ToByteString LoaContentType

instance ToQuery LoaContentType

instance ToHeader LoaContentType

instance ToJSON LoaContentType where
  toJSON = toJSONText

instance FromJSON LoaContentType where
  parseJSON = parseJSONText "LoaContentType"
