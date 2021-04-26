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
-- Module      : Network.AWS.CloudFront.Types.HttpVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.HttpVersion
  ( HttpVersion
      ( ..,
        HttpVersionHTTP1_1,
        HttpVersionHTTP2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HttpVersion = HttpVersion'
  { fromHttpVersion ::
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

pattern HttpVersionHTTP1_1 :: HttpVersion
pattern HttpVersionHTTP1_1 = HttpVersion' "http1.1"

pattern HttpVersionHTTP2 :: HttpVersion
pattern HttpVersionHTTP2 = HttpVersion' "http2"

{-# COMPLETE
  HttpVersionHTTP1_1,
  HttpVersionHTTP2,
  HttpVersion'
  #-}

instance Prelude.FromText HttpVersion where
  parser = HttpVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText HttpVersion where
  toText (HttpVersion' x) = x

instance Prelude.Hashable HttpVersion

instance Prelude.NFData HttpVersion

instance Prelude.ToByteString HttpVersion

instance Prelude.ToQuery HttpVersion

instance Prelude.ToHeader HttpVersion

instance Prelude.FromXML HttpVersion where
  parseXML = Prelude.parseXMLText "HttpVersion"

instance Prelude.ToXML HttpVersion where
  toXML = Prelude.toXMLText
