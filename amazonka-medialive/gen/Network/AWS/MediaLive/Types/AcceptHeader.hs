{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AcceptHeader
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AcceptHeader
  ( AcceptHeader
      ( ..,
        ImageJpeg
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The HTTP Accept header. Indicates the requested type fothe thumbnail.
data AcceptHeader = AcceptHeader' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ImageJpeg :: AcceptHeader
pattern ImageJpeg = AcceptHeader' "image/jpeg"

{-# COMPLETE
  ImageJpeg,
  AcceptHeader'
  #-}

instance FromText AcceptHeader where
  parser = (AcceptHeader' . mk) <$> takeText

instance ToText AcceptHeader where
  toText (AcceptHeader' ci) = original ci

instance Hashable AcceptHeader

instance NFData AcceptHeader

instance ToByteString AcceptHeader

instance ToQuery AcceptHeader

instance ToHeader AcceptHeader

instance ToJSON AcceptHeader where
  toJSON = toJSONText
