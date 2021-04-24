{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Language
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Language
  ( Language
      ( ..,
        Python,
        Scala
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Language = Language' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Python :: Language
pattern Python = Language' "PYTHON"

pattern Scala :: Language
pattern Scala = Language' "SCALA"

{-# COMPLETE
  Python,
  Scala,
  Language'
  #-}

instance FromText Language where
  parser = (Language' . mk) <$> takeText

instance ToText Language where
  toText (Language' ci) = original ci

instance Hashable Language

instance NFData Language

instance ToByteString Language

instance ToQuery Language

instance ToHeader Language

instance ToJSON Language where
  toJSON = toJSONText
