{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.InputFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.InputFormat
  ( InputFormat
      ( ..,
        OneDocPerFile,
        OneDocPerLine
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InputFormat = InputFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OneDocPerFile :: InputFormat
pattern OneDocPerFile = InputFormat' "ONE_DOC_PER_FILE"

pattern OneDocPerLine :: InputFormat
pattern OneDocPerLine = InputFormat' "ONE_DOC_PER_LINE"

{-# COMPLETE
  OneDocPerFile,
  OneDocPerLine,
  InputFormat'
  #-}

instance FromText InputFormat where
  parser = (InputFormat' . mk) <$> takeText

instance ToText InputFormat where
  toText (InputFormat' ci) = original ci

instance Hashable InputFormat

instance NFData InputFormat

instance ToByteString InputFormat

instance ToQuery InputFormat

instance ToHeader InputFormat

instance ToJSON InputFormat where
  toJSON = toJSONText

instance FromJSON InputFormat where
  parseJSON = parseJSONText "InputFormat"
