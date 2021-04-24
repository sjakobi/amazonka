{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.TerminologyDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.TerminologyDataFormat
  ( TerminologyDataFormat
      ( ..,
        TDFCSV,
        TDFTmx
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TerminologyDataFormat
  = TerminologyDataFormat'
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

pattern TDFCSV :: TerminologyDataFormat
pattern TDFCSV = TerminologyDataFormat' "CSV"

pattern TDFTmx :: TerminologyDataFormat
pattern TDFTmx = TerminologyDataFormat' "TMX"

{-# COMPLETE
  TDFCSV,
  TDFTmx,
  TerminologyDataFormat'
  #-}

instance FromText TerminologyDataFormat where
  parser = (TerminologyDataFormat' . mk) <$> takeText

instance ToText TerminologyDataFormat where
  toText (TerminologyDataFormat' ci) = original ci

instance Hashable TerminologyDataFormat

instance NFData TerminologyDataFormat

instance ToByteString TerminologyDataFormat

instance ToQuery TerminologyDataFormat

instance ToHeader TerminologyDataFormat

instance ToJSON TerminologyDataFormat where
  toJSON = toJSONText
