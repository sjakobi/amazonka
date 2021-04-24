{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Commitment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Commitment
  ( Commitment
      ( ..,
        OneYear
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The length of the term of your reserved queue pricing plan commitment.
data Commitment = Commitment' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OneYear :: Commitment
pattern OneYear = Commitment' "ONE_YEAR"

{-# COMPLETE
  OneYear,
  Commitment'
  #-}

instance FromText Commitment where
  parser = (Commitment' . mk) <$> takeText

instance ToText Commitment where
  toText (Commitment' ci) = original ci

instance Hashable Commitment

instance NFData Commitment

instance ToByteString Commitment

instance ToQuery Commitment

instance ToHeader Commitment

instance ToJSON Commitment where
  toJSON = toJSONText

instance FromJSON Commitment where
  parseJSON = parseJSONText "Commitment"
