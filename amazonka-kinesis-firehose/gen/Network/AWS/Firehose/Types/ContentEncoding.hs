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
-- Module      : Network.AWS.Firehose.Types.ContentEncoding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ContentEncoding
  ( ContentEncoding
      ( ..,
        ContentEncodingGZIP,
        ContentEncodingNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContentEncoding = ContentEncoding'
  { fromContentEncoding ::
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

pattern ContentEncodingGZIP :: ContentEncoding
pattern ContentEncodingGZIP = ContentEncoding' "GZIP"

pattern ContentEncodingNONE :: ContentEncoding
pattern ContentEncodingNONE = ContentEncoding' "NONE"

{-# COMPLETE
  ContentEncodingGZIP,
  ContentEncodingNONE,
  ContentEncoding'
  #-}

instance Prelude.FromText ContentEncoding where
  parser = ContentEncoding' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContentEncoding where
  toText (ContentEncoding' x) = x

instance Prelude.Hashable ContentEncoding

instance Prelude.NFData ContentEncoding

instance Prelude.ToByteString ContentEncoding

instance Prelude.ToQuery ContentEncoding

instance Prelude.ToHeader ContentEncoding

instance Prelude.ToJSON ContentEncoding where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContentEncoding where
  parseJSON = Prelude.parseJSONText "ContentEncoding"
