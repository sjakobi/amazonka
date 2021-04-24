{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.ReportFileFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.ReportFileFormat
  ( ReportFileFormat
      ( ..,
        HTML,
        Pdf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportFileFormat = ReportFileFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTML :: ReportFileFormat
pattern HTML = ReportFileFormat' "HTML"

pattern Pdf :: ReportFileFormat
pattern Pdf = ReportFileFormat' "PDF"

{-# COMPLETE
  HTML,
  Pdf,
  ReportFileFormat'
  #-}

instance FromText ReportFileFormat where
  parser = (ReportFileFormat' . mk) <$> takeText

instance ToText ReportFileFormat where
  toText (ReportFileFormat' ci) = original ci

instance Hashable ReportFileFormat

instance NFData ReportFileFormat

instance ToByteString ReportFileFormat

instance ToQuery ReportFileFormat

instance ToHeader ReportFileFormat

instance ToJSON ReportFileFormat where
  toJSON = toJSONText
