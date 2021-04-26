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
-- Module      : Network.AWS.S3.Types.EncodingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.EncodingType
  ( EncodingType
      ( ..,
        EncodingTypeUrl
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

-- | Requests Amazon S3 to encode the object keys in the response and
-- specifies the encoding method to use. An object key may contain any
-- Unicode character; however, XML 1.0 parser cannot parse some characters,
-- such as characters with an ASCII value from 0 to 10. For characters that
-- are not supported in XML 1.0, you can add this parameter to request that
-- Amazon S3 encode the keys in the response.
newtype EncodingType = EncodingType'
  { fromEncodingType ::
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

pattern EncodingTypeUrl :: EncodingType
pattern EncodingTypeUrl = EncodingType' "url"

{-# COMPLETE
  EncodingTypeUrl,
  EncodingType'
  #-}

instance Prelude.FromText EncodingType where
  parser = EncodingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EncodingType where
  toText (EncodingType' x) = x

instance Prelude.Hashable EncodingType

instance Prelude.NFData EncodingType

instance Prelude.ToByteString EncodingType

instance Prelude.ToQuery EncodingType

instance Prelude.ToHeader EncodingType

instance Prelude.FromXML EncodingType where
  parseXML = Prelude.parseXMLText "EncodingType"

instance Prelude.ToXML EncodingType where
  toXML = Prelude.toXMLText
