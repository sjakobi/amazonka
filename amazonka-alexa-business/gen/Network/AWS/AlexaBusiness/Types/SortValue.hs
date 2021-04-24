{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.SortValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SortValue
  ( SortValue
      ( ..,
        Asc,
        Desc
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortValue = SortValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Asc :: SortValue
pattern Asc = SortValue' "ASC"

pattern Desc :: SortValue
pattern Desc = SortValue' "DESC"

{-# COMPLETE
  Asc,
  Desc,
  SortValue'
  #-}

instance FromText SortValue where
  parser = (SortValue' . mk) <$> takeText

instance ToText SortValue where
  toText (SortValue' ci) = original ci

instance Hashable SortValue

instance NFData SortValue

instance ToByteString SortValue

instance ToQuery SortValue

instance ToHeader SortValue

instance ToJSON SortValue where
  toJSON = toJSONText
