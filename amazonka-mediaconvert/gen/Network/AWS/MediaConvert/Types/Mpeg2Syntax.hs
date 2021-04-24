{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2Syntax
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2Syntax
  ( Mpeg2Syntax
      ( ..,
        MSD10,
        MSDefault
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify whether this output's video uses the D10 syntax. Keep the default value to  not use the syntax. Related settings: When you choose D10 (D_10) for your MXF  profile (profile), you must also set this value to to D10 (D_10).
data Mpeg2Syntax = Mpeg2Syntax' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MSD10 :: Mpeg2Syntax
pattern MSD10 = Mpeg2Syntax' "D_10"

pattern MSDefault :: Mpeg2Syntax
pattern MSDefault = Mpeg2Syntax' "DEFAULT"

{-# COMPLETE
  MSD10,
  MSDefault,
  Mpeg2Syntax'
  #-}

instance FromText Mpeg2Syntax where
  parser = (Mpeg2Syntax' . mk) <$> takeText

instance ToText Mpeg2Syntax where
  toText (Mpeg2Syntax' ci) = original ci

instance Hashable Mpeg2Syntax

instance NFData Mpeg2Syntax

instance ToByteString Mpeg2Syntax

instance ToQuery Mpeg2Syntax

instance ToHeader Mpeg2Syntax

instance ToJSON Mpeg2Syntax where
  toJSON = toJSONText

instance FromJSON Mpeg2Syntax where
  parseJSON = parseJSONText "Mpeg2Syntax"
