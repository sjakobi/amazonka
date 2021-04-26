{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        AcceptHeaderImageJpeg
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The HTTP Accept header. Indicates the requested type fothe thumbnail.
newtype AcceptHeader = AcceptHeader'
  { fromAcceptHeader ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AcceptHeaderImageJpeg :: AcceptHeader
pattern AcceptHeaderImageJpeg = AcceptHeader' "image/jpeg"

{-# COMPLETE
  AcceptHeaderImageJpeg,
  AcceptHeader'
  #-}

instance Prelude.FromText AcceptHeader where
  parser = AcceptHeader' Prelude.<$> Prelude.takeText

instance Prelude.ToText AcceptHeader where
  toText (AcceptHeader' x) = x

instance Prelude.Hashable AcceptHeader

instance Prelude.NFData AcceptHeader

instance Prelude.ToByteString AcceptHeader

instance Prelude.ToQuery AcceptHeader

instance Prelude.ToHeader AcceptHeader

instance Prelude.ToJSON AcceptHeader where
  toJSON = Prelude.toJSONText
