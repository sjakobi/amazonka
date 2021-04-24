{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.FecOutputIncludeFec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FecOutputIncludeFec
  ( FecOutputIncludeFec
      ( ..,
        Column,
        ColumnAndRow
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Fec Output Include Fec
data FecOutputIncludeFec
  = FecOutputIncludeFec'
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

pattern Column :: FecOutputIncludeFec
pattern Column = FecOutputIncludeFec' "COLUMN"

pattern ColumnAndRow :: FecOutputIncludeFec
pattern ColumnAndRow = FecOutputIncludeFec' "COLUMN_AND_ROW"

{-# COMPLETE
  Column,
  ColumnAndRow,
  FecOutputIncludeFec'
  #-}

instance FromText FecOutputIncludeFec where
  parser = (FecOutputIncludeFec' . mk) <$> takeText

instance ToText FecOutputIncludeFec where
  toText (FecOutputIncludeFec' ci) = original ci

instance Hashable FecOutputIncludeFec

instance NFData FecOutputIncludeFec

instance ToByteString FecOutputIncludeFec

instance ToQuery FecOutputIncludeFec

instance ToHeader FecOutputIncludeFec

instance ToJSON FecOutputIncludeFec where
  toJSON = toJSONText

instance FromJSON FecOutputIncludeFec where
  parseJSON = parseJSONText "FecOutputIncludeFec"
