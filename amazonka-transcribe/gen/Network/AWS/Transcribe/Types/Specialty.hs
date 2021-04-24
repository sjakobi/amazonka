{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.Specialty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.Specialty
  ( Specialty
      ( ..,
        Primarycare
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Specialty = Specialty' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Primarycare :: Specialty
pattern Primarycare = Specialty' "PRIMARYCARE"

{-# COMPLETE
  Primarycare,
  Specialty'
  #-}

instance FromText Specialty where
  parser = (Specialty' . mk) <$> takeText

instance ToText Specialty where
  toText (Specialty' ci) = original ci

instance Hashable Specialty

instance NFData Specialty

instance ToByteString Specialty

instance ToQuery Specialty

instance ToHeader Specialty

instance ToJSON Specialty where
  toJSON = toJSONText

instance FromJSON Specialty where
  parseJSON = parseJSONText "Specialty"
