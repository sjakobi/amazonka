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
-- Module      : Network.AWS.CloudSearchDomains.Types.ContentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearchDomains.Types.ContentType
  ( ContentType
      ( ..,
        ContentTypeApplicationJson,
        ContentTypeApplicationXml
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

pattern ContentTypeApplicationJson :: ContentType
pattern ContentTypeApplicationJson = ContentType' "application/json"

pattern ContentTypeApplicationXml :: ContentType
pattern ContentTypeApplicationXml = ContentType' "application/xml"

{-# COMPLETE
  ContentTypeApplicationJson,
  ContentTypeApplicationXml,
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

instance Prelude.ToJSON ContentType where
  toJSON = Prelude.toJSONText
