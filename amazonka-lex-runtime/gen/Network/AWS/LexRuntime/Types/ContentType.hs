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
-- Module      : Network.AWS.LexRuntime.Types.ContentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.ContentType
  ( ContentType
      ( ..,
        ContentTypeApplicationVnd_Amazonaws_Card_Generic
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContentType = ContentType'
  { fromContentType ::
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

pattern ContentTypeApplicationVnd_Amazonaws_Card_Generic :: ContentType
pattern ContentTypeApplicationVnd_Amazonaws_Card_Generic = ContentType' "application/vnd.amazonaws.card.generic"

{-# COMPLETE
  ContentTypeApplicationVnd_Amazonaws_Card_Generic,
  ContentType'
  #-}

instance Prelude.FromText ContentType where
  parser = ContentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContentType where
  toText (ContentType' x) = x

instance Prelude.Hashable ContentType

instance Prelude.NFData ContentType

instance Prelude.ToByteString ContentType

instance Prelude.ToQuery ContentType

instance Prelude.ToHeader ContentType

instance Prelude.FromJSON ContentType where
  parseJSON = Prelude.parseJSONText "ContentType"
