{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.Mode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.Mode
  ( Mode
      ( ..,
        HighPerformance,
        Standard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data Mode = Mode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HighPerformance :: Mode
pattern HighPerformance = Mode' "high-performance"

pattern Standard :: Mode
pattern Standard = Mode' "standard"

{-# COMPLETE
  HighPerformance,
  Standard,
  Mode'
  #-}

instance FromText Mode where
  parser = (Mode' . mk) <$> takeText

instance ToText Mode where
  toText (Mode' ci) = original ci

instance Hashable Mode

instance NFData Mode

instance ToByteString Mode

instance ToQuery Mode

instance ToHeader Mode

instance FromXML Mode where
  parseXML = parseXMLText "Mode"
