{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReleaseStatusValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReleaseStatusValues
  ( ReleaseStatusValues
      ( ..,
        Beta
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReleaseStatusValues
  = ReleaseStatusValues'
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

pattern Beta :: ReleaseStatusValues
pattern Beta = ReleaseStatusValues' "beta"

{-# COMPLETE
  Beta,
  ReleaseStatusValues'
  #-}

instance FromText ReleaseStatusValues where
  parser = (ReleaseStatusValues' . mk) <$> takeText

instance ToText ReleaseStatusValues where
  toText (ReleaseStatusValues' ci) = original ci

instance Hashable ReleaseStatusValues

instance NFData ReleaseStatusValues

instance ToByteString ReleaseStatusValues

instance ToQuery ReleaseStatusValues

instance ToHeader ReleaseStatusValues

instance FromJSON ReleaseStatusValues where
  parseJSON = parseJSONText "ReleaseStatusValues"
