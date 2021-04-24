{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Sort
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Sort
  ( Sort
      ( ..,
        Asc,
        Desc
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Sort = Sort' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Asc :: Sort
pattern Asc = Sort' "ASC"

pattern Desc :: Sort
pattern Desc = Sort' "DESC"

{-# COMPLETE
  Asc,
  Desc,
  Sort'
  #-}

instance FromText Sort where
  parser = (Sort' . mk) <$> takeText

instance ToText Sort where
  toText (Sort' ci) = original ci

instance Hashable Sort

instance NFData Sort

instance ToByteString Sort

instance ToQuery Sort

instance ToHeader Sort

instance ToJSON Sort where
  toJSON = toJSONText
